# Faenza File Icons

- [Description](#description)
- [Installation](#installation)
- [Usage](#configuration)
    - [Title and Meta Tags](#title-and-meta-tags)
- [License](#license)
- [Credits](#credits)



## Description
This gem provides a subset of the [Faenza icons](http://tiheum.deviantart.com/art/Faenza-Icons-173323228) for use in your rails application as file type icons.

## Installation
Add the following line to your Gemfile:
```sh
gem 'faenza-file-icons-rails'
```
Then run:
```sh
bundle install
rails g faenza
```

This will install all available icons in public/filetype-icons/ and create an initializer that you can use to access them.

## Usage


You can add a helper method in application_helpers.rb similar to this to fetch the icon src path for a given file type:
```rb
def icon_for(type)
    "/" + (FAENZA_ICONS_FILES[type] || FAENZA_ICONS_FILES["unknown"])
end
```

You can then use this helper in your views as follows:
```rb
<img src="<% icon_for "png" %>" alt="icon"/>
```

## License
Released under the [GPL License](http://www.gnu.org/licenses/gpl.txt).

## Credits
[Faenza icons](http://tiheum.deviantart.com/art/Faenza-Icons-173323228). Visit the project page to obtain the icon source.

    
