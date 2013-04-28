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
    core       = 7.x
		api        = 2
		projects[] = drupal
; ┌────────────────────────────────────────────────────────────────────────────┐
; │ Configuration                                                              │
; └────────────────────────────────────────────────────────────────────────────┘
		defaults[projects][subdir] = contrib
; ┌────────────────────────────────────────────────────────────────────────────┐
; │ Modules                                                                    │
; └────────────────────────────────────────────────────────────────────────────┘
		projects[] = libraries
		projects[] = admin_views
		projects[] = admin_menu
		projects[] = auto_entitylabel
		projects[] = better_formats
		projects[] = ccl
		projects[] = chrome_frame
		projects[] = computed_field
		projects[] = context_admin
		projects[] = ctools
		projects[] = custom_formatters
		projects[] = date
		projects[] = devel
		projects[] = diff
		projects[] = ds
		projects[] = email
		projects[] = entity
		projects[] = entitycache
		projects[] = entityreference
		projects[] = extlink
		projects[] = field_collection
		projects[] = field_group
		projects[] = filefield_paths
		projects[] = fontyourface
		projects[] = globalredirect
		projects[] = google_analytics
		projects[] = insert
		projects[] = jquery_update
		projects[] = link
		projects[] = login_security
		projects[] = logintoboggan
		projects[] = menu_admin_per_menu
		projects[] = menu_attributes
		projects[] = menu_block
		projects[] = metatag
		projects[] = module_filter
		projects[] = pagenotfound_reports
		projects[] = panels
		projects[] = panels_breadcrumbs
		projects[] = password_policy
		projects[] = pathauto
		projects[] = porterstemmer
		projects[] = redirect
		projects[] = schemaorg
		projects[] = simplified_menu_admin
		projects[] = styleguide
		projects[] = token
		projects[] = token_formatters
		projects[] = token_tweaks
		projects[] = transliteration
		projects[] = views
		projects[] = views_bulk_operations
		projects[] = views_rss
		projects[] = views_slideshow
		projects[] = webform
		projects[] = xmlsitemap
; ┌────────────────────────────────────────────────────────────────────────────┐
; │ Themes                                                                     │
; └────────────────────────────────────────────────────────────────────────────┘
		projects[] = zen
		projects[zen_slate][subdir]         = "custom"
		projects[zen_slate][type]           = "theme"
    projects[zen_slate][download][type] = "git"
    projects[zen_slate][download][url]  = "nightwatch@git.drupal.org:sandbox/nightwatch/1981700.git"
; ┌────────────────────────────────────────────────────────────────────────────┐
; │ Libraries - JQuery Cycle Plugin                                            │
; └────────────────────────────────────────────────────────────────────────────┘
		libraries[jquery.cycle][download][type]  = "get"
		libraries[jquery.cycle][download][url]   = "http://malsup.github.com/jquery.cycle.all.js"
		libraries[jquery.cycle][directory_name]  = "jquery.cycle"
		libraries[jquery.cycle][destination]     = "libraries"
; ┌────────────────────────────────────────────────────────────────────────────┐
; │ Libraries - JQuery Easing Plugin                                           │
; └────────────────────────────────────────────────────────────────────────────┘
		libraries[jquery.easing][download][type] = "get"
		libraries[jquery.easing][download][url]  = "http://gsgd.co.uk/sandbox/jquery/easing/jquery.easing.1.3.js"
		libraries[jquery.easing][directory_name] = "jquery.easing"
		libraries[jquery.easing][destination]    = "libraries"
