module CodyRobbins
  module EasierInstanceVariableAccess
    def get_instance_variable(name)
      instance_variable_get(instance_variable_name(name))
    end
    alias :instance_variable :get_instance_variable

    def set_instance_variable(name, value)
      instance_variable_set(instance_variable_name(name), value)
    end

    protected

    def instance_variable_name(name)
      "@#{name}"
    end
  end
end
