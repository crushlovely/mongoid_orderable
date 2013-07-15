module MongoidOrderable #:nodoc:
  module Mongoid #:nodoc:
    module Contextual #:nodoc:
      module Memory #:nodoc:
        def inc attribute, value
          each do |document|
            document.inc(attribute => value)
          end
        end
      end
    end
  end
end

Mongoid::Contextual::Memory.send :include, MongoidOrderable::Mongoid::Contextual::Memory
