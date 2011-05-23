Easier Instance Variable Access
===============================

Ruby’s built-in [`Object#instance_variable_get`](http://ruby-doc.org/core/classes/Object.html#M001028) and [`#instance_variable_set`](http://ruby-doc.org/core/classes/Object.html#M001029) methods are clunky to use because you have to unnecessarily prepend an ‘@’ to the name of the instance variable you pass in—which usually leads to much less readable code in the contexts in which I tend to use these methods. On top of that, they’re poorly named: the method names don’t read like English.

This gem adds two methods to `Object` that fix these problems: `instance_variable` method to replace `instance_variable_get` and `set_instance_variable` method to replace `instance_variable_set`.

Full documentation is at [RubyDoc.info](http://rubydoc.info/gems/easier-instance-variable-access).

Examples
--------

These methods are only available within an instance of a class—like the corresponding built-in Ruby methods—so the following examples are given in that context.

### The usual Ruby way

    instance_variable_get('@user')
    instance_variable_set('@user', new_value)

    name = :user
    instance_variable_get("@#{name}")
    instance_variable_set("@#{name}", new_value)

### Using `easier-instance-variable-access`

    instance_variable(:user)
    set_instance_variable(:user, new_value)

    name = :user
    instance_variable(name)
    set_instance_variable(name, new_value)

Tested with
-----------

* Ruby 1.9.2-p180 — 20 May 2011.

Credits
-------

© 2011 [Cody Robbins](http://codyrobbins.com/)

* [Homepage](http://codyrobbins.com/software/easier-instance-variable-access)
* [Follow me on Twitter](http://twitter.com/codyrobbins)