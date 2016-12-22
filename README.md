Role Name
=========

A brief description of the role goes here.

Requirements
------------

Any pre-requisites that may not be covered by Ansible itself or the role should be mentioned here. For instance, if the role uses the EC2 module, it may be a good idea to mention in this section that the boto package is required.

Role Variables
--------------

### rsync_scripts/defaults/main.yml

You probably want to edit a copy this file in group_vars/rsync_scripts/rsync_scripts_defaults.yml so your edits do not get commited with the project

#### rsync_scripts/defaults/main.yml Example:

```yaml

---
# defaults file for rsync_scripts

rsync_script_users_local_home    : '/home/<user_name>'
rsync_script_backup_server       : 'my.backup.server'
rsync_script_user_home_on_server : {{ rsync_script_users_local_home }}

```

#### Example creating an edited copy in group_vars/rsync_scripts/rsync_scripts_defaults.yml

```command

cp roles/rsync_scripts/defaults/main.yml group_vars/rsync_scripts/rsync_scripts_defaults.yml
nano group_vars/rsync_scripts/rsync_scripts_defaults.ym

```

##### Content example

---
# defaults file for rsync_scripts

rsync_script_users_local_home    : '/home/marcus'
rsync_script_backup_server       : 'marcuss_server'
rsync_script_user_home_on_server : {{ rsync_script_users_local_home }}

```

A description of the settable variables for this role should go here, including any variables that are in defaults/main.yml, vars/main.yml, and any variables that can/should be set via parameters to the role. Any variables that are read from other roles and/or the global scope (ie. hostvars, group vars, etc.) should be mentioned here as well.

Dependencies
------------

A list of other roles hosted on Galaxy should go here, plus any details in regards to parameters that may need to be set for other roles, or variables that are used from other roles.

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - { role: username.rolename, x: 42 }

License
-------

BSD

Author Information
------------------

An optional section for the role authors to include contact information, or a website (HTML is not allowed).
