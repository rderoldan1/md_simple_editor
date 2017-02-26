# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

md_simple_editor = () ->
  $('.btn-toolbar .btn-group button').click ->
    att_class = this.classList
    rgex = /md_/

    option = $.grep att_class, (item) ->
      return rgex.test(item)

    if option.length != 0
      option = option[0].toString()

      text = if option == 'md_h1'
               "# Your Title here"
            else if option == 'md_h2'
               "## Your Title here"
            else if option == 'md_h3'
               "### Your Title here"
            else if option == 'md_h4'
               "#### Your Title here"
            else if option == 'md_h5'
               "##### Your Title here"
            else if option == 'md_italic'
               "_Your italic text here_"
            else if option == 'md_bold'
               "__Your bold text here__"
            else if option == 'md_list-ul'
               "\n\n* Item 1\n* Item 2\n* Item 3 \n\n<br>"
            else if option == 'md_list-ol'
               "\n\n1. Item 1\n2. Item 2\n3. Item 3 \n\n<br> "
            else if option == 'md_indent'
               ">Your indented text here"
            else if option == 'md_underline'
               "<u>Your undelined text here </u>"
            else if option == 'md_table'
               "\n|Header|Header|Header|\n|:------|:-------:|------:|\n|Left alignment|Centered|Right alignment|\n\n<br>"
            else if option == 'md_minus'
               "\n<hr>\n"
            else if option == 'md_square'
               "\n\t Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ut aliquet velit. Nam fermentum, mi quis egestas ornare, massa velit pharetra ante, sed
                      pellentesque tortor nisl non quam. Nunc eget egestas orci.\n\n<br> "
            else if option == 'md_link'
              "\n[This is a link](http://google.com)\n"
            else if option == 'md_camera-retro'
              "\n![Alt](https://www.google.com.co/images/srpr/logo11w.png)\n"

      textarea = $('#md-editor #md-text textarea')
      insertAtCaret(textarea.attr('id'), text)

preview = ->
  if $('#md-text').prop('hidden')
    $('.preview_md').text('Preview')
    $('#md-text').removeAttr('hidden')
    $('.preview-panel').attr('hidden', 'true')
    false
  else
    $.post(
      '/md_simple_editor/preview',
      {md: $('#md-text textarea').val()},
      (data) ->
        $('.preview_md').text('Editor')
        $('#md-text').attr('hidden', 'true')
        $('.preview-panel').removeAttr('hidden')
        $('#md-preview').html(data)
    )

insertAtCaret = (areaId, text) ->
  txtarea = document.getElementById(areaId)
  scrollPos = txtarea.scrollTop
  strPos = 0
  br = ((if (txtarea.selectionStart or txtarea.selectionStart is "0") then "ff" else ((if document.selection then "ie" else false))))
  if br is "ie"
    txtarea.focus()
    range = document.selection.createRange()
    range.moveStart "character", -txtarea.value.length
    strPos = range.text.length
  else strPos = txtarea.selectionStart  if br is "ff"
  front = (txtarea.value).substring(0, strPos)
  back = (txtarea.value).substring(strPos, txtarea.value.length)
  txtarea.value = front + text + back
  strPos = strPos + text.length
  if br is "ie"
    txtarea.focus()
    range = document.selection.createRange()
    range.moveStart "character", -txtarea.value.length
    range.moveStart "character", strPos
    range.moveEnd "character", 0
    range.select()
  else if br is "ff"
    txtarea.selectionStart = strPos
    txtarea.selectionEnd = strPos
    txtarea.focus()
  txtarea.scrollTop = scrollPos

initializeEditor = ->
  md_simple_editor()
  $(document).off 'turbolinks:load page:load ready', initializeEditor
  $('.preview_md').click ->
    preview()

$(document).on 'turbolinks:load page:load ready', initializeEditor
