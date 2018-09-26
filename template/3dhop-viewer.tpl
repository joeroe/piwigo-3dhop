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
    meshes: {
      "Mesh": {
        url: "{$3DHOP_MODEL_URL}"
      }
    },
    modelInstances: {
      "Model1": {
        mesh: "Mesh"
      }
    }
  });
}

function actionsToolbar(action) {
  if(action=='home')
    presenter.resetTrackball();
  else if(action=='zoomin') 
    presenter.zoomIn();
  else if(action=='zoomout') 
    presenter.zoomOut(); 
  else if(action=='light' || action=='light_on') { 
    presenter.enableLightTrackball(!presenter.isLightTrackballEnabled()); lightSwitch(); } 
  else if(action=='full'  || action=='full_on') 
    fullscreenSwitch(); 
}

$(document).ready(function(){
  init3dhop();

  setup3dhop();
});
</script>
{/html_head}

<div id="3dhop" class="tdhop" onmousedown="if (event.preventDefault) event.preventDefault()">
	<div id="toolbar">
		<img id="home" title="Reset view" src="{$3DHOP_FILES}/skins/dark/orthographic.png" /><br />
		<img id="zoomin" title="Zoom In" src="{$3DHOP_FILES}/skins/dark/zoomin.png" /><br/>
		<img id="zoomout" title="Zoom Out" src="{$3DHOP_FILES}/skins/dark/zoomout.png" /><br/>
		<img id="light_on" title="Disable Light Control" src="{$3DHOP_FILES}/skins/dark/lightcontrol_on.png" style="position:absolute; visibility:hidden;"/>
		<img id="light" title="Enable Light Control" src="{$3DHOP_FILES}/skins/dark/lightcontrol.png" /><br/>
		<img id="full_on" title="Exit Full Screen" src="{$3DHOP_FILES}/skins/dark/full_on.png" style="position:absolute; visibility:hidden;"/>
		<img id="full" title="Full Screen" src="{$3DHOP_FILES}/skins/dark/full.png" />
	</div>       
	<canvas id="draw-canvas"/>
</div>
