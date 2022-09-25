<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version ="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="showroom">
        <html>
            <body>
                <h1>Галерия на автосалона</h1>
                <xsl:for-each select="car">
                    <div>
                        <xsl:call-template name="picture">
                            <xsl:with-param name="picPath" select="picture"/>
                        </xsl:call-template>
                        <br/>
                        <b><xsl:value-of select="concat(brand, ' ', model)"/></b>
                    </div>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>

    <xsl:template name="picture">
        <xsl:param name="picPath"/>

        <img src="{$picPath}"
             width="750"
             height="500"/>

    </xsl:template>
</xsl:stylesheet>