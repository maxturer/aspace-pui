# GW Libraries ArchivesSpace Public User Interface

The GW Libraries ArchivesSpace PUI customization files and documentation can be found in this repo.

## Version
These configurations have been tested with ArchivesSpace [version 2.3.2](https://github.com/archivesspace/archivesspace/releases/tag/v2.3.2) and [version 2.5.2](https://github.com/archivesspace/archivesspace/releases/tag/v2.5.2).


# Edits were made in two areas for the PUI:
1. Configurations to the core code configuration file config.rb, found at /path/to/aspace/config/config.rb. These configurations are described below.
2. Customizations to the built-in "local" plugin, specifically its "public" directory, found at /path/to/aspace/plugins/local/public/. These customized files are located in this repo's/public/ directory, and are also described below.

## 1. Config.rb
```
=## The following determine which 'tabs' are on the main horizontal menu
AppConfig[:pui_hide][:repositories] = true
AppConfig[:pui_hide][:digital_objects] = true
AppConfig[:pui_hide][:accessions] = true
AppConfig[:pui_hide][:classifications] = true


## Enable / disable PUI resource/archival object page actions
AppConfig[:pui_page_actions_cite] = false
AppConfig[:pui_page_actions_request] = false

## Set GW logo as branding image
AppConfig[:pui_branding_img] = '/assets/images/logo.png'

## Place sidebar on the left side of the page
AppConfig[:pui_collection_org_sidebar_position] = 'left'
```

## 2. Local plugin
GW uses the built-in "local" plugin to customize the public portal of ArchivesSpace. All of the files that we added to this plugin are in this repo, and described below.
* assets/custom.css - custom CSS file, which overwrites the default styling. Explanations for each overwrite are in the custom.css file itself.
* assets/fonts - Gibson font (GW standard)
* assets/images - logo image files, to replace the default ArchivesSpace logo and add representational images to footer
* assets/js/gw-scripts.js - javascript fiel that adds a message to certain pages (based on URL) with instructions for requesting boxes. linked from views/layouts/application.html.erb
* locales/en.yml - Ruby on Rails vocabulary file, where we set the header title, welcome text on home page, and other standard vocabulary terms throughout the site. Having this file in the plugin overwrites the equivalent file in the core code. 
* views/shared/_footer.html.erb - customized footer, which is based on and overwrites the equivalent file in the core code. 
* views/shared/_header.html.erb - customized header, which is based on and overwrites the equivalent file in the core code. 
* views/layout_head.html.erb - this file is used to "activate" the custom css file
