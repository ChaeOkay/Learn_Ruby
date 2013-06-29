class Friend
  def greeting(message = nil)
    message.nil? ? "Hello!" : "Hello, #{message}!"
  end
end