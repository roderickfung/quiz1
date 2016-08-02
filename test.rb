module HelperMethods
  def titleize(title)
    ignore = ["in","the","of","and","or","from"]
    title = title.split(" ").each{|i| i.capitalize! if ! ignore.include? i }.join(" ")
  end
end

module Blog
  class Article
    def initialize(title, body)
      @title = title
      @body = body
    end
    # attr_accessor :title, :body
    include HelperMethods

  end

  class Snippit < Article
    def output
      p self.titleize(@title)
      p @body.length > 100 ? @body = @body[0..100] + "..." : @body
    end
  end
end

title = "testing title"
body = "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
# p Beta.alpha
# Blog::Article.new(title, b)
snip = Blog::Snippit.new(title, body)
# snip = Blog::Snippit.new
# snip.title = title
# snip.body = body
snip.output
# Theta::Zulu.alpha("Try This!!")
# p Zulu.new.alpha
