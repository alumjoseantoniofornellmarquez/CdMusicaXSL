<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:variable name="tiempo">2:49</xsl:variable>
<xsl:template match="/">
    <html>
    <body>
    <h1>Discos de musica que duran menos de <xsl:value-of select="$tiempo"/></h1>
        <table border="1">
        <tr bgcolor="#707887">
            <th>Titulo Albun</th>
            <th>Artista</th>
            <th>Sello Discografico</th>
            <th>Año de Publicación</th>
            <th>Canciones</th>
        </tr>
        <xsl:for-each select="ListaCd/CdMusica">
        <xsl:if test="(substring-before(cancion/@tiempo, ':')*60 + substring-after(cancion/@tiempo,':')) &lt; (substring-before($tiempo, ':')*60 + substring-after($tiempo,':'))">
        <tr>
            <td><xsl:value-of select="tituloAlbun"/></td>
            <td><xsl:value-of select="artista"/></td>
            <td><xsl:value-of select="selloDiscografico"/></td>
            <td><xsl:value-of select="añoPublicacion"/></td>
            <td>
                <ol>
                <xsl:for-each select="cancion">
                <li><xsl:value-of select="."/></li>
                </xsl:for-each>
                </ol>
            </td>
        </tr>
        </xsl:if>
        </xsl:for-each>
        </table>
    </body>
    </html>
</xsl:template>
</xsl:stylesheet>