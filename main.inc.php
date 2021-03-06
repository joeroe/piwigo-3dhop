<?php
/*
Version: 1.2
Plugin Name: 3dhop
Plugin URI: https://piwigo.org/ext/extension_view.php?eid=879
Author: joeroe
Author URI: https://github.com/joeroe
Description: Plugin for viewing 3D models using 3DHOP <http://www.3dhop.net>
*/

if (!defined('PHPWG_ROOT_PATH')) die('Hacking attempt!');

define('_3DHOP_PATH', PHPWG_PLUGINS_PATH.basename(dirname(__FILE__)).'/');
define('_3DHOP_URL', get_gallery_home_url()._3DHOP_PATH);

global $conf;

// File types
function get_3dhop_exts() {
	$exts = array('ply', 'nxs');
	return $exts;
}

function is_3dhop_ext($ext) 
{
	return in_array($ext, get_3dhop_exts());
}

$conf['file_ext'] = array_merge($conf['file_ext'], get_3dhop_exts());


// Event handlers
add_event_handler('render_element_content', '_3dhop_model_content', EVENT_HANDLER_PRIORITY_NEUTRAL, 2);

// Element content handler for 3D models 
function _3dhop_model_content($content, $element_info)
{
	global $conf, $template;

	# Do nothing if content is not a model
	if (!is_3dhop_ext(get_extension($element_info['path']))) {
		return $content;
	}

	# Configure viewer template
	$template->set_filenames(
		array('3dhop_content' => _3DHOP_PATH.'/template/3dhop-viewer.tpl')
	);

	$template->assign(array(
		'3DHOP_FILES' => _3DHOP_URL.'3dhop-minimal',
		'3DHOP_MODEL_URL' => $element_info['element_url']
	));

	# Render and return template
	$_3dhop_content = $template->parse('3dhop_content', true);
	return $_3dhop_content;
}

?>
