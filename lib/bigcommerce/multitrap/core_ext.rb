# frozen_string_literal: true

case RUBY_ENGINE
when 'ruby'
  [Kernel, Kernel.singleton_class, Signal, Signal.singleton_class].each do |klass|
    klass.__send__(:include, Bigcommerce::Multitrap::PatchedTrap)
  end
when 'rbx'
  Signal.__send__(:include, Bigcommerce::Multitrap::PatchedTrap)
  Signal.singleton_class.__send__(:include, Bigcommerce::Multitrap::PatchedTrap)
when 'jruby'
  Signal.singleton_class.__send__(:include, Bigcommerce::Multitrap::PatchedTrap)
end
