# puppet-surround #

The surround() function adds a prefix and a suffix to the string
or each element of the array it is passed as a first argument.

[![Build Status](https://travis-ci.org/deanwilson/puppet-surround.svg?branch=master)](https://travis-ci.org/deanwilson/puppet-surround)
[![Puppet Forge](https://img.shields.io/puppetforge/v/deanwilson/puppet-surround.svg)](https://forge.puppetlabs.com/deanwilson/puppet-surround)


A basic string example:

    surround('mystring', '+', '=')
    # +mystring=

and working on an array:

    surround(['a','b','c'], 'pre-', '-post')
    # [ 'pre-a-post', 'pre-b-post' 'pre-c-post' ]

A quick comparison of using surround vs using stdlib:

    surround( $mystring, '!', '!')

    suffix( prefix( $mystring, '!'), '!')

### License ###

GPL v2.0 - [Dean Wilson](http://www.unixdaemon.net)
