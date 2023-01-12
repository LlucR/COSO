<?xml version="1.0"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text"></xsl:output>
    <xsl:template match="/">
        {
       
            "Disco":[
            <xsl:for-each select="Discos/Disco">
                {
                    "Titulo": "<xsl:value-of select="Titulo" />",
                    "Artista": "<xsl:value-of select="Artista" />",
                    "Pais":"<xsl:value-of select="Pais" />",
                    "Compañia": "<xsl:value-of select="Compañia" />",
                    "precio":<xsl:value-of select="precio" />,
                    "Año":<xsl:value-of select="Año" />
                }
                <xsl:if test="position() != last()">,</xsl:if>
            </xsl:for-each>
            ]
        }
    </xsl:template>

</xsl:stylesheet>