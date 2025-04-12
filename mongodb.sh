echo -e "\e[33m copy mongodb repo file \e[0m"
cp mongodb.repo /etc/yum.repos.d/mongodb.repo &>>/tmp/roboshop.log

echo -e "\e[33m installing mongodb server \e[0m"
yum install mongodb-org -y   &>>/tmp/roboshop.log

# modify the config file
echo -e "\e[33m start mongo db service \e[0m"
systemctl enable mongod  &>>/tmp/roboshop.log
systemctl start mongod  &>>/tmp/roboshop.log