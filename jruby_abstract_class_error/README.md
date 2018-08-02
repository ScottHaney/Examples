# JrubyAbstractClassError

When creating a concrete implementation of an abstract Java class in JRuby there is a problem calling the concrete class's constructor through reflection. Doing this same thing with a concrete Java class works just fine. Both examples are compared against each other in ruby/jruby_abstract_class_error.rb.

Java source code is located in the 'java' folder. Ruby source code and the .class files compiled from the Java source code is located in the 'ruby' folder.

The code can be run by calling 'jruby jruby_abstract_class_error.rb' (version of jruby is 9.2.0.0).
