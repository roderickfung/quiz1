# 8. Create a Ruby class called Article inside a module called Blog that has two attributes: title and body. Write another class called Snippet that inherits from the Article class. The Snippet method should return the same `title` but if you call `body` on a snippet object it should return the body truncated to a 100 characters with three dots at the end. This means if you create a snippet object and give it a body that has 200 characters, if you call the `body` method it should return the first 100 characters of that body and three dots at the end. If the body is 100 characters or less, it should not put three dots at the end. Include the module you built in question #7 in the Article class and use it when returning the title.
#
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
      @@body = body
    end
    extend HelperMethods
  end
end

  attr_accessor :title
  attr_accessor :body


  class Snippit < Article
      Snippit.new.titleize(@@title)
      # @bd.length > 100 ? @bd = @bd[0..100] + "..." : @bd
  end

title = "greetings people of the world"
body = 200.times{|x| b << rand(/\w+\s/)}.join(//)

article = HelperMethods::Blog.Article.new(t,b)
p article.Snippit
