class TextResource
	attr_accessor :source_uri
	attr_accessor :plain_text
	attr_accessor :title
	attr_accessor :headings_1
	attr_accessor :headings_2
	attr_accessor :headings_3
	attr_accessor :sentence_boundaries
	attr_accessor :categories
	attr_accessor :place_names
	attr_accessor :human_names
	attr_accessor :summary
	attr_accessor :sentiment_rating 
	# [-1..+1] 
	#pos number imples positive sentiment

	def initialize source_uri=''
		@source_uri = source_uri
		@title=''
		@headings_1=[]
		@headings_2=[]
		@headings_3=[]
	end
	def cleanup_plain_text text # just a placeholder until chapter 2
		text
	end
	def process_text_semantics! text # a placeholder until chapter 3
	end
end