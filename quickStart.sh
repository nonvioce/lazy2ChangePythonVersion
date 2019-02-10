function setPro(pro,version){
	for ad in `whereis $pro`
		pathP=$ad|grep bin
		if sudo mv $pathP ${pathP}p;then
			sudo touch $pathP
			if sudo "echo sudo rm -rf /usr/bin/python;sudo ln -s /usr/bin/python${version} /usr/bin/python;${pathP}p" >> $pathP;then
				echo "success"$pro"!"
			fi
		fi
}

function setLine(line){
	proName=${line%=*}
	pyVersion=${line:0-1}
	setPro($proName,$pyVersion)
}

function readFile(fileName){
	cat ${fileName}|while read LINE
	do
		if[ "${LINE:0:1}"!="#" ];then
			setLine($LINE)
		fi
	done
}

function main(){
	if[ ! -n "$1" ];then{
		echo config from the config file
		readFile("config/main.config")		
	}
	else
		echo config from parameter
		setLine("$1")
	fi
}

main()