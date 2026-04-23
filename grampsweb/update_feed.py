import sqlite3
import os
import json
from datetime import datetime

# --- CONFIGURATION ---
DB_PATH = "/home/rhart1716/grampsweb/data/db/946e99d5-cc99-4832-ae1c-0752d35b83c9/sqlite.db"
OUTPUT_FILE = "/home/rhart1716/grampsweb/recent_activity.html"

def update_feed():
    if not os.path.exists(DB_PATH):
        return

    try:
        db_uri = f"file:{DB_PATH}?mode=ro"
        conn = sqlite3.connect(db_uri, uri=True)
        cursor = conn.cursor()

        # Added json_data to the query
        query = """
        SELECT given_name, surname, change, gramps_id, json_data
        FROM person
        ORDER BY change DESC
        LIMIT 5;
        """
        
        cursor.execute(query)
        rows = cursor.fetchall()

        html_content = "<ul class='activity-list' style='list-style: none; padding: 0; font-family: sans-serif;'>\n"
        
        for row in rows:
            given = row[0] if row[0] else ""
            surname = row[1] if row[1] else ""
            timestamp = row[2]
            gid = row[3]
            json_str = row[4]
            
            # 1. Format the date with Year (MM/DD/YYYY)
            try:
                date_str = datetime.fromtimestamp(timestamp).strftime("%m/%d/%Y")
            except:
                date_str = "--/--/----"

            # 2. Try to pull a "Description" from the JSON data
            # We'll look for a 'tag' or 'type' inside the Gramps JSON blob
            description = "Profile Updated" # Default
            try:
                if json_str:
                    data = json.loads(json_str)
                    # Check if there's a specific 'type' or 'gramps_id' detail
                    if 'tag_list' in data and data['tag_list']:
                        description = f"Tagged: {data['tag_list'][0]}"
                    elif 'confidence' in data:
                        description = "Record Verified"
            except:
                pass

            full_name = f"{given} {surname}".strip() or f"Unknown ({gid})"

            html_content += (
                f"  <li style='margin-bottom: 12px; border-bottom: 1px solid #eee; padding-bottom: 8px;'>"
                f"    <span style='color: #888; font-size: 0.8em; display: block;'>{date_str}</span>"
                f"    <strong>{full_name}</strong> — <span style='font-size: 0.9em; color: #555;'>{description}</span>"
                f"  </li>\n"
            )
        
        html_content += "</ul>"

        with open(OUTPUT_FILE, "w") as f:
            f.write(html_content)
        
        print(f"Feed updated with Names, Years, and Descriptions.")

    except Exception as e:
        print(f"Error: {e}")
    finally:
        if 'conn' in locals():
            conn.close()

if __name__ == "__main__":
    update_feed()
