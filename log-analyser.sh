FilePath=$1
Counts=$2


while true; do

    echo "---------------------------------------------"
    echo "1. Top 5 IP addresses with the most requests"
    echo "2. Top 5 most requested paths"
    echo "3. Top 5 response status codes"
    echo "4. Top 5 user agents"
    echo "5. Exit"
    echo ""

    read -r -p "Choose an option [1-5]: " choice

    case $choice in
        1)
		echo "-------------------------"
		awk '{print $1}' ${FilePath} | uniq -c | sort -r | head -n ${Counts} | awk '{print $2"\t" "->" "\t"$1 " time requested"}'
		echo "\n \n"
		;;
        2)
		echo "-------------------------"
		awk '{print $7}' ${FilePath} | sort | uniq -c | sort -nr | awk '{print $1"\t" " time requested to Path: " $2}' | head -n ${Counts}
		echo "\n \n"
	        ;;
        3)
		echo "-------------------------"
		awk '{print $9}' ${FilePath} | sort | uniq -c | sort -nr | grep -v '-' | grep -v 'HTTP' | awk '{print $2 "\t" "time requests: " $1}' | head -n ${Counts}
		echo "\n \n"
            	;;
        4)
		echo "-------------------------"
		awk '{print $12 $13 $14 $15 $16 $17 $18 $19 $20 $21}' ${FilePath} | sort | uniq -c | sort -nr | awk '{print $1 "\t" "time requests: " $2}' | head -n ${Counts}
		echo "\n \n"            	
		;;
        5)
            echo "Exiting..."
            break
            ;;
        *)
            echo "Invalid option. Please choose a number between 1 and 5."
            ;;
    esac
done
