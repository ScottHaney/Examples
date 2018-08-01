require 'java'
$CLASSPATH << 'java_classes'

module JrubyAbstractClassError
  include_package 'com.almondbranchsoftware.jruby_abstract_class'

  class JrubyConcreteClass < SimpleAbstractClass
  end

  # Making an empty class that derives from the abstract class in java code works
  java_concrete_instance = SimpleConcreteClass.java_class.constructor.new_instance

  # But making that same empty class in jruby gives an error
  # Message is: 'TypeError: can't make instance of com.almondbranchsoftware.jruby_abstract_class.SimpleAbstractClass'
  # (when run with jruby 9.2.0.0)
  jruby_concrete_instance = JrubyConcreteClass.java_class.constructor.new_instance
end
