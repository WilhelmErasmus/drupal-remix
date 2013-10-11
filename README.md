Drupal Remix
============
Drupal 7 Remix is a [Drupal](http://drupal.org) installation
profile that installs a new Drupal website with many useful modules, configuring
several of them in the process.

Requirements
============
- Meet the Drupal [system requirements](https://drupal.org/requirements).
- A working [drush](https://drupal.org/project/drush) installation.
- git.

Instructions
============

- Work in a folder where you want to install your Drupal Remix.

- Run all this as one pasted command:

```
drush make \
  https://raw.github.com/RiaanBurger/drupal-remix/master/extra/build-remix.make \
  -y --prepare-install \
  && rm -rf sites/all/{modules,themes} \
  && mv profiles/remix/{libraries,modules,themes} sites/all/
```
- Access your website in the browser to complete your Drupal Remix installation.

