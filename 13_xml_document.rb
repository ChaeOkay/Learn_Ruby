class XmlDocument
  attr_reader :tag_name

  def initialize(status = nil)
    @tag_name = ""
    @indent = status
    @s_start = 0
  end

  def method_missing( method_name, args = {}, &block)

    method = lambda { method_name }

    if block_given?
      if @indent == true
          #pattern - look at refactoring to block

          @s_start += 2

          @tag_name = "<#{method.call}>\n"
          @tag_name += ("\s"*@s_start)

          @tag_name += "#{yield}\n"

          @tag_name += ("\s"*(@s_start -= 2))
          @tag_name += "</#{method.call}>"

          #missing \n at last iteration -
          # add after block (before method return)
      else
        @tag_name = "<#{method.call}>#{yield}</#{method.call}>"
      end
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
