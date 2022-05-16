
mkdir /home/ogp_agent/OGP_User_Files/VaultBackup/"$(date +"%d_%m_%Y")"
mkdir /home/ogp_agent/OGP_User_Files/VaultBackup/"$(date +"%d_%m_%Y")"/ZPvault
mkdir /home/ogp_agent/OGP_User_Files/VaultBackup/"$(date +"%d_%m_%Y")"/CTFvault
mkdir /home/ogp_agent/OGP_User_Files/VaultBackup/"$(date +"%d_%m_%Y")"/ZEvault



cp -r /home/ogp_agent/OGP_User_Files/ZP2/cstrike/addons/amxmodx/data/vault/* /home/ogp_agent/OGP_User_Files/VaultBackup/"$(date +"%d_%m_%Y")"/ZPvault/
cp -r /home/ogp_agent/OGP_User_Files/CTF2/cstrike/addons/amxmodx/data/vault/* /home/ogp_agent/OGP_User_Files/VaultBackup/"$(date +"%d_%m_%Y")"/CTFvault/
cp -r /home/ogp_agent/OGP_User_Files/ZE/cstrike/addons/amxmodx/data/vault/* /home/ogp_agent/OGP_User_Files/VaultBackup/"$(date +"%d_%m_%Y")"/ZEvault/


rsync -avr -e 'ssh'  /home/ogp_agent/OGP_User_Files/VaultBackup/"$(date +"%d_%m_%Y")" username@hostname:~/VaultBackup/

rm -r /home/ogp_agent/OGP_User_Files/VaultBackup/"$(date +"%d_%m_%Y")"
