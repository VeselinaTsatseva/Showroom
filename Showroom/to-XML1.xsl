<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version ="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" indent="yes"/>
        <xsl:template match="showroom">
            <car>
                <xsl:apply-templates select="//car[year &gt; 2015]"/>
            </car>
        </xsl:template>
    <xsl:template match="car">
        <car>
            <BrandModel>
                <xsl:value-of select="concat(brand, ' ', model)"/>
            </BrandModel>
            <EngineYear>
                <xsl:value-of select="concat(engine/size, ' ', year)"/>
            </EngineYear>
            <HPower>
                <xsl:value-of select="concat(engine/power, '', 'hp')"/>
            </HPower>
        </car>
    </xsl:template>
</xsl:stylesheet>
