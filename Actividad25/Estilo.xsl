<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output method="text" indent="yes" />

    <xsl:template match="/">
            <xsl:apply-templates />
    </xsl:template>

    <xsl:template match="*">
        <xsl:text>  </xsl:text><xsl:value-of select="name()" /><xsl:text>: </xsl:text>
            <xsl:apply-templates />
        <xsl:text> </xsl:text>
    </xsl:template>

    <xsl:template match="text()">
        <xsl:value-of select="." />
    </xsl:template>

</xsl:stylesheet>