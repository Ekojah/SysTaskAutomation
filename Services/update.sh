
DATE=$(date +"%Y-%m-%d-%H-%M-%S")
sudo yum update && sudo yum upgrade -y > "/home/eko/AutomationTool/Logs/update-$DATE.txt"




#update/install new packages + upgrade packages that can be upgraded, the logs of completed processes are all sent to a txt file which has the current date & time of the update


