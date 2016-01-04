# Arvados Systemd Scripts

These Systemd scripts are created for [Arvados](https://github.com/curoverse/arvados), an open source platform for managing and analyzing biomedical big data.

The default daemon hypervisor mentioned in [installation document](http://doc.arvados.org/install/index.html) of Arvados is [runit](http://smarden.org/runit/). These scripts are intended to replace the runit on newer Linux redistributions (Debian Jessie, CentOS 7, etc.) who has deployed Systemd as its default bootstrap process.

### Usage

The scripts should be copied directly to its corresponding place.
Remember to issue a ```systemctl daemon-reload``` afterwards.

#### Notice

* This set of scripts has got rid of the [RVM](https://rvm.io/). RVM is a great tool for Ruby version control, but since this project is package-oriented, using RVM is not a good practice. Ruby 2.1.5 (the current version used by Arvados) should be included in repository as a dependency.

* The default target of this script is Debian system. If you are using it on CentOS, run ```switch2cent.sh``` to patch this project.

#### ```system``` directory

##### System Administrators

Put the service files in ```/etc/systemd/system/```.

##### Packagers

Put the service files in :
* CentOS like: ```%{_unitdir}```.
* Debian like: **(Missing direction here)**.

Note that the RPMs expect the initial status of unit files are _disabled_ by default, while DEBs usually _enable_ them automatically.

#### ```default``` directory

Put the config files in:

* Debian: ```/etc/default/```

* CentOS: ```/etc/sysconfig/```

and then change the varibles in the config file as appropriate.

Since the ```keepproxy``` file contains your API token, make sure it is not world readable.

### Licence

The project is licensed under _Apache License Version 2.0_, unless otherwise specified.

Some rights were granted to the _Arvados_ Project, including but not limited to modification, redistribution, and relicensing this project.
