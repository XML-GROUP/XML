<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
			<head>
				<title>Twitter Feed ok</title>
			</head>
            <body>
                <h1>Twitter Feed</h1>      
                    <xsl:for-each select="/twitter/tweet">
                        <div style="border: 1px solid #ccc; padding: 10px; margin-bottom: 10px;">	
						  <p><strong>username:</strong> <xsl:value-of select="username"/></p>
						  <p><strong>comment:</strong> <xsl:value-of select="comment"/></p>
						  <p><strong>Likes:</strong> <xsl:value-of select="likes"/></p>
						</div>
                    </xsl:for-each>
                <br/>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>