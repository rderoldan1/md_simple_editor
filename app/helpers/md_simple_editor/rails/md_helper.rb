module MdSimpleEditor
  module Rails
    module MdHelper
      def md_simple_editor
        content_tag(:div, :id => "md-editor") do
          content_tag(:div, :class => "btn-toolbar", role: "toolbar") do
            content_tag(:div, :class => "btn-group") do
              button_tag(:type => 'button', :class => "btn btn-default md_h4") do
                content_tag(:strong, 'H4')
              end +
              button_tag(:type => 'button', :class => "btn btn-default md_h5") do
                content_tag(:strong, 'H5')
              end
            end +
            content_tag(:div, :class => "btn-group") do
              button_tag(:type => 'button', :class => "btn btn-default md_italic") do
                icon "italic"
              end +
              button_tag(:type => 'button', :class => "btn btn-default md_bold") do
                icon "bold"
              end +
              button_tag(:type => 'button', :class => "btn btn-default md_list-ul") do
                icon "list-ul"
              end +
              button_tag(:type => 'button', :class => "btn btn-default md_list-ol") do
                icon "list-ol"
              end +
              button_tag(:type => 'button', :class => "btn btn-default md_indent") do
                icon "indent"
              end +
              button_tag(:type => 'button', :class => "btn btn-default md_underline") do
                icon "underline"
              end +
              button_tag(:type => 'button', :class => "btn btn-default md_table") do
                icon "table"
              end +
              button_tag(:type => 'button', :class => "btn btn-default md_square") do
                icon "square"
              end +
              button_tag(:type => 'button', :class => "btn btn-default md_minus") do
                icon "minus"
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
