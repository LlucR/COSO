<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dc="http://purl.org/dc/elements/1.1/"
    xmlns:content="http://purl.org/rss/1.0/modules/content/"
    xmlns:dcterms="http://purl.org/dc/terms/" xmlns:atom="http://www.w3.org/2005/Atom"
    xmlns:media="http://search.yahoo.com/mrss/">
    <xsl:template match="/">
        <html>
            <head>
                <style type="text/css">
                    a:link, a:visited {
                    background-color: #f44336;
                    color: white;
                    padding: 15px 25px;
                    text-align: center;
                    text-decoration: none;
                    display: inline-block;
                    }

                    a:hover, a:active {
                    background-color: red;
                    }</style>
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
                    rel="stylesheet"
                    integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
                    crossorigin="anonymous" />
                <title>Sufrimiento</title>
            </head>

            <body>

                <h1 style="text-align:center; border:2px solid black;">
                    <a href="https://www.elmundo.es/">
                        <xsl:value-of select="rss/channel/title" align=""></xsl:value-of>
                    </a>
                </h1>
                <h2>
                    <xsl:value-of select="rss/channel/description"></xsl:value-of>
                </h2>
                <h3>
                    <a href="https://elpais.com/">
                        <xsl:value-of select="rss/channel/link"></xsl:value-of>
                    </a>
                </h3>
                <p >¿Problemas con la web?</p>
                <a 
                    href="https://ideamosweb.com/wp-content/uploads/2021/06/Shitpost-y-el-Marketing-Digital-1.jpg"
                    target="_blank" style="text-align:right">TE AYUDO</a>
                <p>
                    <xsl:value-of select="rss/channel/lastBuildDate"></xsl:value-of>
                </p>
                <div class="row row-cols-1 row-cols-md-4 g-4">
                    <xsl:for-each select="rss/channel/item">
                        <div class="col">
                            <div class="card">

                                <img src="{media:content/@url}" class="card-img-top"
                                    alt="{media:content/media:title}"></img>
                                <div class="card-body">

                                    <h5 class="card-title">
                                        <xsl:value-of select="title" />
                                    </h5>
                                    <p class="card-text">
                                        <xsl:value-of select="pubDate" />
                                    </p>
                                    <p class="card-text">
                                        <xsl:value-of select="link" />
                                    </p>
                                    <p class="card-text">
                                        <xsl:value-of select="dc:creator" />
                                    </p>
                                    <p class="card-text">
                                        <xsl:value-of select="description" />
                                    </p>
                                    <p class="card-text">
                                        <xsl:value-of select="category" />
                                    </p>
                                    <p class="card-text"></p>
                                    <a href="https://www.youtube.com/watch?v=dQw4w9WgXcQ">Leer mas</a>

                                </div>

                            </div>
                        </div>
                    </xsl:for-each>
                </div>
                <img
                    src="data:image/jpeg;base64,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"></img>
                <script
                    src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
                    integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
                    crossorigin="anonymous"></script>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>