<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet href="index.xml" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>
                    Ejercicio21
                </title>
            </head>
            <body>
                <h2>
                Ejercicio 21
            </h2>
                <table border="1">
                    <tr>
                        <th rowspan="2">Descripcion de cada hecho</th>
                        <th colspan="3">Fecha</th>
                    </tr>
                    <tr>
                        <th>Dia</th>
                        <th>Mes</th>
                        <th>año</th>

                    </tr>
                    <xsl:for-each select="Cabeza/Suceso">
                        <tr>
                            <td ><xsl:value-of select="@Descripcion" /></td>
                            <xsl:for-each select="tiempo">
                            <td><xsl:value-of select="Dia" /></td>
                            <td><xsl:value-of select="Mes" /></td>
                            <td><xsl:value-of select="año" /></td>
                        </xsl:for-each>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>