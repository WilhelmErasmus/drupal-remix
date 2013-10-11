<?php
//┌────────────────────────────────────────────────────────────────────────────┐
//│       ______                                                               │
//│      //   ) )   Burtronix.co.za Drupal 7 Remix Profile                     │
//│     //___/ /            __    __  ___  __      ___       __     ( )        │
//│    / __  (   //   / / //  ) )  / /   //  ) ) //   ) ) //   ) ) / / \\ / /  │
//│   //    ) ) //   / / //       / /   //      //   / / //   / / / /   \/ /   │
//│  //____/ / ((___( ( //       / /   //      ((___/ / //   / / / /    / /\   │
//│                                                                            │
//└────────────────────────────────────────────────────────────────────────────┘

function remix_install_tasks_alter(&$tasks, $install_state) {
  // Hide the database configuration step.
  $tasks['install_settings_form']['display'] = FALSE;
  $tasks['install_settings_form']['function'] = 'remix_install_settings_form';

  if (!isset($_GET['locale'])) $_POST['locale'] = 'en';
}

function remix_form_install_configure_form_alter(&$form, $form_state) {
  $form['site_information']['site_name']['#default_value'] = 'Drupal Remix';
  $form['site_information']['site_mail']['#default_value'] = '';
  $form['site_information']['site_mail']['#description']   = '';

  $form['admin_account']['account']['name']['#default_value'] = 'Administrator';
  $form['admin_account']['account']['name']['#description']   = '';
  $form['admin_account']['account']['mail']['#default_value'] = '';

  $form['server_settings']['#collapsible'] = TRUE;
  $form['server_settings']['#collapsed'] = TRUE;
  $form['server_settings']['site_default_country']['#default_value'] = 'ZA';
  $form['server_settings']['date_default_timezone']['#default_value'] = 'Africa/Johannesburg';
  unset($form['server_settings']['date_default_timezone']['#attributes']);

  $form['update_notifications']['#collapsible'] = TRUE;
  $form['update_notifications']['#collapsed'] = TRUE;
}

function remix_install_settings_form($form, &$form_state, &$install_state) {
  $form = install_settings_form($form, $form_state, $install_state);

  $form['driver'] = array('#type' => 'hidden', '#value' => 'mysql');
  $form['settings']['mysql']['database']['#title'] = 'MySQL Database Name';
  $form['settings']['mysql']['database']['#description'] = '';
  $form['settings']['mysql']['username']['#title'] = 'MySQL Username';
  $form['settings']['mysql']['password']['#title'] = 'MySQL Password';
  $form['settings']['mysql']['host'] = $form['settings']['mysql']['advanced_options']['host'];
  $form['settings']['mysql']['host']['#title'] = 'MySQL Host';
  $form['settings']['mysql']['host']['#description'] = '';
  unset($form['settings']['mysql']['advanced_options']['host']);
  $form['settings']['mysql']['advanced_options']['#attributes'] = array('style' => array('display: none;'));

  return $form;
}

function remix_install_settings_form_validate($form, &$form_state) {

  install_settings_form_validate($form, $form_state);
}

function remix_install_settings_form_submit($form, &$form_state) {

  install_settings_form_submit($form, $form_state);
}
