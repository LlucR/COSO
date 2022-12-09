<?xml version="1.0" encoding="UTF-8"?>
<xs:schema xmlns:xs="http://www.w3.org/2001/XMLSchema">
    <xs:element name="Escrito">
        <xs:complexType>
            <xs:sequence>
                <xs:element name="Factura">
                    <xs:complexType>
                        <xs:sequence>
                            <xs:element name="Para" type="xs:string" />
                            <xs:element name="Calle" type="xs:string" />
                            <xs:element name="localidad" type="xs:string" />
                            <xs:element name="CIF" type="xs:string" />
                            <xs:element name="telefono" type="xs:string" />
                            <xs:element name="Fax" type="xs:string" />
                        </xs:sequence>
                        <xs:attribute name="n" type="xs:integer" use="required" />
                        <xs:attribute name="fecha" use="required" />
                        <xs:attribute name="Pedido" use="required" />
                        <xs:attribute name="FormaPago" use="required" />
                    </xs:complexType>
                </xs:element>
                <xs:element name="DatosCliente">
                    <xs:complexType>
                        <xs:sequence>
                            <xs:element name="NCliente" type="xs:string" />
                            <xs:element name="Nombre" type="xs:string" />
                            <xs:element name="Direccion" type="xs:string" />
                            <xs:element name="Poblacion" type="xs:string" />
                        </xs:sequence>
                    </xs:complexType>
                </xs:element>
                <xs:element name="DatosFactura">
                    <xs:complexType>
                        <xs:sequence>
                            <xs:element name="REF" maxOccurs="unbounded">
                                <xs:complexType>
                                    <xs:simpleContent>
                                        <xs:extension base="xs:string">
                                            <xs:attribute name="Descripcion" use="required" />
                                            <xs:attribute name="cantidad" type="xs:integer" use="required" />
                                            <xs:attribute name="precio" use="required" />
                                            <xs:attribute name="IVA" use="required" />
                                            <xs:attribute name="Importe" use="required" />
                                        </xs:extension>
                                    </xs:simpleContent>
                                </xs:complexType>
                            </xs:element>
                        </xs:sequence>
                    </xs:complexType>
                </xs:element>
                <xs:element name="Final">
                    <xs:complexType>
                        <xs:sequence>
                            <xs:element name="BaseImponible" type="xs:string" />
                            <xs:element name="IVA" type="xs:string" />
                            <xs:element name="CUTOAIVA" type="xs:string" />
                            <xs:element name="Total" type="xs:string" />
                        </xs:sequence>
                    </xs:complexType>
                </xs:element>
            </xs:sequence>
        </xs:complexType>
    </xs:element>
</xs:schema>