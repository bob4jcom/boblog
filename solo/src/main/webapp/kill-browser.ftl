<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>${blogTitle}</title>
        <meta name="keywords" content="Boblog,Java 博客,开源" />
        <meta name="description" content="Boblog Java 开源博客" />
        <meta http-equiv="Window-target" content="_top" />
        <link type="text/css" rel="stylesheet" href="${staticServePath}/css/default-init${miniPostfix}.css?${staticResourceVersion}" charset="utf-8" />
        <link rel="icon" type="image/png" href="${staticServePath}/favicon.png" />
    </head>
    <body>
        <div class="wrapper">
            <div class="wrap">
                <div class="content" style="top:-6px">
                    <div class="logo">
                        <a href="http://bob.kim" target="_blank">
                            <img border="0" width="153" height="56" alt="B3log" title="B3log" src="${staticServePath}/images/logo.jpg"/>
                        </a>
                    </div>
                    <div class="main kill" style="height: 385px;">
                        ${killBrowserLabel}
                        <br/>
                         &nbsp; &nbsp;&nbsp; <button onclick="closeIframe();">${closeLabel}</button> &nbsp; &nbsp; 
                        <button onclick="closeIframeForever();">${closeForeverLabel}</button>
                        <img src='${staticServePath}/images/kill-browser.png' title='Kill IE6' alt='Kill IE6'/>
                        <a href="http://bob.kim" target="_blank">
                            <img border="0" class="icon" alt="B3log" title="B3log" src="${staticServePath}/favicon.png"/>
                        </a>
                    </div>
                    <span class="clear"></span>
                </div>
            </div>
        </div>
        <script>
            var closeIframe = function () {
                window.parent.$("iframe").prev().remove();
                window.parent.$("iframe").remove();
            };
            
            var closeIframeForever = function () {
                window.parent.Cookie.createCookie("showKill", true, 365);
                closeIframe();
            };
        </script>
    </body>
</html>
