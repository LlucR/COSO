<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>Sufrimiento</head>
            <body>
                <h1><xsl:value-of select="title"></xsl:value-of></h1>
                <h2><xsl:value-of select="descripcion"></xsl:value-of></h2>
                <h3><xsl:value-of select="link"></xsl:value-of></h3>
                <p><xsl:value-of select="lastBuildDate"></xsl:value-of> </p>
            </body>
        </html>

    </xsl:template>
</xsl:stylesheet>