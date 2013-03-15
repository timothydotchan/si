class RssResource < TextResource
	def initialize 
		super('')
	end
	def RssResource.get_entries source_uri =''
		entries []
		items= rss.items
		items.each {|item|
			content=item[:content_encode] || item [:description] || ''
			entry = RssResource.new
			entry.plain_text = entry.cleanup_plain_text(content)
			entry.process_text_semantics(entry.plain_text)
			entry.source_uri=item[:link] || ''
			entry.title= item[:title] || ''
			entries<<entry
		}
		entries
	end
end