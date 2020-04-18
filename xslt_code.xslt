<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html> 
<head>
<title>My First XSLT</title>
<style>

#container.employee{
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
  flex: 1;
}

.employee td, .employee th {
  border: 1px solid #ddd;
  padding: 8px;
}
.employee{
  margin: 5px;

}

.employee tr:nth-child(even){background-color: #f2f2f2;}

.employee tr:hover {background-color: #ddd;}

.employee th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #4CAF50;
  color: white;
}
h2.tablename {
  text-align: center;
}
caption.mycaption {
  background-color: black;
  color: white;
  padding: 10px;
  font-size: 18px;
}

#container {

  padding: 0% 35%;
  text-align: center;
  width: 60%;
}

</style>
</head>
<body>

<br />
 <div id="container">

<!-- Employees Starts Here -->
  <table border="1" class="employee">
    <caption class='mycaption'>Developers Team</caption>
    <tr bgcolor="#9acd32">
      <th style="text-align:left"><strong>Employee</strong></th>
      <th style="text-align:left">Country</th>
      <th style="text-align:left">Age</th>
      <th style="text-align:left"><strong>Specialization</strong></th>
    </tr>
    <xsl:for-each select="employees/user">
    <tr>
      <td><strong><xsl:value-of select="name"/></strong></td>
      <td><xsl:value-of select="country"/></td>
      <td><xsl:value-of select="age"/></td>
      <td><strong><xsl:value-of select="specialization"/></strong></td>
    </tr>
    </xsl:for-each>
  </table>
<!-- Employees Ends Here -->

</div>
</body>
</html>
</xsl:template>
</xsl:stylesheet>

