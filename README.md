# iconfont

1. [iconfont](http://www.iconfont.cn/)选择想要的icon添加入库。
2. 在购物车中统一下载代码(iconfont.ttf,demo_unicode.html)。
3. 将`iconfont.ttf`添加到工程中(copy if needed)。
4. 在`info.plist` 中添加 `Fonts provided by application` 字段(Array), 将其 item 0的值设置为 `iconfont.ttf`
5. 项目中需要维护 `public enum IconFont` 和 `enum` 对应的 `Unicode` 值。将 &#x替换为 `"\u{用0补齐到8位}"`。

# links
>[iconfont](http://www.iconfont.cn/)

>[fontawesome](https://fontawesome.com/cheatsheet?from=io)

>[fontawesome-github](https://github.com/FortAwesome/Font-Awesome)