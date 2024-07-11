AppConfig[:pui_branding_img] = '/assets/images/logo.png'
AppConfig[:pui_branding_img_alt_text] = 'GW Libraries & Academic Innovation'
AppConfig[:pui_footer_img] = '/assets/images/gw_iddol_libraries_2c-320.png'
AppConfig[:pui_main_img] = '/assets/images/gw_primary_2c_rev.png'

## The following determine which 'tabs' are on the main horizontal menu
#AppConfig[:pui_hide] = {}
AppConfig[:pui_hide][:repositories] = true
#AppConfig[:pui_hide][:resources] = false
AppConfig[:pui_hide][:digital_objects] = true
AppConfig[:pui_hide][:accessions] = true
#AppConfig[:pui_hide][:subjects] = false
#AppConfig[:pui_hide][:agents] = false
AppConfig[:pui_hide][:classifications] = true
#AppConfig[:pui_hide][:search_tab] = false

## Enable / disable PUI resource/archival object page actions
AppConfig[:pui_page_actions_cite] = false
#AppConfig[:pui_page_actions_bookmark] = true
AppConfig[:pui_page_actions_request] = false
#AppConfig[:pui_page_actions_print] = true
