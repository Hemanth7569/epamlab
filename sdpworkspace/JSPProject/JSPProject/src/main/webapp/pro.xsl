<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version = "1.0" xmlns:xsl = "http://www.w3.org/1999/XSL/Transform"> 

<xsl:template match="/">


<html>
<body>
<h1 align="center">Profile Information</h1>

<table align="center" border="2" bgcolor="white">
<tr bgcolor="white">
<th>First name</th>
<th>Last name</th>
<th>Age</th>
<th>Phone number</th>
<th>Gender</th>

</tr>

<xsl:for-each select="profiles/profile">
<tr>
<td><xsl:value-of select="fname"></xsl:value-of></td>
<td><xsl:value-of select="lname"></xsl:value-of></td>
<td><xsl:value-of select="age"></xsl:value-of></td>
<td><xsl:value-of select="phone"></xsl:value-of></td>
<td><xsl:value-of select="gender"></xsl:value-of></td>

</tr>
</xsl:for-each>
</table>

</body>

</html>
</xsl:template>
</xsl:stylesheet>