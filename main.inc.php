<?php
/*
Version: 0.1
Plugin Name: 3dhop
Plugin URI: // link to the Piwigo extension gallery
Author: joeroe
Author URI: https://github.com/joeroe
Description: Plugin for viewing 3D models (.obj) using 3DHOP <http://www.3dhop.net>
*/

if (!defined('PHPWG_ROOT_PATH')) die('Hacking attempt!');

define('3DHOP_PATH', PHPWG_PLUGINS_PATH.basename(dirname(__FILE__)).'/');

global $conf;

// Supported file extensions
$3dhop_extensions = array('obj', 'ply', 'nxs');
$conf['file_ext'] = array_merge($conf['file_ext'], $3dhop_extensions);

// Event handlers
add_event_handler('render_element_content', '_3dhop_model_content', EVENT_HANDLER_PRIORITY_NEUTRAL, 2);

// Element content handler for 3D models 
function _3dhop_model_content($content, $element_info)
{
	global $conf, $template;
	
	# Configure viewer template
	$template->set_filenames(
		array('3dhop_content' => dirname(__FILE__)."/template/3dhop-viewer.tpl")
	);

	$template->assign(array(
		'3DHOP_FILES' => 3DHOP_PATH."3dhop-minimal"
	));

	# Render and return template
	$_3dhop_content = $template->parse('3dhop_content', true);
	return $_3dhop_content;
}

?>
