Note: Don't forget to add tomcat user in tomcat-users.xml and maven settings.xml

tomcat-user.xml

<?xml version='1.0' encoding='utf-8'?>
<tomcat-users>
  <role rolename="manager-gui"/>
  <role rolename="manager-script"/>
  <user username="admin" password="password" roles="manager-gui,manager-script" />
</tomcat-users>
manager-script role enables applications i.e., maven, to deploy jar/war to application server.

Maven file settings.xml

<?xml version="1.0" encoding="UTF-8"?>
<settings ...>
    <servers>
        <server>
            <id>TomcatServer</id>
            <username>admin</username>
            <password>password</password>
        </server>
    </servers>
</settings>
