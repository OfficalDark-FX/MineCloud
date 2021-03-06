#!/bin/bash

echo "------------------------------------------"
echo ""
echo "MineCloud Server Initialize Script"
echo ""
echo "------------------------------------------"

echo ""
echo ""

mkdir worlds
mkdir plugins
mkdir worlds/$DEFAULT_WORLD

cp -r /mnt/minecloud/server/bukkit/$SERVER_MOD/* .
cp -r /mnt/minecloud/worlds/$DEFAULT_WORLD/$DEFAULT_WORLD_VERSION/* worlds/$DEFAULT_WORLD/
cp -r /mnt/minecloud/plugins/minecloud-bukkit/latest/* plugins/

sed -i "s/levelname/$DEFAULT_WORLD/" server.properties
sed -i "s/maxplayers/$MAX_PLAYERS/" server.properties

sh start.sh
