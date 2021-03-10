<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
    <html>
    <body>
    <h1>Discos de Musica</h1>
        <table>
        <tr bgcolor="#707887">
            <th>Titulo Albun</th>
            <th>Artista</th>
            <th>Canciones</th>
            <th>Sello Discografico</th>
            <th>Año de Publicación</th>
        </tr>
        <xsl:for-each select="ListaCd/CdMusica">
        <tr>
            <td><xsl:value-of select="tituloAlbun"/></td>
            <td><xsl:value-of select="artista"/></td>
            <td><xsl:value-of select="cancion"/></td>
            <td><xsl:value-of select="selloDiscografico"/></td>
            <td><xsl:value-of select="añoPublicacion"/></td>
        </tr>
        </xsl:for-each>
        </table>
    </body>
    </html>
</xsl:template>
</xsl:stylesheet>