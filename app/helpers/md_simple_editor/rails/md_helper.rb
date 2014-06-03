module MdSimpleEditor
  module Rails
    module MdHelper
      def md_simple_editor
        content_tag(:div, :id => "md-editor") do
          content_tag(:div, :class => "btn-toolbar", role: "toolbar") do
            content_tag(:div, :class => "btn-group") do
              button_tag(:type => 'button', :class => "btn btn-default md_h1") do
                content_tag(:strong, 'H1')
              end +
              button_tag(:type => 'button', :class => "btn btn-default md_h2") do
                content_tag(:strong, 'H2')
              end +
              button_tag(:type => 'button', :class => "btn btn-default md_h3") do
                content_tag(:strong, 'H3')
              end +
              button_tag(:type => 'button', :class => "btn btn-default md_h4") do
                content_tag(:strong, 'H4')
              end +
              button_tag(:type => 'button', :class => "btn btn-default md_h5") do
                content_tag(:strong, 'H5')
              end
            end +
            content_tag(:div, :class => "btn-group") do
              button_tag(:type => 'button', :class => "btn btn-default md_italic") do
                fa_icon "italic"
              end +
              button_tag(:type => 'button', :class => "btn btn-default md_bold") do
                fa_icon "bold"
              end +
              button_tag(:type => 'button', :class => "btn btn-default md_list-ul") do
                fa_icon "list-ul"
              end +
              button_tag(:type => 'button', :class => "btn btn-default md_list-ol") do
                fa_icon "list-ol"
              end +
              button_tag(:type => 'button', :class => "btn btn-default md_indent") do
                fa_icon "indent"
              end +
              button_tag(:type => 'button', :class => "btn btn-default md_underline") do
                fa_icon "underline"
              end +
              button_tag(:type => 'button', :class => "btn btn-default md_table") do
                fa_icon "table"
              end +
              button_tag(:type => 'button', :class => "btn btn-default md_square") do
                fa_icon "square"
              end +
              button_tag(:type => 'button', :class => "btn btn-default md_minus") do
                fa_icon "minus"
              end
            end +
            content_tag(:div, :class => "btn-group") do
              button_tag(:type => 'button', :class => "btn btn-default md_link") do
                fa_icon "link"
              end +
              button_tag(:type => 'button', :class => "btn btn-default md_camera-retro") do
                fa_icon "camera-retro"
              end
            end +
            content_tag(:div, class: 'btn-group pull-righ') do
	            button_tag(:type => 'button', :class => "btn btn-primary preview_md") do
		            'Preview'
	            end
            end
          end +
          content_tag(:br) +
          content_tag(:div, :id => "md-text") do
            yield
          end +
          content_tag(:div, class: 'panel panel-success preview-panel', hidden: true) do
	          content_tag(:div, class: 'panel-heading') do
		          "Preview"
	          end +
	          content_tag(:div, :id => "md-preview", class: 'panel-body') do
	          end
          end
        end
      end
    end
  end
end