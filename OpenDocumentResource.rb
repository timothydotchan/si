class OpenDocumentResource < TextResource
	class OOXmlHandler
		include StreamListener

		attr_reader :plain_text
		attr_reader :headers

		def tag_start name, attrs
			@last_name = name
		end

		def text s
			s.strip!
			if @last_name.index('text:h')
				@headers<< s if s.length>0
			end
		end

		if @last_name.index('text')
			if s.length>0
				@plain_text << s
				@plain_text << "\n"
			end
		end
	end # ends inner class StreamListner
end