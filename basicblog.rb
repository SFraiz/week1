class Blog
	def initialize (post)
		@post = []
	end
	def add_post
		@post.push
	end
	def publish_front_page

	end
end
class Post
	def initialize (title, date, text)
		@title = title
		@date = date
		@text = text
	end
end

blog = Blog.new(post)
blog.add_post post = Post.new("Post title 1", "Post date 1", "Post text 1")
puts @post.to_s