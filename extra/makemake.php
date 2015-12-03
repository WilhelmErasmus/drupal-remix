#!/usr/bin/php
<?php
# ┌────────────────────────────────────────────────────────────────────────────┐
# │       ______                                                               │
# │      //   ) )   Burtronix.co.za Drupal 7 Remix Make File Maker             │
# │     //___/ /            __    __  ___  __      ___       __     ( )        │
# │    / __  (   //   / / //  ) )  / /   //  ) ) //   ) ) //   ) ) / / \\ / /  │
# │   //    ) ) //   / / //       / /   //      //   / / //   / / / /   \/ /   │
# │  //____/ / ((___( ( //       / /   //      ((___/ / //   / / / /    / /\   │
# │                                                                            │
# └────────────────────────────────────────────────────────────────────────────┘

$make = file_get_contents('../remix.make');
$lines = explode("\n", $make);

$projects = array();
foreach ($lines as $line) {
  if (strpos($line, '[version]')) {
    $project = substr(trim($line), 9);
    $project = substr($project, 0, strpos($project, ']'));
    $projects[$project] = $project;
  }
}

sort($projects);
// $projects = array_slice($projects, 0, 3);

foreach ($projects as $n => $project) {
  print 'Processing project ' . str_pad($n + 1, 2, '0', STR_PAD_LEFT) . '/' . count($projects) . ', ' . $project . '...' . "\n";
  $cmd = 'drush rl ' . $project . ' --format=csv --fields=project,version,status --default-major=7';
  $releases = shell_exec($cmd);
  $releases = explode("\n", trim($releases));
  foreach ($releases as $release) {
    list($project, $version, $status) = str_getcsv($release);
    $version = (strpos($version, '-')) ? substr($version, strpos($version, '-') + 1) : $version;
    if (strpos($status, 'Recommended') !== FALSE) { $recommended[$project][] = $version; }
    if (strpos($status, 'Supported')   !== FALSE) { $supported[$project][]   = $version; }
  }
}

foreach ($lines as $line_number => $line) {

  // Core.
  if (strpos($line, 'core  ')) {

    $project = 'drupal';
    $line = substr($line, 0, strpos($line, '='));

    if (isset($recommended[$project])) {
      sort($recommended[$project]);
      $line = $line . '= ' . end($recommended[$project]);
    }
    elseif (isset($supported[$project])) {
      sort($supported[$project]);
      $line = $line . '= ' . end($supported[$project]);
    }
    else {
      $line = $line . '= ' . 'MANUALLY ADD';
    }

    $lines[$line_number] = $line;
  }

  // Projects.
  if (strpos($line, '[version]')) {

    $project = substr(trim($line), 9);
    $project = substr($project, 0, strpos($project, ']'));
    $line = substr($line, 0, strpos($line, '='));

    if (isset($recommended[$project])) {
      sort($recommended[$project]);
      $line = $line . '= ' . array_pop($recommended[$project]);
    }
    elseif (isset($supported[$project])) {
      sort($supported[$project]);
      $line = $line . '= ' . array_pop($supported[$project]);
    }
    else {
      $line = $line . '= ' . 'MANUALLY ADD';
    }

    $lines[$line_number] = $line;
  }
}
$make = implode("\n", $lines);

//print $make . "\n";
file_put_contents('../remix.make', $make);
