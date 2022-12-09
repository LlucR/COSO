<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>Sufrimiento</head>
            <body>
                <h1>La muerte, ejercicio23</h1>
                <table border="1">
                    <tr>
                        <th colspan="6">Factura nº 999</th>
                    </tr>
                    <tr>
                        <xsl:for-each select="Escrito/Factura">
                            <td colspan="3">
                                <p>
                                    <xsl:value-of select="Para" />
                                </p>

                                <p>
                                    <xsl:value-of select="Calle" />
                                </p>

                                <p>
                                    <xsl:value-of select="localidad" />
                                </p>

                                <p>
                                    <xsl:value-of select="CIF" />
                                </p>

                                <p>
                                    <xsl:value-of select="telefono" />
                                </p>
                                <p>
                                    <xsl:value-of select="Fax" />
                                </p>
                            </td>
                            <td colspan="3">
                                <p>
                                    <xsl:value-of select="@fecha" />
                                </p>
                                <p>
                                    <xsl:value-of select="@Pedido" />
                                </p>
                                <p>
                                    <xsl:value-of select="@FormaPago" />
                                </p>
                            </td>
                        </xsl:for-each>
                    </tr>


                    <th colspan="6">DATOS CLIENTE</th>
                    <tr />
                    <tr>
                        <xsl:for-each select="Escrito/DatosCliente">
                            <td colspan="6">
                                <p>
                                    <xsl:value-of select="NCliente" />
                                </p>
                                <p>
                                    <xsl:value-of select="Nombre" />
                                </p>
                                <p>
                                    <xsl:value-of select="Direccion" />
                                </p>
                                <p>
                                    <xsl:value-of select="Poblacion" />
                                </p>
                            </td>
                        </xsl:for-each>
                    </tr>
                    <tr>
                        <th colspan="6">
                            Datos factura
                        </th>
                    </tr>
                    <tr>
                        <th>REF</th>
                        <th>Descripcion</th>
                        <th>Cant.</th>
                        <th>Precio</th>
                        <th>I.V.A</th>
                        <th>Importe</th>
                    </tr>
                        <xsl:for-each select="Escrito/DatosFactura/REF">
                        <tr>

                            <td>
                                <xsl:value-of select="." />
                            </td>
                            <td>
                                <xsl:value-of select="@Descripcion" />

                            </td>
                            <td>
                                <xsl:value-of select="@cantidad" />
                            </td>
                            <td>
                                <xsl:value-of select="@precio" />
                            </td>
                            <td>
                                <xsl:value-of select="@IVA" />
                            </td>
                            <td>
                                <xsl:value-of select="@Importe" />
                            </td>

                        </tr>
                        </xsl:for-each>
                    
                    <tr>
                        <th colspan="2">Base imponible </th>
                        <th colspan="2">I.V.A</th>
                        <th colspan="2">Cuota I.V.A</th>
                    </tr>
                    <tr>

                    </tr>
                    <tr >
                        <xsl:for-each select="Escrito/Final">
                        <td colspan="2">
                            <xsl:value-of select="BaseImponible" />
                        </td>
                        <td colspan="2">
                            <xsl:value-of select="IVA" />
                        </td>
                        <td colspan="2">
                            <xsl:value-of select="CUTOAIVA" />
                        </td>
                    </xsl:for-each>
                    </tr>

                    <tr>
                        <xsl:for-each select="Escrito/Final">
                        <th colspan="6">
                            Total factura 
                            <xsl:value-of select="Total" />
                        </th>
                    </xsl:for-each>
                    </tr>


                </table>
                
            </body>
        </html>

    </xsl:template>
</xsl:stylesheet>