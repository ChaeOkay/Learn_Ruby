class XmlDocument
  attr_reader :tag_name

  def initialize
    @tag_name = ""
  end

  def method_missing( method_name, args = {}, &block)

    method = lambda { method_name }

    if args.empty?
      @tag_name = "<#{method.call}/>"
    else
      args.each do |key, value|
         @tag_name = "<#{method.call} " + "#{key}='#{value}'/>"
      end
      @tag_name
    end
  end
end


#lambda - method name
#lambda = args => block should parse data to string - create
#&block - check if/else statement block_given?
