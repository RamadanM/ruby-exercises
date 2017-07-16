#[4] Continue in the Document class.
# add a 'words' function that returns the content of the document in the form of
# an array of words.
# Example: if content is "some more content here" then the function should return
# ["some", "more", "content", "here"]

#[5] Read about blocks in ruby [also check the ruby examples provided]
# add a function each_word that loops on the words in the document - you must use
# blocks
# This function is called like this:
# document.each_word do |word|
#  puts word
# end


class Document

	attr_accessor :author
	attr_accessor :title
	attr_accessor :content

	def initialize(options = {})
		self.author = options[:author]
		self.title = options[:title]
		self.content = options[:content]
    end

	def word
	  self.content.split(" ")
	end

	def each_word
		yield word
	end


end

fd=Document.new(:author => "someone", :title => "my book", :content => "this is the content of FD")
puts fd.word

document=Document.new(:author => "someone", :title => "my book", :content => "another content here ")

 document.each_word do |word|
  puts word
 end

