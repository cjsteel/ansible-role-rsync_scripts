# local system variables
SOURCE_DIR={{ rsync_script_users_local_home }}/
EXCLUDES_FILE_PATH={{ rsync_script_users_local_home }}/bin/rsync-home2server-excludes.txt

# remote system variables
TARGET_SERVER={{ rsync_script_backup_server }}
TARGET_DIR={{ rsync_script_user_home_on_server }}

rsync -a -H -P --exclude-from=${EXCLUDES_FILE_PATH} $SOURCE_DIR/ ${TARGET_SERVER:${TARGET_DIR}

