<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="html" encoding="UTF-8" />
  <xsl:template match="/">
    <html>
      <head>
        <title><xsl:value-of select="employees/title" /></title>
      </head>
      <body>
        <h1><xsl:value-of select="employees/title" /></h1>
        <table border="1">
          <tr>
            <th>ID</th>
            <th>First Name</th>
            <th>Surname</th>
            <th>Birthdate</th>
            <th>Gender</th>
            <th>Entry Date</th>
            <th>Department</th>
            <th>Direct Dialing</th>
          </tr>
          <xsl:for-each select="employees/employee">
            <tr>
              <td><xsl:value-of select="id" /></td>
              <td><xsl:value-of select="firstname" /></td>
              <td><xsl:value-of select="lastname" /></td>
              <td><xsl:value-of select="age" /></td>
              <td><xsl:value-of select="@gender" /></td>
              <td><xsl:value-of select="entry" /></td>
              <td><xsl:value-of select="department" /></td>
              <td><xsl:value-of select="phone" /></td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
