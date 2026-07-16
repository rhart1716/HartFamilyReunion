sudo apt update && sudo apt upgrade -y
curl -sSL https://get.docker.com | sh
exit
mkdir ~/grampsweb && cd ~/grampsweb
nano docker-compose.yml
docker compose up -d
newgrp docker
docker compose up -d
exit
newgrp docker
docker compose up -d
sudo docker compose up -d
cd ~/grampsweb
sudo docker compose up -d
sudo docker logs -f grampsweb-grampsweb-1
sudo curl -L --output /usr/local/bin/cloudflared https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-arm64
sudo chmod +x /usr/local/bin/cloudflared
cloudflared tunnel login
cloudflared tunnel create pi-tunnel
mkdir -p ~/.cloudflared
nano ~/.cloudflared/config.yml
cloudflared tunnel route dns pi-tunnel hartfamilytree.org
cloudflared tunnel route dns pi-tunnel tree.hartfamilytree.org
cloudflared tunnel run pi-tunnel
mkdir -p ~/grampsweb/landing-page
nano ~/grampsweb/landing-page/index.html
nano ~/grampsweb/docker-compose.yml
sudo docker compose up -d
cd ~/grampsweb
ls
sudo docker compose up -d
nano ~/grampsweb/docker-compose.yml
sudo docker compose up -d
nano ~/grampsweb/docker-compose.yml
sudo docker compose up -d
sudo cloudflared service install
exit
sudo cloudflared service install
sudo cloudflared --config /home/rhart1716/.cloudflared/config.yml service install
sudo systemctl start cloudflared
sudo systemctl enable cloudflared
sudo systemctl status cloudflared
nano ~/grampsweb/docker-compose.yml
sudo docker compose up -d
cd ~/grampsweb
sudo docker compose up -d
nano docker-compose.yml
- GRAMPS_PUBLIC_ACCESS=true
sudo docker compose up -d --force-recreate
sudo docker exec -it grampsweb-grampsweb-1 python3 -m gramps_webapi config set GRAMPSWEB_PUBLIC_ACCESS True
sudo docker compose restart grampsweb
sudo docker exec -it grampsweb-grampsweb-1 python3 -m gramps_webapi config set GRAMPSWEB_DEFAULT_INDEX chart
sudo ls ~/grampsweb/data/config.cfg
cd ~/grampsweb
nano docker-compose.yml
- GRAMPSWEB_DEFAULT_INDEX=chart
sudo docker compose down
sudo docker compose up -d --force-recreate
sudo docker exec -it grampsweb-grampsweb-1 python3 -c "from gramps_webapi.core.config import CoreConfig; c = CoreConfig(); c.set('GRAMPSWEB_PUBLIC_ACCESS', True); c.set('GRAMPSWEB_DEFAULT_INDEX', 'chart'); print('Public Access is now TRUE')"
sudo docker compose restart grampsweb
sudo docker exec -it grampsweb-grampsweb-1 python3 -m gramps_webapi database update
sudo docker compose restart grampsweb
cd ~/grampsweb
nano docker-compose.yml
sudo docker compose down
sudo docker compose up -d --force-recreate
sudo docker exec -it grampsweb-grampsweb-1 python3 -m gramps_webapi user update anonymous --role reader
cd ~/grampsweb
nano docker-compose.yml
sudo docker compose down
sudo docker compose up -d --force-recreate
sudo docker exec -it grampsweb-grampsweb-1 python3 -m gramps_webapi user add anonymous --role reader
sudo docker exec -it grampsweb-grampsweb-1 python3 -m gramps_webapi user add anonymous public123 --role 10
cd ~/grampsweb
sudo docker compose down
sudo docker compose up -d --force-recreate
sudo docker exec -it grampsweb-grampsweb-1 python3 -m gramps_webapi user delete anonymous
sudo docker exec -it grampsweb-grampsweb-1 python3 -m gramps_webapi user add anonymous --password public123 --role 10
cd ~/grampsweb
nano docker-compose.yml
sudo docker compose down
sudo docker compose up -d --force-recreate
cd ~/grampsweb
nano docker-compose.yml
sudo docker exec -it grampsweb-grampsweb-1 python3 -m gramps_webapi database migrate
sudo docker compose restart grampsweb
ssh rhart1716@familyTree.local
cd ~/grampsweb
nano docker-compose.yml
sudo docker compose down
sudo docker compose up -d --force-recreate
sudo docker exec -it grampsweb-grampsweb-1 python3 -c "from gramps_webapi.core.config import CoreConfig; c = CoreConfig(); c.set('GRAMPSWEB_DISABLED_MODULES', 'blog,dna'); c.set('GRAMPSWEB_PUBLIC_ACCESS', True); c.set('GRAMPSWEB_AUTH_ALLOW_ANONYMOUS', True); c.save()"
cd ~/grampsweb
nano docker-compose.yml
cd ~/grampsweb
nano docker-compose.yml
sudo docker compose down
sudo docker compose up -d --force-recreate
sudo docker exec -it grampsweb-grampsweb-1 python3 -m gramps_webapi config sync
ls -la ~/gramps-web/data/index
ls -R ~/
cd ~/grampsweb/data/index
ls -la
# This opens the database in the terminal
sqlite3 search_index.db
sudo apt update && sudo apt install sqlite3 -y
sqlite3 search_index.db
cd ~/grampsweb/landing-page
nano index.html
cd ~/grampsweb
nano docker-compose.yml
docker compose up -d
nano docker-compose.yml
- GRAMPSWEB_CORS_ORIGIN=https://pewu.github.io
nano ~/grampsweb/docker-compose.yml
docker compose up -d
cd ~/grampsweb
docker compose up -d
sudo docker compose up -d
newgrp docker
nano docker-compose.yml
sudo docker compose up -d
sudo raspi-config
docker exec -it [CONTAINER_NAME] dot -V
docker exec -it [CONTAINER_NAME] dot -V[200~sudo docker exec -u 0 -it [CONTAINER_NAME] apt-get update && sudo docker exec -u 0 -it [CONTAINER_NAME] apt-get install -y graphviz~
sudo docker exec -u 0 -it [CONTAINER_NAME] apt-get update && sudo docker exec -u 0 -it [CONTAINER_NAME] apt-get install -y graphviz
docker ps --format "{{.Names}}"
sudo docker ps --format "{{.Names}}"
sudo docker exec -u 0 -it grampsweb-grampsweb-1 apt-get update
sudo docker exec -u 0 -it grampsweb-grampsweb-1 apt-get install -y graphviz
sudo docker exec -it grampsweb-grampsweb-1 gramps --api -u
sudo docker exec -it grampsweb-grampsweb-1 gramps -u
sudo docker restart grampsweb-grampsweb-1
cd ~/grampsweb
sudo nano docker-compose.yml
sudo docker compose up -d
sudo nano docker-compose.yml
sudo docker compose up -d
sudo docker logs grampsweb-grampsweb-1
sudo nano docker-compose.yml
sudo docker compose up -d
sudo nano ~/grampsweb/docker-compose.yml
hostname -I
sudo nano ~/grampsweb/docker-compose.yml
sudo docker compose up -d
sudo nano ~/grampsweb/docker-compose.yml
sudo docker compose up -d
sudo nano docker-compose.yml
sudo docker compose up -d
mkdir -p ~/my-website/html
ls -F
ls -F Landing-page
ls -F Landing-Page/
ls -F landing-page/
cd ~
git clone https://github.com/rhart1716/HartFamilyReunion.git temp-site
# This moves everything EXCEPT the index.html from temp to your real folder
rsync -av --exclude='index.html' ~/temp-site/ ~/grampsweb/landing-page/
rm -rf ~/temp-site
ls -F ~/grampsweb/landing-page/
sudo nano ~/grampsweb/docker-compose.yml
git clone https://github.com/rhart1716/HartFamilyReunion.git ~/temp-site
rsync -av --exclude='index.html' ~/temp-site/ ~/grampsweb/landing-page/
rm -rf ~/temp-site
nano ~/grampsweb/landing-page/index.html
cd ~/grampsweb
sudo docker compose down
sudo docker compose up -d
nano ~/grampsweb/landing-page/index.html
sudo docker compose up -d
nano ~/grampsweb/landing-page/index.htm
nano ~/grampsweb/landing-page/index.html
sudo docker compose up -d
nano ~/grampsweb/landing-page/index.html
sudo docker compose up -d
ls -F ~/grampsweb/landing-page/
ls -F ~/grampsweb/landing-page/reports/
sudo nano ~/grampsweb/docker-compose.yml
sudo docker compose up -d
sudo nano ~/grampsweb/docker-compose.yml
sudo docker compose up -d
cd ~/grampsweb/landing-page/
# Download the latest release
wget https://github.com/pewu/topola-viewer/releases/latest/download/topola-viewer.zip
# Unzip it into a folder called 'view'
unzip topola-viewer.zip -d view
# Clean up the zip file
rm topola-viewer.zip
cd ~/grampsweb/landing-page/
# Download the actual distribution file
wget https://github.com/pewu/topola-viewer/releases/latest/download/dist.zip
# Unzip it into a folder called 'view'
unzip dist.zip -d view
# Clean up
rm dist.zip
ls -f
nano ~/grampsweb/landing-page/index.html
sudo docker compose up -d
nano ~/grampsweb/landing-page/index.html
sudo nano ~/grampsweb/docker-compose.yml
sudo docker compose up -d
sudo docker compose up -d --remove-orphans
sudo nano ~/grampsweb/docker-compose.yml
nano ~/grampsweb/cors.conf
sudo nano ~/grampsweb/docker-compose.yml
sudo docker compose up -d
docker-compose.yml
sudo docker exec -it grampsweb-grampsweb-1 python3 -m gramps_webapi config set ENABLE_PUBLIC_ACCESS True
sudo nano ~/grampsweb/docker-compose.yml
sudo docker compose up -d
nano index.html
sudo docker compose up -d
nano index.html
docker-compose up -d --force-recreate
docker compose up -d --force-recreate
ls -d */
cd grampsweb
docker compose up -d --force-recreate
cd ~/grampsweb
docker compose up -d --force-recreate
exit
nano index.html
sudo docker compose up -d
cd ~/grampsweb
sudo docker compose up -d
nano index.con
sudo docker composet up -d
sudo docker compose up -d
sudo docker compose up -dsudo docker compose up -d --force-recreate
sudo docker compose up -d --force-recreate
nano index.html
sudo docker compose up -d --force-recreate
nano docker-compose.yml
sudo docker compose up -d --force-recreate
cd ..
nano index.html
nano docker-compose up -d
sudo docker compose up -d
mv ~/index.html ~/grampsweb/index.html
cd ~/grampsweb
sudo docker compose up -d --force-recreate
ls -R ~/grampsweb
cp ~/index.html /home/rhart1716/grampsweb/landing-page/index.html
find ~ -name "index.html"
find ~ -name "index.html"cp ~/grampsweb/index.html ~/grampsweb/landing-page/index.html
cp ~/grampsweb/index.html ~/grampsweb/landing-page/index.html
grep "Hart Family" ~/grampsweb/landing-page/index.html
sh rhart1716@192.168.1.91
nmcli connection show
sudo nmcli connection modify "Wired connection 1" ipv4.addresses 192.168.1.91/24 ipv4.gateway 192.168.1.1 ipv4.dns "8.8.8.8" ipv4.method manual
sudo nmcli connection modify "netplan-eth0" ipv4.addresses 192.168.1.91/24 ipv4.gateway 192.168.1.1 ipv4.dns "8.8.8.8,8.8.4.4" ipv4.method manual
sudo nmcli connection up "netplan-eth0"
ipconfig /flushdns
exit
nano index.html
cd ~/grampsweb
ls
nano index.html
cd ~/grampsweb
cat command to display the text:
cat docker-compose.yml
nano index.html
cat index.html
ls
find . -name "*.html"
nano  familyPhotos.html
cd grampsweb
ls
ls landing-page/
nano landing-page/familyPhotos.html
nano index.html
ls -l /home/pi/grampsweb/landing-page/familyPhotos.html
find ~/grampsweb -name "familyPhotos.html"
sudo chmod -R 755 ~/grampsweb/landing-page
nano ~/grampsweb/index.html
cat ~/grampsweb/docker-compose.yml
nano ~/grampsweb/docker-compose.yml
docker compose up -d --force-recreate
sudo docker compose up -d --force-recreate
nano ~/grampsweb/docker-compose.yml
nano index.html
sudo docker compose up -d --force-recreate
tree -I 'data|__pycache__' ~/grampsweb
find ~/grampsweb -maxdepth 3 -not -path '*/.*' -not -path '*/data*'
nano docker-compose.yml
sudo docker compose up -d --force-recreate
nano ~/grampsweb/index.html
sudo docker compose up -d --force-recreate
cat ~/grampsweb/landing-page/familyPhotos.html
sudo docker logs -f grampsweb_web_1 --tail 20
sudo docker ps
sudo docker logs -f grampsweb-web-1 --tail 20
sudo docker logs -f grampsweb-web-landing-1 --tail 20
sudo docker exec -it grampsweb-web-landing-1 ls /usr/share/nginx/html/landing-page/
nano ~/grampsweb/docker-compose.yml
cd ~/grampsweb
sudo docker compose up -d --force-recreate
sudo docker exec -it grampsweb-web-landing-1 ls /usr/share/nginx/html/landing-page/
nano ~/grampsweb/docker-compose.yml
sudo docker compose up -d --force-recreate
cd ~/grampsweb/landing-page
curl -L -o familyPhotos.html https://raw.githubusercontent.com/rhart1716/HartFamilyReunion/main/familyPhotos.html
head -n 10 familyPhotos.html
sudo docker exec grampsweb-web-landing-1 nginx -s reload
head -n 50 ~/grampsweb/landing-page/familyPhotos.html
head -n 50 ~/grampsweb/index.html
nano ~/grampsweb/landing-page/familyPhotos.html
sudo docker compose up -d --force-recreate
tail -n 60 ~/grampsweb/landing-page/familyPhotos.html
nano ~/grampsweb/landing-page/familyPhotos.html
cd ~/grampsweb/landing-page
curl -L -o original_backup.html https://raw.githubusercontent.com/rhart1716/HartFamilyReunion/main/familyPhotos.html
cat original_backup.html
nano ~/grampsweb/landing-page/familyPhotos.html
sudo docker exec grampsweb-web-landing-1 nginx -s reload
nano ~/grampsweb/landing-page/familyPhotos.html
sudo docker exec grampsweb-web-landing-1 nginx -s reload
cd ..
nano index.html
sudo docker exec grampsweb-web-landing-1 nginx -s reload
cat index.html
ls -R ~/grampsweb
sudo docker exec grampsweb-web-landing-1 ls -R /usr/share/nginx/html
nano index.html
sudo docker exec grampsweb-web-landing-1 nginx -s reload
sudo docker exec grampsweb-web-landing-1 cat /usr/share/nginx/html/landing-page/familyTree.html | grep ".pdf"
# Navigate to the reports folder
cd ~/grampsweb/landing-page/reports
# Rename your file to match what the HTML expects
# (Replace 'old_name.pdf' with your actual filename)
mv "old_name.pdf" "Hart Backup_FamilyTree_Generation.pdf"
cd ..
nano index.html
sudo docker exec grampsweb-web-landing-1 nginx -s reload
sudo docker compose up -d --force-recreate
cat ~/grampsweb/docker-compose.yml
ls -R ~/grampsweb | grep index.html
cp ~/grampsweb/landing-page/index.html ~/grampsweb/index.html
cp
sudo cp /home/rhart1716/grampsweb/landing-page/index.html /home/rhart1716/grampsweb/index.html
sudo docker exec grampsweb-web-landing-1 nginx -s reload
sudo cp -r ~/grampsweb/landing-page/* ~/grampsweb/
ls ~/grampsweb/reports
sudo cp -r ~/grampsweb/landing-page/* ~/grampsweb/
404 Not Found
nginx/1.29.7
sudo cp -r ~/grampsweb/landing-page/* ~/grampsweb/
sudo cp -rv ~/grampsweb/landing-page/* ~/grampsweb/
ls -F ~/grampsweb
sudo docker exec grampsweb-web-landing-1 nginx -s reload
sudo chown -R $USER:$USER ~/grampsweb
sudo chmod -R 755 ~/grampsweb
# Stop and remove the container
sudo docker compose down
# Start it back up (this forces it to re-map the folders)
sudo docker compose up -d
sudo docker exec grampsweb-web-landing-1 ls -l /usr/share/nginx/html/familyTree.html
nano ~/grampsweb/docker-compose.yml
cd ~/grampsweb
sudo docker compose up -d
sudo docker compose up -d --remove-orphans
sudo docker exec grampsweb-web-landing-1 ls /usr/share/nginx/html/familyTree.html
sudo docker ps --format "{{.Names}}"
sudo docker compose up -d web-landing --remove-orphans
sudo docker ps --format "{{.Names}}"
nano ~/grampsweb/docker-compose.yml
cd ~/grampsweb
sudo docker compose down
sudo docker compose up -d --remove-orphans
sudo docker ps --format "{{.Names}}"
ls *.html
cat ~/grampsweb/familyTree.html
nano ~/grampsweb/familyTree.html
sudo docker exec grampsweb-web-landing-1 nginx -s reload
nano ~/grampsweb/index.html
sudo docker exec grampsweb-web-landing-1 nginx -s reload
nano ~/grampsweb/familyTree.html
cd ~/grampsweb
nano index.html
sudo docker compose restart
what is the link i point a button to in order to view the family calendar main page?
nano ~/grampsweb/index.html
sudo docker compose restart
nano index.html
WARN[0000] /home/rhart1716/grampsw
sudo docker compose restart
nano index.html
sudo docker compose restart
nano index.html
sudo docker compose restart
nano index.html
sudo docker compose restart
nano index.html
sudo docker compose restart
curl -X GET "http://localhost:5055/api/statistics/"
curl -i http://localhost:5055/api/
curl -i http://localhost:5055/api/v1/metadata
curl -i http://localhost:5055/openapi.json
curl -i http://localhost:5055/api/v1/
curl http://localhost:5055/config.js
curl -i http://localhost:5055/api/
curl -i http://localhost:5055/api/v1/statistics
cat ~/grampsweb/docker-compose.yml
curl -i http://localhost:5055/api/FamilyTree/statistics
curl -i http://localhost:5055/api/statistics
curl -i -H "Accept: application/json" http://localhost:5055/statistics
nano ~/grampsweb/update_feed.py
nano ~/grampsweb/index.html
sudo docker compose restart
ls -l ~/grampsweb/recent_activity.html
python3 ~/grampsweb/update_feed.py > ~/grampsweb/recent_activity.html
chmod 644 ~/grampsweb/recent_activity.html
curl -i http://localhost:8080/recent_activity.html
sudo chmod +rx ~/grampsweb/data/db/FamilyTree
sudo chmod +r ~/grampsweb/data/db/FamilyTree/gramps.db
ls ~/grampsweb/data/db/
# Replace FOLDER_NAME with the string you saw from the 'ls' command
sudo chmod +rx ~/grampsweb/data/db/FOLDER_NAME
sudo chmod +r ~/grampsweb/data/db/FOLDER_NAME/gramps.db
python3 ~/grampsweb/update_feed.py
sudo chmod +rx ~/grampsweb/data/db/946e99d5-cc99-4832-ae1c-0752d35b83c9
sudo chmod +r ~/grampsweb/data/db/946e99d5-cc99-4832-ae1c-0752d35b83c9/gramps.db
nano ~/grampsweb/update_feed.py
python3 ~/grampsweb/update_feed.py > ~/grampsweb/recent_activity.html
Invoke-RestMethod -Uri "http://192.168.1.91:8080/recent_activity.html"
nano ~/grampsweb/update_feed.py
python3 ~/grampsweb/update_feed.py
Recent Tree Activity
Error reading tree: no such table: person was recently added/updated
nano ~/grampsweb/update_feed.py
sqlite3 /home/pi/grampsweb/data/db/946e99d5-cc99-4832-ae1c-0752d35b83c9/gramps.db ".tables"
ls -R ~/grampsweb/data/db/
sudo chmod -R 755 ~/grampsweb/data/
ls -l ~/grampsweb/data/db/946e99d5-cc99-4832-ae1c-0752d35b83c9/
nano ~/grampsweb/update_feed.py
DB_PATH = "/home/pi/grampsweb/data/db/946e99d5-cc99-4832-ae1c-0752d35b83c9/sqlite.db"
sqlite3 ~/grampsweb/data/db/946e99d5-cc99-4832-ae1c-0752d35b83c9/sqlite.db ".tables"
nano ~/grampsweb/update_feed.py
python3 ~/grampsweb/update_feed.py
nano ~/grampsweb/update_feed.py
python3 ~/grampsweb/update_feed.py
nano ~/grampsweb/update_feed.py
python3 ~/grampsweb/update_feed.py
nano ~/grampsweb/update_feed.py
python3 ~/grampsweb/update_feed.py
nano ~/grampsweb/update_feed.py
sqlite3 ~/grampsweb/data/db/946e99d5-cc99-4832-ae1c-0752d35b83c9/sqlite.db "PRAGMA table_info(person);"
nano ~/grampsweb/update_feed.py
python3 ~/grampsweb/update_feed.py
nano ~/grampsweb/update_feed.py
python3 ~/grampsweb/update_feed.py
exit
sudo certbot --nginx -d your-new-domain.com
sudo systemctl status nginx
hostname -I
PS C:\Users\ryane> sudo systemctl status nginx
sudo systemctl status nginx
docker ps
sudo docker ps
ls
cd grampsweb
cat docker-compose.yml
mkdir nginx
touch nginx/default.conf
nano nginx/default.conf
nano docker-compose.yml
sudo docker compose restart
ls -R certbot/conf/live/hartfamilytree.org
sudo docker compose logs certbot
sudo docker compose up certbot
nano docker-compose.yml
sudo docker compose up -d --remove-orphans
nano index.html
sudo docker ps --format "table {{.Names}}\t{{.Ports}}"
nano docker-compose.yml
ls
cd grampsweb
nano docker-compose.yml
sudo docker compose restart
sudo docker compose up -d --remove-orphans
nano docker-compose.yml
can docker-compose.yml
cat docker-compose.yml
nano docker-compose.yml
sudo docker compose up -d --remove-orphans
sudo docker compose restart
nano index.html
sudo docker compose restart
