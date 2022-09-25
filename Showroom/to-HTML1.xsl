<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version ="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="showroom">
        <html>
            <body>
                <h1>Най-икономични коли:</h1>
                <table border="3" border-collapse="collapse" width="100%">
                    <tr bgcolor="#b3d9ff">
                        <th>Марка</th>
                        <th>Модел</th>
                        <th>Година</th>
                        <th>Разход</th>
                        <th>Конски сили</th>
                        <th>Двигател</th>
                        <th>Цена</th>
                    </tr>
                    <xsl:for-each select="car">
                        <xsl:sort select="fuel/fuelConsumption" data-type="number"/>
                        <tr>
                            <td><xsl:value-of select="brand"/></td>
                            <td><xsl:value-of select="model"/></td>
                            <td><xsl:value-of select="year"/></td>
                            <td><xsl:value-of select="fuel/fuelConsumption"/> л/100км</td>
                            <td><xsl:value-of select="engine/power"/> к.с.</td>
                            <td><xsl:value-of select="engine/size"/> л</td>
                            <td><xsl:value-of select="price"/> лева</td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>