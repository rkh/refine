Allows you to use `refine` in older Ruby versions. It will simply fall back to
`prepend` if available, to `include` otherwise (read: you will still pollute
global scope).

## Installation

    gem install refine

## Example

    require 'refine' if RUBY_VERSION < '2.0'

    module PassiveSupport
      refine String do
        def underscore
          # ...
        end
        
        def camel_case
          # ...
        end
      end
      
      refine Module do
        def parent
          # ...
        end
      end
    end
    
    class MyFancyApp
      using PassiveSupport
    end