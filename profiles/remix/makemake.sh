#!/bin/bash
# ┌────────────────────────────────────────────────────────────────────────────┐
# │       ______                                                               │
# │      //   ) )   Burtronix.co.za Drupal 7 Remix Make File Maker             │
# │     //___/ /            __    __  ___  __      ___       __     ( )        │
# │    / __  (   //   / / //  ) )  / /   //  ) ) //   ) ) //   ) ) / / \\ / /  │
# │   //    ) ) //   / / //       / /   //      //   / / //   / / / /   \/ /   │
# │  //____/ / ((___( ( //       / /   //      ((___/ / //   / / / /    / /\   │
# │                                                                            │
# └────────────────────────────────────────────────────────────────────────────┘
# ┌────────────────────────────────────────────────────────────────────────────┐
# │ Obtain a list of projects for which versions are needed.                   │
# └────────────────────────────────────────────────────────────────────────────┘
mapfile -t lines < remix.make.template
projects=()
for line in "${lines[@]}"; do
  if [[ "${line}" == *version* ]]; then
    project="${line}"
    project=${project#*projects\[}
    project=${project%%\]*}
    #echo "${project}"
    projects+=("${project}")
  fi
done
# ┌────────────────────────────────────────────────────────────────────────────┐
# │ Obtain a list of recommended versions for the projects.                    │
# └────────────────────────────────────────────────────────────────────────────┘
IFS=$'\n'
declare -A versions
drush_rl_lines=( $(drush rl ${projects[@]}) )
for line in "${drush_rl_lines[@]}"; do
  if [[ "${line}" == *RELEASES* ]]; then
    project="${line}"
    project="${project#*\'}"
    project="${project%%\'*}"
    project="${project,,}"
    #echo "project: ${project}"
  fi
  if [[ "${line}" == *Recommended* ]]; then
    version="${line}"
    version="${version#*\ }"
    version="${version%%\ *}"
    version="${version#*-}"
    #echo "version: ${version}"
    versions["${project}"]="${version}"
  fi
done
# ┌────────────────────────────────────────────────────────────────────────────┐
# │ Generate the make file.                                                    │
# └────────────────────────────────────────────────────────────────────────────┘
makelines=()
for line in "${lines[@]}"; do
  if [[ "${line}" == *version* ]]; then
    project="${line}"
    project=${project#*projects\[}
    project=${project%%\]*}
    #echo "${project}"
    projects+=("${project}")
    version="${versions[${project}]}"
    if [[ "${version}" == '' ]]; then
      makelines+=("${line} 0")
    else
      makelines+=("${line} ${versions[${project}]}")
    fi
  else
    makelines+=("${line}")
  fi
done

IFS=$'\n'
echo "${makelines[*]}" > remix.make
