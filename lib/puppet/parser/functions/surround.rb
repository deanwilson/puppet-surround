Puppet::Parser::Functions.newfunction(:surround, :type => :rvalue, :doc => <<-EOD

  The surround() function adds a prefix and a suffix to either the string
  or each element of the array it is passed as a first argument.

    surround('mystring', '+', '=')
    # +mystring=

    surround(['a','b','c'], 'pre-', '-post')
    # [ 'pre-a-post', 'pre-b-post' 'pre-c-post' ]

  A quick comparison of using surroud vs using stdlib:

    surround( $mystring, '!', '!')
    suffix( prefix( $mystring, '!'), '!')

  EOD
  ) do |args|

  if args.length != 3
    raise ArgumentError, "surround(): Wrong number of arguments " +
                         "expected surround(<value>, <prefix>, <suffix>)"
  end

  original, prefix, suffix = args
  result = nil

  if original.is_a?(String)
    result = prefix.to_s + original.to_s + suffix.to_s
  elsif original.is_a?(Array)
    result = original.collect do |i|
      prefix.to_s + i.to_s + suffix.to_s
    end
  else
    raise ArgumentError, "surround(): expected first argument to be an " +
                         "Array or String, got #{original.inspect}"
  end

  result
end
