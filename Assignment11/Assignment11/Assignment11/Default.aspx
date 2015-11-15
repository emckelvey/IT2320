<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Assignment11.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
    <link rel="stylesheet" href="StyleSheet1.css" />
  <script>

      var colors = new Array(
        [62, 35, 255],
        [60, 255, 60],
        [255, 35, 98],
        [45, 175, 230],
        [255, 0, 255],
        [255, 128, 0]);

      var step = 0;
      //color table indices for: 
      // current color left
      // next color left
      // current color right
      // next color right
      var colorIndices = [0, 1, 2, 3];

      //transition speed
      var gradientSpeed = 0.002;

      function updateGradient() {

          if ($ === undefined) return;

          var c0_0 = colors[colorIndices[0]];
          var c0_1 = colors[colorIndices[1]];
          var c1_0 = colors[colorIndices[2]];
          var c1_1 = colors[colorIndices[3]];

          var istep = 1 - step;
          var r1 = Math.round(istep * c0_0[0] + step * c0_1[0]);
          var g1 = Math.round(istep * c0_0[1] + step * c0_1[1]);
          var b1 = Math.round(istep * c0_0[2] + step * c0_1[2]);
          var color1 = "rgb(" + r1 + "," + g1 + "," + b1 + ")";

          var r2 = Math.round(istep * c1_0[0] + step * c1_1[0]);
          var g2 = Math.round(istep * c1_0[1] + step * c1_1[1]);
          var b2 = Math.round(istep * c1_0[2] + step * c1_1[2]);
          var color2 = "rgb(" + r2 + "," + g2 + "," + b2 + ")";

          $('#gradient').css({
              background: "-webkit-gradient(linear, left top, right top, from(" + color1 + "), to(" + color2 + "))"
          }).css({
              background: "-moz-linear-gradient(left, " + color1 + " 0%, " + color2 + " 100%)"
          });

          step += gradientSpeed;
          if (step >= 1) {
              step %= 1;
              colorIndices[0] = colorIndices[1];
              colorIndices[2] = colorIndices[3];

              //pick two new target color indices
              //do not pick the same as the current one
              colorIndices[1] = (colorIndices[1] + Math.floor(1 + Math.random() * (colors.length - 1))) % colors.length;
              colorIndices[3] = (colorIndices[3] + Math.floor(1 + Math.random() * (colors.length - 1))) % colors.length;

          }
      }

      setInterval(updateGradient, 10);
  </script>
    <!---slide show below---->
    <script>
        (function () {

            function Slideshow(element) {
                this.el = document.querySelector(element);
                this.init();
            }

            Slideshow.prototype = {
                init: function () {
                    this.wrapper = this.el.querySelector(".slider-wrapper");
                    this.slides = this.el.querySelectorAll(".slide");
                    this.previous = this.el.querySelector(".slider-previous");
                    this.next = this.el.querySelector(".slider-next");
                    this.index = 0;
                    this.total = this.slides.length;
                    this.timer = null;

                    this.action();
                    this.stopStart();
                },
                _slideTo: function (slide) {
                    var currentSlide = this.slides[slide];
                    currentSlide.style.opacity = 1;

                    for (var i = 0; i < this.slides.length; i++) {
                        var slide = this.slides[i];
                        if (slide !== currentSlide) {
                            slide.style.opacity = 0;
                        }
                    }
                },
                action: function () {
                    var self = this;
                    self.timer = setInterval(function () {
                        self.index++;
                        if (self.index == self.slides.length) {
                            self.index = 0;
                        }
                        self._slideTo(self.index);

                    }, 3000);
                },
                stopStart: function () {
                    var self = this;
                    self.el.addEventListener("mouseover", function () {
                        clearInterval(self.timer);
                        self.timer = null;

                    }, false);
                    self.el.addEventListener("mouseout", function () {
                        self.action();

                    }, false);
                }


            };

            document.addEventListener("DOMContentLoaded", function () {

                var slider = new Slideshow("#main-slider");

            });


        })();

    </script>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
       <%-- <h3>Notice the changing background...pretty cool, huh!</h3>--%>
         <div id="gradient" />

        <div id="main" class="auto-style1">
  <div style="background-color:coral;"></div>
  <div style="background-color:lightblue;" id="myBlueDiv"></div>
  <div style="background-color:khaki;"></div>
</div>

       
    <div class="slider" id="main-slider"><!-- outermost container element -->
	<div class="slider-wrapper"><!-- innermost wrapper element -->
		<img src="http://lorempixel.com/1024/400/animals" alt="First" class="slide" /><!-- slides -->
		<img src="http://lorempixel.com/1024/400/business" alt="Second" class="slide" />
		<img src="http://lorempixel.com/1024/400/city" alt="Third" class="slide" />
	</div>
</div>	
    
    </div>
    </form>
</body>
</html>
