{html_head}
<!--3DHOP-->
<link type="text/css" rel="stylesheet" href="{$3DHOP_FILES}/stylesheet/3dhop.css"/>  
<script type="text/javascript" src="{$3DHOP_FILES}/js/spidergl.js"></script>
<script type="text/javascript" src="{$3DHOP_FILES}/js/jquery.js"></script>
<script type="text/javascript" src="{$3DHOP_FILES}/js/presenter.js"></script>
<script type="text/javascript" src="{$3DHOP_FILES}/js/nexus.js"></script>
<script type="text/javascript" src="{$3DHOP_FILES}/js/ply.js"></script>
<script type="text/javascript" src="{$3DHOP_FILES}/js/trackball_sphere.js"></script>
<script type="text/javascript" src="{$3DHOP_FILES}/js/trackball_turntable.js"></script>
<script type="text/javascript" src="{$3DHOP_FILES}/js/trackball_turntable_pan.js"></script>
<script type="text/javascript" src="{$3DHOP_FILES}/js/trackball_pantilt.js"></script>
<script type="text/javascript" src="{$3DHOP_FILES}/js/init.js"></script>
<script type="text/javascript">
var presenter = null;

function setup3dhop() { 
  presenter = new Presenter("draw-canvas");

  presenter.setScene({
    ...
  });
}
$(document).ready(function(){
  init3dhop();

  setup3dhop();
});
</script>
{/html_head}

{literal}
<div id="3dhop" class="tdhop" onmousedown="if (event.preventDefault) event.preventDefault()">
 <canvas id="draw-canvas" style="background-image: url({$3DHOP_FILES}/skins/backgrounds/light.jpg)"/>
</div>
</script>
{/literal}
