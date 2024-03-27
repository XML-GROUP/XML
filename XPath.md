<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <!-- Template to select all usernames -->
  <xsl:template match="/">
    <html>
      <body>
        <h2>Usernames:</h2>
        <xsl:for-each select="/twitter/tweet/username">
          <p><xsl:value-of select="."/></p>
        </xsl:for-each>
      </body>
    </html>
  </xsl:template>
  <!-- Template to select comments with "HIV" keyword -->
  <xsl:template match="/">
    <html>
      <body>
        <h2>Comments containing "HIV":</h2>
        <xsl:for-each select="/twitter/tweet[contains(comment, 'HIV')]/comment">
          <p><xsl:value-of select="."/></p>
        </xsl:for-each>
      </body>
    </html>
  </xsl:template>

  <!-- Template to select tweets with more than 30 likes -->
  <xsl:template match="/">
    <html>
      <body>
        <h2>Tweets with more than 30 likes:</h2>
        <xsl:for-each select="/twitter/tweet[likes > 30]">
          <p><xsl:value-of select="."/></p>
        </xsl:for-each>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
