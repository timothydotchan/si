class HtmlXhtmlResource < TextResource
	def initialize source_uri=''
		supert(source_uri)
		# parse HTML:
		doc = Nokogiri::HTML(open(source_uri))
		@plain_text= cleanup_plain_text(doc.inner.text)
		@headings_1= doc.xpath('//h1').collect {|h| h.inner_text.strip}
		@headings_2= doc.xpath('//h2').collect {|h| h.inner_text.strip}
		@headings_3= doc.xpath('//h3').collect {|h| h.inner_text.strip}
		process_text_semantics(@plain_text)
	end
end