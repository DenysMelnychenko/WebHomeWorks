Note: Don't forget to add tomcat user in tomcat-users.xml and maven settings.xml

<h4>tomcat-user.xml</h4> </br>
< tomcat-users></br>
  < role rolename="manager-gui"/></br>
  < role rolename="manager-script"/></br>
  < user username="admin" password="password" roles="manager-gui,manager-script" /></br>
< /tomcat-users></br>

<h4>manager-script role enables applications i.e., maven, to deploy jar/war to application server.</h4></br>

Maven file settings.xml</br>

< ?xml version="1.0" encoding="UTF-8"?></br>
< settings ...></br>
    < servers></br>
        < server></br>
            < id>TomcatServer</id></br>
            < username>admin</username></br>
            < password>password</password></br>
        < /server></br>
    < /servers></br>
< /settings></br>
