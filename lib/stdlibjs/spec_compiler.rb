require 'stdlibjs/compiler'

class Stdlibjs::SpecCompiler < Stdlibjs::Compiler

  def self.javascripts_path
    Stdlibjs.spec_path
  end

  def initialize(*args)
    @compiler = Stdlibjs::Compiler.new(*args)
    specs = @compiler.resolved_libraries
    specs.map!{|library| library+'.spec' }.to_set
    super(libraries: specs)
  end

end
