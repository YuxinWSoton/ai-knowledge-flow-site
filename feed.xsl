<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" encoding="UTF-8" indent="yes"/>
  <xsl:template match="/">
    <html lang="zh-CN">
      <head>
        <meta charset="utf-8"/>
        <meta name="viewport" content="width=device-width,initial-scale=1"/>
        <title>RSS 订阅源</title>
        <style>
* { box-sizing: border-box; }
  body {
    font-family: system-ui, sans-serif;
    max-width: 720px;
    margin: 0 auto;
    padding: 2rem 1rem;
    color: #fff;
    min-height: 100vh;
    background: #0a0e1a;
    background-image:
      radial-gradient(2px 2px at 20px 30px, rgba(255,255,255,0.9), transparent),
      radial-gradient(2px 2px at 40px 70px, rgba(255,255,255,0.6), transparent),
      radial-gradient(1.5px 1.5px at 90px 40px, rgba(255,255,255,0.8), transparent),
      radial-gradient(2px 2px at 130px 80px, rgba(255,255,255,0.5), transparent),
      radial-gradient(1.5px 1.5px at 160px 120px, rgba(255,255,255,0.7), transparent),
      radial-gradient(ellipse 120% 100% at 50% 0%, rgba(88,60,120,0.25), transparent 50%),
      radial-gradient(ellipse 80% 80% at 80% 20%, rgba(40,60,100,0.2), transparent 40%);
    background-size: 200px 200px;
    background-repeat: repeat;
  }
  a { color: #a8d4ff; text-decoration: none; }
  a:hover { text-decoration: underline; }
          body { max-width: 560px; }
          h1 { font-size: 1.35rem; margin-top: 0; font-weight: 600; }
          p { line-height: 1.6; color: rgba(255,255,255,0.95); }
          .tip {
            background: rgba(255,255,255,0.08);
            border: 1px solid rgba(255,255,255,0.2);
            padding: 0.9rem 1rem;
            border-radius: 8px;
            margin: 1.25rem 0;
            color: rgba(255,255,255,0.95);
          }
          ul { list-style: none; padding: 0; margin: 0.5rem 0 0; }
          li { margin: 0.5rem 0; padding: 0.25rem 0; border-bottom: 1px solid rgba(255,255,255,0.08); }
          li:last-child { border-bottom: none; }
          .back { margin-top: 1.5rem; color: rgba(255,255,255,0.8); }
        </style>
      </head>
      <body>
        <h1><xsl:value-of select="/rss/channel/title"/></h1>
        <p><xsl:value-of select="/rss/channel/description"/></p>
        <div class="tip">
          <strong>如何订阅？</strong> 请勿在浏览器中直接阅读本页。复制本页地址，在 <strong>RSS 阅读器</strong>（如 Feedly、Inoreader、NetNewsWire，或手机上的「订阅」）中<strong>添加订阅</strong>，粘贴此地址即可。
        </div>
        <p>最近更新：</p>
        <ul>
          <xsl:for-each select="/rss/channel/item">
            <li><a href="{link}"><xsl:value-of select="title"/></a></li>
          </xsl:for-each>
        </ul>
        <p class="back"><a href="{/rss/channel/link}">← 返回网站首页</a></p>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>