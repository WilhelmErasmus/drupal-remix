    ┌──────────────────────────────────────────────────────────────────────────┐
    │      ______                                                              │
    │     //   ) )   Burtronix.co.za Drupal 7 Remix Profile                    │
    │    //___/ /            __    __  ___  __      ___       __     ( )       │
    │   / __  (   //   / / //  ) )  / /   //  ) ) //   ) ) //   ) ) / / \\ / / │
    │  //    ) ) //   / / //       / /   //      //   / / //   / / / /   \/ /  │
    │ //____/ / ((___( ( //       / /   //      ((___/ / //   / / / /    / /\  │
    │                                                                          │
    └──────────────────────────────────────────────────────────────────────────┘

Description
===========
The Burtronix Drupal 7 Remix is a [Drupal](http://drupal.org) installation
profile that installs a new Drupal website with many useful modules, configuring
several of them in the process.

Requirements
============
- Meet the Drupal [system requirements](https://drupal.org/requirements).

- A working [drush](https://drupal.org/project/drush) installation.

- git.

Instructions
============

- Work in a folder where you want to install you Drupal Remix.

- Clone Drupal Remix:

    git clone git://github.com/RiaanBurger/drupal-remix.git
    
- You just want the profiles folder:

    mv drupal-remix/profiles ./
    rm -Rf drupal-remix/
    
- Now run drush make ont he profile:

    drush make profiles/remix/remix.make
    
- Access your website in the browser to complete your Drupal Remix installation.

- Update the website, run:

    drush up

Customize
=========
You can edit the remix.profile file to change the default language from English and location from South Africa to your own preference.
