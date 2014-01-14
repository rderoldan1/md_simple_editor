module MdSimpleEditor
  module Rails
    module MdHelper
      def md_simple_editor
        content_tag(:div, :id => "md-editor") do
          content_tag(:div, :id => "md-toolbar") do
            content_tag(:div, :id => "btn-group") do
              button_tag(:type => 'button', :class => "btn btn-default md_h1", :style => "font-size: 15px") do
                content_tag(:strong, 'H1')
              end +
              button_tag(:type => 'button', :class => "btn btn-default md_h2", :style => "font-size: 13px") do
                content_tag(:strong, 'H2')
              end +
              button_tag(:type => 'button', :class => "btn btn-default md_h3", :style => "font-size: 11px") do
                content_tag(:strong, 'H3')
              end +
              button_tag(:type => 'button', :class => "btn btn-default md_h4", :style => "font-size: 9px") do
                content_tag(:strong, 'H4')
              end +
              button_tag(:type => 'button', :class => "btn btn-default md_h5", :style => "font-size: 7px") do
                content_tag(:strong, 'H5')
              end
            end +
            content_tag(:div, :id => "btn-group") do
              button_tag(:type => 'button', :class => "btn btn-default md_italic", :style => "font-size: 11px") do
                fa_icon "italic"
              end +
              button_tag(:type => 'button', :class => "btn btn-default md_bold", :style => "font-size: 11px") do
                fa_icon "bold"
              end +
              button_tag(:type => 'button', :class => "btn btn-default md_list-ul", :style => "font-size: 11px") do
                fa_icon "list-ul"
              end +
              button_tag(:type => 'button', :class => "btn btn-default md_list-ol", :style => "font-size: 11px") do
                fa_icon "list-ol"
              end +
              button_tag(:type => 'button', :class => "btn btn-default md_indent", :style => "font-size: 11px") do
                fa_icon "indent"
              end +
              button_tag(:type => 'button', :class => "btn btn-default md_underline", :style => "font-size: 11px") do
                fa_icon "underline"
              end +
              button_tag(:type => 'button', :class => "btn btn-default md_table", :style => "font-size: 11px") do
                fa_icon "table"
              end +
              button_tag(:type => 'button', :class => "btn btn-default md_square", :style => "font-size: 11px") do
                fa_icon "square"
              end +
              button_tag(:type => 'button', :class => "btn btn-default md_minus", :style => "font-size: 11px") do
                fa_icon "minus"
              end
            end
          end +
          content_tag(:div, :id => "md-text") do
            yield
          end +
          content_tag(:div, :id => "md-preview") do

          end
        end
      end
    end
  end
end