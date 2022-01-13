# Drum.study deployables

 - WordPresss theme and plugin as submodules
 - script to deploy them via sFTP

## Development

 - clone repo
 - init submodules
 - `git submodule update --init`
 - deploy
 - `sh deploy.sh`

Deploys theme, plugin and a `deploy.txt` with deploy date, which is stored in the site's root.

### Roadmap

 - either add excludes to lftp cmd or pre-build just the deployable files within GH action (currently includes vendor files, etc)
 - use lftp parallelisation if possible
 - headless JS browser to login and click publish button on Strattic 
 - delete remote files not in local dir on `lftp` sync (only if continuing to do mirror specific vs whole `wp-content`)
