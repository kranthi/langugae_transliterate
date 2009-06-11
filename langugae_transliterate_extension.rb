# Uncomment this if you reference any of your controllers in activate
# require_dependency 'application'

class LangugaeTransliterateExtension < Radiant::Extension
  version "1.0"
  description "Describe your extension here"
  url "http://yourwebsite.com/langugae_transliterate"
  
  # define_routes do |map|
  #   map.namespace :admin, :member => { :remove => :get } do |admin|
  #     admin.resources :langugae_transliterate
  #   end
  # end
  
  def activate
    admin.page.edit.add(:form, "language_transliterate", :after => 'edit_extended_metadata')
  end
  
  def deactivate
    # admin.tabs.remove "Langugae Transliterate"
  end
  
end
