class XmlDocument
  attr_reader :tag_name

  def initialize
    @tag_name = ""
  end

  def method_missing( method_name, args = {}, &block)

    method = lambda { method_name }

    if block_given?
      @tag_name = "<#{method.call}>#{yield}</#{method.call}>"
    elsif args.empty?
      @tag_name = "<#{method.call}/>"
    else
      args.each do |key, value|
         @tag_name = "<#{method.call} " + "#{key}='#{value}'/>"
      end
      @tag_name
    end
  end
end
