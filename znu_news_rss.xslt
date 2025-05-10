<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" encoding="UTF-8"/>

  <xsl:template match="/">
    <html>
      <head>
        <title>Новини KNTU</title>
        <style>
          body { font-family: Arial; margin: 20px; background: #f0f0f0; }
          h1 { color: #003366; }
          .news { margin-bottom: 20px; padding: 10px; background: white; border: 1px solid #ccc; }
          .news-title { font-weight: bold; font-size: 18px; }
          .news-date { font-size: 12px; color: #666; }
        </style>
      </head>
      <body>
        <h1><xsl:value-of select="/rss/channel/title"/></h1>
        <xsl:for-each select="/rss/channel/item">
          <div class="news">
            <div class="news-title">
              <a href="{link}"><xsl:value-of select="title"/></a>
            </div>
            <div class="news-date">
              <xsl:value-of select="pubDate"/>
            </div>
            <div class="news-description">
              <xsl:value-of select="description"/>
            </div>
          </div>
        </xsl:for-each>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
