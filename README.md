# Arvados Systemd Scripts

These Systemd scripts are created for [Arvados](https://github.com/curoverse/arvados), an open source platform for managing and analyzing biomedical big data.

The default daemon hypervisor mentioned in [installation document](http://doc.arvados.org/install/index.html) of Arvados is [runit](http://smarden.org/runit/). These scripts are intended to replace the runit on newer Linux redistributions (Debian Jessie, CentOS 7, etc.) who has deployed Systemd as its default bootstrap process.

### Usage

The scripts should be copied directly to its corresponding place.
Remember to issue a ```systemctl daemon-reload``` afterwards.

#### Notice

* This set of scripts has got rid of the [RVM](https://rvm.io/). RVM is a great tool for Ruby version control, but since this project is package-oriented, using RVM is not a good practice. Ruby 2.1.5 (the current version used by Arvados) should be included in repository as a dependency.

* The default target of this script is Debian system. You need to change some redistribution-related path in unit files (see belowing). Automatic switching script is under development.

#### ```system``` directory

##### System Administrators

Put the service files in ```/etc/systemd/system/```.

##### Packagers

Put the service files in ```/usr/lib/systemd/system/```.

The RPMs expect the initial status of unit files are ```disabled``` by default, while Debs usually ```enable``` them automatically.

#### ```default``` directory

Put the config files in:

* Debian: ```/etc/default/```

* CentOS: ```/etc/sysconfig/```

and then change the varibles ini the config file as appropriate.

### Licence

The project is licensed under Apache License Version 2.0, unless otherwise specified.

Some rights is granted to the Arvados project, including but not limited to modification, redistribution, and relicensing this project.
