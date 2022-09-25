<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version ="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" indent="yes"/>
    <xsl:template match="showroom">
        <car>
            <xsl:apply-templates select="//car[price &lt; 50000]"/>
        </car>
    </xsl:template>
    <xsl:template match="car">
        <car>
            <BrandModel>
                <xsl:value-of select="concat(brand, ' ', model)"/>
            </BrandModel>
            <YearType>
                <xsl:value-of select="concat(engine/power, ' ', type)"/>
            </YearType>
            <Price>
                <xsl:value-of select="concat(price, '', 'лева')"/>
            </Price>
        </car>
    </xsl:template>
</xsl:stylesheet>
