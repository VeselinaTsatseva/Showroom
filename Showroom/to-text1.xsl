<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text" encoding="utf-8"/>

    <xsl:template match="/">
        <xsl:text>Това е най-мощната кола в нашия автосалон. Тя е </xsl:text>
        <xsl:value-of select="concat(showroom/car[5]/brand,' ',showroom/car[5]/model)"/>
        <xsl:text> модел от </xsl:text>
        <xsl:value-of select="showroom/car[5]/year"/>
        <xsl:text>. Под капака и лежи </xsl:text>
        <xsl:value-of select="showroom/car[5]/engine/size"/>
        <xsl:text> куб.см. двигател с цели </xsl:text>
        <xsl:value-of select="showroom/car[5]/engine/power"/>
        <xsl:text> конски сили и </xsl:text>
        <xsl:value-of select="showroom/car[5]/cylinders"/>
        <xsl:text>цилиндъра. Колата е на цена от само </xsl:text>
        <xsl:value-of select="showroom/car[5]/price"/>
        <xsl:text> лева.</xsl:text>
    </xsl:template>
</xsl:stylesheet>
