# MarkDown Simple Editor



## Installation

Add this line to your application's Gemfile:

    gem "font-awesome-rails"
    gem 'md_simple_editor'

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install font-awesome-rails"
    $ gem install md_simple_editor

## Usage

In your `application.css`, include the css files:

    *= require font-awesome
    *= require md_simple_editor

In your `application.js`, include the javascript files:

    //= require md_simple_editor

### Helper

There are a helper that make your textarea works like a _text editor :D_

```rails
<%= md_simple_editor  do %>
    <%= text_area_tag "your id" %>
<% end %>
```
Also you can use inside a form
```rails
<%= form_for @user do |f|
    <%= md_simple_editor  do %>
        <%= f.text_area :description %>
    <% end %>
<% end %>
```


#### Version 0.1.8

Simple markdown editor meets Bootstrap, more elegant look and feel, !and now, the preview mode is OUT"

## How it looks?

![Imgur](http://i.imgur.com/gg0MwlD.png)

![Imgur](http://i.imgur.com/tX29Zvi.png)


## ToDo

- Add functions to extend the toolbar
- Add some internationalization options

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
