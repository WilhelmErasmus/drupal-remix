; ┌────────────────────────────────────────────────────────────────────────────┐
; │       ______                                                               │
; │      //   ) )   Burtronix.co.za Drupal 7 Remix Profile                     │
; │     //___/ /            __    __  ___  __      ___       __     ( )        │
; │    / __  (   //   / / //  ) )  / /   //  ) ) //   ) ) //   ) ) / / \\ / /  │
; │   //    ) ) //   / / //       / /   //      //   / / //   / / / /   \/ /   │
; │  //____/ / ((___( ( //       / /   //      ((___/ / //   / / / /    / /\   │
; │                                                                            │
; └────────────────────────────────────────────────────────────────────────────┘
; ┌────────────────────────────────────────────────────────────────────────────┐
; │ Make Information                                                           │
; └────────────────────────────────────────────────────────────────────────────┘
    core                                         = 7.x
    api                                          = 2
    projects[drupal][version]                    = 7.23
; ┌────────────────────────────────────────────────────────────────────────────┐
; │ Configuration                                                              │
; └────────────────────────────────────────────────────────────────────────────┘
    defaults[projects][subdir]                   = contrib
; ┌────────────────────────────────────────────────────────────────────────────┐
; │ Modules                                                                    │
; └────────────────────────────────────────────────────────────────────────────┘
    projects[libraries][version]                 = 2.1
    projects[admin_views][version]               = 1.2
    projects[admin_menu][version]                = 3.0-rc4
    projects[auto_entitylabel][version]          = 1.2
    projects[better_formats][version]            = 1.0-beta1
    projects[block_class][version]               = 2.1
    projects[boxes][version]                     = 1.1
    projects[ccl][version]                       = 1.5
    projects[chrome_frame][version]              = 1.0-alpha2
    projects[computed_field][version]            = 1.0-beta1
    projects[context][version]                   = 3.0-beta7
    projects[context_admin][version]             = 1.2
    projects[ctools][version]                    = 1.3
    projects[custom_formatters][version]         = 2.2
    ; Remove Custom Formatters makefile to prevent duplicate downloads - http://drupal.org/node/1721294#comment-6395368
    projects[custom_formatters][patch][]         = http://drupal.org/files/no_makefile-1721294-1.patch
    projects[date][version]                      = 2.6
    projects[devel][version]                     = 1.3
    projects[diff][version]                      = 3.2
    projects[ds][version]                        = 2.6
    projects[email][version]                     = 1.2
    projects[entity][version]                    = 1.2
    projects[entitycache][version]               = 1.1
    projects[entityreference][version]           = 1.0
    projects[extlink][version]                   = 1.13
    projects[features][version]                  = 2.0-rc3
    projects[features_extra][version]            = 1.0-beta1
    projects[field_collection][version]          = 1.0-beta5
    projects[field_group][version]               = 1.2
    projects[filefield_paths][version]           = 1.0-beta4
    projects[fontyourface][version]              = 2.8
    projects[globalredirect][version]            = 1.5
    projects[google_analytics][version]          = 1.3
    projects[insert][version]                    = 1.3
    projects[jquery_update][version]             = 2.3
    projects[link][version]                      = 1.1
    projects[login_security][version]            = 1.7
    projects[logintoboggan][version]             = 1.3
    projects[menu_admin_per_menu][version]       = 1.0
    projects[menu_attributes][version]           = 1.0-rc2
    projects[menu_block][version]                = 2.3
    projects[metatag][version]                   = 1.0-beta7
    projects[module_filter][version]             = 1.8
    projects[node_export][version]               = 3.0
    projects[pagenotfound_reports][version]      = 1.2
    projects[panels][version]                    = 3.3
    projects[panels_breadcrumbs][version]        = 2.1
    projects[password_policy][version]           = 1.5
    projects[pathauto][version]                  = 1.2
    projects[porterstemmer][version]             = 1.0
    projects[redirect][version]                  = 1.0-rc1
    projects[schemaorg][version]                 = 1.0-beta3
    projects[simplified_menu_admin][version]     = 0
    projects[strongarm][version]                 = 2.0
    projects[styleguide][version]                = 1.1
    projects[token][version]                     = 1.5
    projects[token_formatters][version]          = 1.2
    projects[token_tweaks][version]              = 1.x-dev
    projects[transliteration][version]           = 3.1
    projects[uuid][version]                      = 1.0-alpha5
    projects[views][version]                     = 3.7
    projects[views_bulk_operations][version]     = 3.1
    projects[views_rss][version]                 = 2.0-rc3
    projects[views_slideshow][version]           = 3.0
    projects[webform][version]                   = 3.19
    projects[xmlsitemap][version]                = 2.0-rc2
; ┌────────────────────────────────────────────────────────────────────────────┐
; │ Themes                                                                     │
; └────────────────────────────────────────────────────────────────────────────┘
    projects[zen][version]                       = 5.4
    projects[zen_slate][subdir]                  = "custom"
    projects[zen_slate][type]                    = "theme"
    projects[zen_slate][download][type]          = "git"
    projects[zen_slate][download][url]           = "http://git.drupal.org/sandbox/nightwatch/1981700.git"
; ┌────────────────────────────────────────────────────────────────────────────┐
; │ Libraries - JQuery Cycle Plugin                                            │
; └────────────────────────────────────────────────────────────────────────────┘
    libraries[jquery.cycle][download][type]      = "get"
    libraries[jquery.cycle][download][url]       = "http://malsup.github.com/jquery.cycle.all.js"
    libraries[jquery.cycle][directory_name]      = "jquery.cycle"
    libraries[jquery.cycle][destination]         = "libraries"
; ┌────────────────────────────────────────────────────────────────────────────┐
; │ Libraries - JQuery Easing Plugin                                           │
; └────────────────────────────────────────────────────────────────────────────┘
    libraries[jquery.easing][download][type]     = "get"
    libraries[jquery.easing][download][url]      = "http://gsgd.co.uk/sandbox/jquery/easing/jquery.easing.1.3.js"
    libraries[jquery.easing][directory_name]     = "jquery.easing"
    libraries[jquery.easing][destination]        = "libraries"
