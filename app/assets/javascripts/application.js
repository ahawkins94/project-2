// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require turbolinks
//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require_tree .



// function () {
// 	n(".overlay").fadeToggle(200);n(".menu-toggle a").toggleClass("btn-open").toggleClass("btn-close")
// }
(function(n) {
    var t = {
        onReady: function() {
            this.initCarousel();
            this.stickyHeader();
            this.overlayNav();
            this.eventBorders();
            this.customCheck();
            this.smoothScroll();
            this.customSelect();
            this.slideDownNav()
        },
        stickyHeader: function() {
            if (n(".sticky-header").length) {
                function t() {
                    window.addEventListener("scroll", function() {
                        var t = window.pageYOffset || document.documentElement.scrollTop
                          , n = document.querySelector("header");
                        t > 300 ? classie.add(n, "smaller") : classie.has(n, "smaller") && classie.remove(n, "smaller")
                    })
                }
                window.onload = t()
            }
        },
        overlayNav: function() {
            if (n(".overlay-nav").length) {
                n(document).ready(function() {
                    n(".menu-toggle a").click(function(t) {
                        t.preventDefault();
                        n(".overlay").fadeToggle(200);
                        n(this).toggleClass("btn-open").toggleClass("btn-close")
                    })
                });
                n(".overlay").on("click", function() {
                    n(".overlay").fadeToggle(200);
                    n(".menu-toggle a").toggleClass("btn-open").toggleClass("btn-close");
                    open = !1;
                    n("body").removeClass("hide-scroll")
                });
                n(".menu-toggle a").click(function(t) {
                    t.preventDefault();
                    n(".menu-toggle a").is(".btn-open") ? n("body").addClass("hide-scroll") : n("body").removeClass("hide-scroll")
                })
            }
        },
        tabSwitch: function() {
            n(".tabs-container").length && n(document).ready(function() {
                n("ul.tabs li").click(function(t) {
                    t.preventDefault();
                    var i = n(this).attr("data-tab");
                    n("ul.tabs li").removeClass("current");
                    n(".tab-content").removeClass("current");
                    n(this).addClass("current");
                    n("#" + i).addClass("current")
                })
            })
        },
        initCarousel: function() {
            n("body").hasClass("event-page") && (n("#eventCarousel .carousel-inner").html().trim() === "" ? (n("#eventCarousel").prev("h2").hide(),
            n("#eventCarousel").hide()) : n("#eventCarousel .carousel-inner .item:first").addClass("active"))
        },
        carouselSpeed: function() {
            n(".event-carousel").length && n("#eventCarousel").carousel({
                interval: 4e3
            })
        },
        videoInit: function() {
            if (n(".video-modal").length)
                n("#spartaVideoModal").on("show.bs.modal", function(t) {
                    t.relatedTarget != null && n("#spartaVideoModal iframe").attr("src", n(t.relatedTarget).data("video"))
                })
        },
        videoAutoStop: function() {
            if (n(".video-modal").length)
                n("#spartaVideoModal").on("hidden.bs.modal", function() {
                    var t = n("#spartaVideoModal iframe").attr("src");
                    t = t && t.indexOf("autoplay=1") > -1 ? t.replace("autoplay=1", "autoplay=0") : t.indexOf("?") == -1 ? t + "?autoplay=0" : t + "&autoplay=0";
                    n("#spartaVideoModal iframe").attr("src", t)
                })
        },
        eventBorders: function() {
            n("li.month").length && n(document).ready(function() {
                n("li.month").next("li").addClass("no-border")
            })
        },
        customCheck: function() {
            n(".form").length && (n(".label_check input").length && (n(".label_check").each(function() {
                n(this).removeClass("c_on");
                n(this).find("input[type=hidden]").val("false")
            }),
            n(".label_check input:checked").each(function() {
                n(this).parent("label").addClass("c_on");
                n(this).find("input[type=hidden]").val("true")
            })),
            n(".label_radio input").length && (n(".label_radio").each(function() {
                n(this).removeClass("r_on");
                n(this).find("input[type=hidden]").val("false")
            }),
            n(".label_radio input:checked").each(function() {
                n(this).parent("label").addClass("r_on");
                n(this).next("input[type=hidden]").val("true")
            })))
        },
        smoothScroll: function() {
            n(".smooth-scroll").length && n('a[href*="#"]:not([href="#"])').click(function() {
                if (location.pathname.replace(/^\//, "") == this.pathname.replace(/^\//, "") && location.hostname == this.hostname) {
                    var t = n(this.hash);
                    if (t = t.length ? t : n("[name=" + this.hash.slice(1) + "]"),
                    t.length)
                        return n("html, body").animate({
                            scrollTop: t.offset().top
                        }, 1e3),
                        !1
                }
            })
        },
        customSelect: function() {
            n(".selectric").length && (n("select").selectric(),
            n(".customOptions").selectric({
                optionsItemBuilder: function(n, t) {
                    return t.val().length ? '<span class="ico ico-' + t.val() + '"><\/span>' + n.text : n.text
                }
            }),
            n(".customLabel").selectric({
                labelBuilder: function(n) {
                    return "<strong><em>" + n.text + "<\/em><\/strong>"
                }
            }))
        },
        slideDownNav: function() {
            n(".more-info").length && (n("a.toggle").click(function(t) {
                n(this).next(".more-info").slideToggle(300);
                n(this).toggleClass("close-icon");
                var i = n(this).closest(".tab");
                i.hasClass("open") ? i.removeClass("open") : i.addClass("open");
                t.preventDefault()
            }),
            n("a.close-item").click(function(t) {
                n(".toggle").removeClass("close-icon");
                n(this).parent(".more-info").slideToggle(300);
                n(this).closest(".tab").removeClass("open");
                t.preventDefault()
            }))
        }
    };
    n().ready(function() {
        n("body").addClass("has-js");
        t.onReady();
        n(".label_check, .label_radio").filter(function() {
            return n(this).parents("li[data-area]").length == 0
        }).on("click", function() {
            t.customCheck()
        })
    })
}
)