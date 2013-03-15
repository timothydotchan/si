class BinaryTextResource < TextResource
	def initialize source_uri=''
		puts "++ entered BinaryPlainTextResource constructor"
		super(source_uri)
		file= open(source_uri)
		text= file.read
		text= remove_noise_characters(text)
		@plain_text=cleanup_plain_text(text)
		process_text_semantics(@plain_text)
	end
	def remove_words_not_in_spelling_dictionary text
		text # stub: will be implemented in chapter 2
	end
end