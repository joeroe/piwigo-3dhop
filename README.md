# piwigo-3dhop

`piwigo-3dhop` is a plugin for [Piwigo](https://piwigo.org) that allows 3D models to be added to galleries and viewed using [3DHOP](http://www.3dhop.net).

3DHOP currently supports models in `.ply` and `.nxs` format. Other files may be added to Piwigo using the "multiple formats" functionality but cannot be viewed directly.
 
## Installation

### From Piwigo 

The easiest way to install the plugin is from within Piwigo. Search for '3dhop' in the plugin manager, click 'install', and then 'activate now'.

### From GitHub (development version)

To use the latest development version of the plugin, you can clone this repository directly into the `plugins` directory of your Piwigo installation.

```
cd <PATH_TO_PIWIGO>/plugins 
git clone https://github.com/joeroe/piwigo-3dhop.git 3dhop
```

Alternatively, download the repository using the link above and unzip it to `plugins/3dhop`.

## Usage

Enable the '3dhop' plugin in your Piwigo admin interface. You can then add models to the gallery using file synchronisation (FTP) or the upload tool. 

Note that the plugin currently cannot generate thumbnails of 3D models on album pages, etc.
