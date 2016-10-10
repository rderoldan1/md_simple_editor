class MdSimpleEditorController < ApplicationController
	def preview
		options = {autolink: true, tables: true, hard_wrap: true, no_intra_emphasis: true, fenced_code:true, gh_blockcode: true}
		html = Redcarpet::Markdown.new(Redcarpet::Render::HTML, options).render(params['md']).html_safe
		render html: html
	end
end
