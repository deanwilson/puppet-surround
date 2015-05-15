puppet-surround
===============

The surround() function adds a prefix and a suffix to either the string
or each element of the array it is passed as a first argument.

A basic string example:

    surround('mystring', '+', '=')
    # +mystring=

and working on an array:

    surround(['a','b','c'], 'pre-', '-post')
    # [ 'pre-a-post', 'pre-b-post' 'pre-c-post' ]

A quick comparison of using surroud vs using stdlib:

    surround( $mystring, '!', '!')

    suffix( prefix( $mystring, '!'), '!')
