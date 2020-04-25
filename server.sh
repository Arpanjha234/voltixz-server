banner () {

echo "

 __     _____  _   _____ _____  __ _____

 \ \   / / _ \| | |_   _|_ _\ \/ /|__  /

  \ \ / / | | | |   | |  | | \  /   / / 

   \ V /| |_| | |___| |  | | /  \  / /_ 

    \_/  \___/|_____|_| |___/_/\_\/____|

  "     

printf "\n" 

echo "CODED BY ARPANJHA [ MIT LICENSED ]                         

}                                                                            

serva () {

php -S 127.0.0.1:3333 > /dev/null 2>&1 & 

sleep 1

printf "\e[1;92m[\e[0m+\e[1;92m] Starting ajdevs server...\n"

./ngrok http 3333 > /dev/null 2>&1 &

sleep 1

link=$(curl -s -N http://127.0.0.1:4040/api/tunnels | grep -o "https://[0-9a-z]*\.ngrok.io")

sed 's+forwarding_link+'$link'+g' $Home > $Home

printf "\e[1;92m[\e[0m+\e[1;92m] $link \n"

printf "\n" 

read op

if [ $op == $o ]

then

echo "STOPING SERVER......." 

sleep 0.6

exit

else

echo "invalid command"

}

banner

printf "\n"

printf "\n"

serva
