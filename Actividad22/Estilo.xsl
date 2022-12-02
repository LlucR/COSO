<?xml version="1.0"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Ejercicio22</title>
            </head>

            <body>
                <h1>Ejercicio22</h1>
                <table border="1">
                    <tr>
                        <th colspan="6">CDs En Oferta</th>
                    </tr>
                    <tr>
                        <th>Titulo</th>
                        <th>Artista</th>
                        <th>Pais</th>
                        <th>Compañia discografica</th>
                        <th>precio</th>
                        <th>Año de publicacion</th>
                    </tr>
                    <xsl:apply-templates />

                </table>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="Discos/Disco">
        <tr>
            <td>
                <xsl:value-of select="Titulo" />
            </td>
            <td>
                <xsl:value-of select="Artista" />
            </td>
            <td>
                <xsl:value-of select="Pais" />
            </td>
            <td>
                <xsl:value-of select="Compañia" />
            </td>
            <td>
                <xsl:value-of select="precio" />
            </td>
            <td>
                <xsl:value-of select="Año" />
            </td>
        </tr>
    </xsl:template>
</xsl:stylesheet>