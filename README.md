#Resolvconf

####Table of Contents

1. [Overview](#overview)
2. [Module Description - What the module does and why it is useful](#module-description)
3. [Setup - The basics of getting started with resolvconf](#setup)
4. [Usage - Configuration options and additional functionality](#usage)
5. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
6. [Limitations - OS compatibility, etc.](#limitations)

##Overview

The resolvconf module manages your system's resolv.conf file.

##Module Description

The resolvconf module generates your resolv.conf file across multiple operating systems and distributions.

##Setup

###Beginning with resolvconf

`include '::resolvconf'` will be enough to get you rolling. If you would like to specify some nameservers, simply do:

```puppet
class { '::resolvconf':
  nameservers => [ '8.8.8.8', '8.8.4.4' ],
}
```

##Usage

All interaction with the resolvconf module can be done through the main resolvconf class. This means you can simply (and easily) mess with the options in `::resolvconf` to have full functionality of the module.

###I just want to manage resolvconf, what's the minimum I need?

By default, this will use Google's DNS servers (8.8.8.8 and 8.8.4.4)

```puppet
include '::resolvconf'
```

###I'd like to specify some custom nameservers

```puppet
class { '::resolvconf':
  nameservers => [ '8.8.8.8', '8.8.4.4' ],
}
```

###Well, how about specifying my serach domain?

```puppet
class { '::resolvconf':
  search_domain => 'example.com',
  nameservers   => [ '8.8.8.8', '8.8.4.4' ],
}
```

###Awesome! Can I change the file path?

```puppet
class { '::resolvconf':
  file_path     => '/path/to/resolv.conf',
  search_domain => 'example.com',
  nameservers   => [ '8.8.8.8', '8.8.4.4' ],
}
```

##Reference

###Classes

####Public Classes

* resolvconf: Main class, includes all other classes.

####Private Classes

* resolvconf::config: Handles the configuration file.
* resolvconf::install: Handles installing/removing the package(s).

###Parameters

The following parameters are available in the `::resolvconf` class:



####`package_ensure`

Some distributions (namely, Ubuntu and Debian) have a package, resolvconf, that helps you manage resolv.conf. This parameter allows you to control that package with the normal package resource states (installed, latest, purged). Default value: purged

####`package_name`

In relation to the above parameter, you can specify the name of the resolvconf package. Default value: 'resolvconf'

####`file_path`

The path to the system's resolv.conf file. Default value: '/etc/resolv.conf'

####`file_owner`

The owner of the resolv.conf file. Default value: 'root'

####`file_group`

The owner of the resolv.conf file. Default value: 'root'

####`file_mode`

The owner of the resolv.conf file. Default value: 'root'

####`file_template`

Specify the path to your custom resolv.conf template. Default value: resolvconf/resolv.conf.erb

####`file_header`

Line of text put at the beginning of the resolv.conf file. Set to false if you do not want this. Default value: '# This file is managed by the resolvconf Puppet module.'

####`search_domain`

The default search domain for your resolv.conf file. Set to false if you do not want this. Default value: 'example.com'

####`nameservers`

An array containing the IP addresses of the name servers you wish to use. Default value: [ '8.8.8.8', '8.8.4.4' ]


##Limitations

This module has been tested on Ubuntu, and no issues have been identified.


##License

This module is licensed under the Apache License 2.0

##Contact

brotherballantine@gmail.com

##Support

There's nothing official yet.
Just shoot me an email and I'll get to your request.

