# encoding: UTF-8

module CodyRobbins
  module EasierInstanceVariableAccess
    # Returns the value of the specified instance variable, just like `Object#instance_variable_get`.
    #
    # @return The value of the specified instance variable.
    # @param name [Symbol, String] The name of the instance variable to retrieve—without the leading ‘@’.
    #
    # @example
    #    # The usual Ruby way.
    #    instance_variable_get('@user')
    #
    #    # Using easier-instance-variable-access.
    #    instance_variable(:user)
    def instance_variable(name)
      instance_variable_get(instance_variable_name(name))
    end
    alias :get_instance_variable :instance_variable

    # Sets the value of the specified instance variable, just like `Object#instance_variable_set`.
    #
    # @param name [Symbol, String] The name of the instance variable to set—without the leading ‘@’.
    # @param value The value to set the specified instance variable to.
    #
    # @example
    #    # The usual Ruby way.
    #    instance_variable_set('@user', new_value)
    #
    #    # Using easier-instance-variable-access.
    #    set_instance_variable(:user, new_value)
    def set_instance_variable(name, value)
      instance_variable_set(instance_variable_name(name), value)
    end

    protected

    def instance_variable_name(name)
      "@#{name}"
    end
  end
end
