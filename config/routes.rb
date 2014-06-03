Rails.application.routes.draw do
	get 'md_simple_editor/preview' do
		options = {autolink: true, tables: true, hard_wrap: true, no_intraemphasis: true, fenced_code:true, gh_blockcode: true}
		Redcarpet::Markdown.new(Redcarpet::Render::HTML, options).render(params['md_simple']).html_safe
	end
end