for servers in CTF DMFFA Dust2 FK RL warctf warD2 ZE ZP
do
	rsync -av /home/ogp_agent/OGP_User_Files/configsFSync/rechecker/* /home/ogp_agent/OGP_User_Files/$servers/cstrike/addons/rechecker/
	rsync -av /home/ogp_agent/OGP_User_Files/configsFSync/nickmenu/* /home/ogp_agent/OGP_User_Files/$servers/cstrike/addons/amxmodx/configs/
	rsync -av /home/ogp_agent/OGP_User_Files/configsFSync/lang/* /home/ogp_agent/OGP_User_Files/$servers/cstrike/addons/amxmodx/data/lang/
done