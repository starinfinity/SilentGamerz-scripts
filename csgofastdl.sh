for goservers in csgo_ctf
do
	for godirectory in maps models materials

	do
	rsync -av --ignore-existing /home/ogp_agent/OGP_User_Files/$goservers/csgo/$godirectory/* /home/ogp_agent/OGP_User_Files/csgofastdownload/$godirectory/
	done

done

