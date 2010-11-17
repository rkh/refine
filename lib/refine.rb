unless respond_to? :refine
  require 'set'

  module Refinement
    class << self
      attr_accessor :show_warnings
    end

    self.show_warnings = true

    module Refine
      append_features Module
  
      def refine(mod, &block)
        complain = Refinement.show_warnings
        Refinement.show_warnings = complain == :always
        warn "no #refine, polluting global namespace instead" if complain
        ext = Module.new(&block)
        if mod.respond_to? :prepend, true
          mod.send :prepend, ext
        else
          warn "no #prepend, changing inheritance order" if complain
          mod.send :include, ext
        end
      end
    end

    module Using
      append_features Object
      def using(*) end
    end
  end
end
