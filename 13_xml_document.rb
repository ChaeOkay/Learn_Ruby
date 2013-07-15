require 'builder'

class XmlDocument

  def initialize(indent = nil)
  end

  def method_missing( method_name, args = {}, &block)
    builder = Builder::XmlMarkup.new

    if args.empty?
      @msg = method_name
    else
      args.each do |key, value|
         @msg = "#{method_name} " + "#{key}='#{value}'"
      end
      @msg
    end
    builder.tag!(@msg)
  end

end
