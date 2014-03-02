class FaenzaGenerator < Rails::Generators::Base
  desc "This generator creates an initializer file at config/initializers"
  source_root File.expand_path('../resources', __FILE__)
  
  def generate_icons
    directory self.icons_source_dir, self.icons_destination_dir + "/" +  self.icons_source_dir
  end
  
  def generate_known_types_initializer
    initializer_content = "FAENZA_ICONS_FILES = { \n"
    Dir.chdir(self.icons_destination_dir) do
      icons = Dir[self.icons_source_dir + "/*.png"]
      
      icons.each_with_index do |icon, index|
        initializer_content += "\"#{icon.split("/")[-1].match(/filetype-(.*).png/)[-1]}\" => \"#{icon}\""
        if index < icons.length - 1
          initializer_content += ","
        end
        initializer_content += "\n"
      end
      initializer_content += "}"
    end
    
    #puts icons
    create_file "config/initializers/filetype_icons_faenza_rails.rb", initializer_content
  end
  
  def icons_source_dir
    "filetype-icons"
  end
  
  def icons_destination_dir
    "public"
  end
end