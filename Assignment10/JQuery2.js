jQuery(document).ready(function() {

	// "Globals" - Will make things compress mo-betta
	var $random = function(x) { return Math.random() * x; };
	var availableWidth = 400, availableHeight = 40;
	
	// Get the proper CSS prefix
	if(jQuery.browser.webkit) {
		cssPrefix = "webkit";
	}
	else if(jQuery.browser.mozilla) {
		cssPrefix = "moz";
	}
	else if(jQuery.browser.opera) {
		cssPrefix = "o";
	}

	// Apply opacity
	var zIndex = 1000;
	
	// RandomizeHTML  CSS  JS  Result
Edit on 
var $box = $("#box"),
    $field = $("#field"),
    rotation = 0,
    rotationX = 0, 
    rotationY = 0,
    wanderTween, ignoreRollovers;

//set a perspective on the container so we can see the 3D-ness
TweenLite.set($field, {perspective: 500});
//offset the origin on the z-axis to make the spins more interesting.
TweenLite.set($box, {transformOrigin:"center center -150px"});
//pulsate the box using scaleX and scaleY
TweenMax.to($box, 1.2, {scaleX:0.8, scaleY:0.8, force3D:true, yoyo:true, repeat:-1, ease:Power1.easeInOut});

//on rollover, rotate the box but to avoid excessive spinning, we'll desensitize rollovers during the first second of animation.
$box.hover(function() {
  if (!ignoreRollovers) {
    rotation += 360;
    ignoreRollovers = true;
    TweenLite.to($box, 2, {rotation:rotation, ease:Elastic.easeOut});
    TweenLite.delayedCall(1, function() {
      ignoreRollovers = false;
    });
  }
}, function() {});

$("#rotation").click(function() {
  rotation += 360;
  TweenLite.to($box, 2, {rotation:rotation, ease:Elastic.easeOut});
});

$("#rotationX").click(function() {
  rotationX += 360;
  TweenLite.to($box, 2, {rotationX:rotationX, ease:Power2.easeOut});
});

$("#rotationY").click(function() {
  rotationY += 360;
  TweenLite.to($box, 2, {rotationY:rotationY, ease:Power1.easeInOut});
});

$("#move").click(function() {
  if (wanderTween) {
    wanderTween.kill();
    wanderTween = null;
    TweenLite.to($box, 0.5, {x:0, y:0});
  } else {
    wander();
  }
});

//randomly choose a place on the screen and animate there, then do it again, and again.
function wander() {
  var x = (($field.width() - $box.width()) / 2) * (Math.random() * 1.8 - 0.9),
      y = (($field.height() - $box.height()) / 2) * (Math.random() * 1.4 - 0.7);
  wanderTween = TweenLite.to($box, 2.5, {x:x, y:y, ease:Power1.easeInOut, onComplete:wander});
} each link
	jQuery.each(jQuery("#followIcons a"),function(index) {
		var startDeg = $random(360);
		var element = jQuery(this);
		var resetPlace = function() {
			element.fadeTo(250,0.6).css("-" + cssPrefix + "-transform","rotate(" + startDeg + "deg)");
		};
		element.attr("style","top:" + $random(availableHeight) + "px; left:" + $random(availableWidth) + "px; z-index:" + zIndex).hover(function() {
			element.fadeTo(250,1).css("zIndex",++zIndex).css("-" + cssPrefix + "-transform","rotate(0deg)");
		},resetPlace);
		resetPlace();
	});
	
});