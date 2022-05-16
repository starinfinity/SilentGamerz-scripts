if [ ! -d "/home/ogp_agent/OGP_User_Files/fastdownload" ]
then
	mkdir /home/ogp_agent/OGP_User_Files/fastdownload

	for folders in gfx maps models resource sound sprites
	do
		mkdir /home/ogp_agent/OGP_User_Files/fastdownload/$folders
	done
fi

if [ ! -d "/home/ogp_agent/OGP_User_Files/fastdownloadCTF" ]
then
	mkdir /home/ogp_agent/OGP_User_Files/fastdownloadCTF

	for folders in gfx maps models resource sound sprites
	do
		mkdir /home/ogp_agent/OGP_User_Files/fastdownloadCTF/$folders
	done
fi

if [ ! -d "/home/ogp_agent/OGP_User_Files/fastdownloadD2" ]
then
	mkdir /home/ogp_agent/OGP_User_Files/fastdownloadD2

	for folders in gfx maps models resource sound sprites
	do
		mkdir /home/ogp_agent/OGP_User_Files/fastdownloadD2/$folders
	done
fi

for servers in CTF2 Dust2 FK RL ZE ZP2
do
	for directory in gfx maps models resource sound sprites

	do
		rsync -av --ignore-existing /home/ogp_agent/OGP_User_Files/$servers/cstrike/$directory/* /home/ogp_agent/OGP_User_Files/fastdownload/$directory/
	done

	rsync -av --ignore-existing /home/ogp_agent/OGP_User_Files/$servers/cstrike/*.wad /home/ogp_agent/OGP_User_Files/fastdownload/
done

for servers in CTF
do
	for directory in gfx maps models resource sound sprites

	do
		rsync -av --ignore-existing /home/ogp_agent/OGP_User_Files/$servers/cstrike/$directory/* /home/ogp_agent/OGP_User_Files/fastdownloadCTF/$directory/
	done

	rsync -av --ignore-existing /home/ogp_agent/OGP_User_Files/$servers/cstrike/*.wad /home/ogp_agent/OGP_User_Files/fastdownloadCTF/
done

for servers in Redust2
do
	for directory in gfx maps models resource sound sprites

	do
		rsync -av --ignore-existing /home/ogp_agent/OGP_User_Files/$servers/cstrike/$directory/* /home/ogp_agent/OGP_User_Files/fastdownloadD2/$directory/
	done

	rsync -av --ignore-existing /home/ogp_agent/OGP_User_Files/$servers/cstrike/*.wad /home/ogp_agent/OGP_User_Files/fastdownloadD2/
done
