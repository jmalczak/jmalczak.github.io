window.requirejs(["main"],function(a){require(["jquery"],function(a){var b=function(){var b=this;b.settings={slideDownSelector:"#slideDown",contentSelector:".content"},b.init=function(){b.initEvents()},b.initEvents=function(){a(document).ready(function(){a(b.settings.slideDownSelector).click(function(){b.scrollToContent()})})},b.scrollToContent=function(){a("html, body").animate({scrollTop:a(b.settings.contentSelector).offset().top},700)}},c=new b;c.init()})});