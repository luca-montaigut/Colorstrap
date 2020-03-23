class Colorstrap < ApplicationRecord
  validates_format_of :primary, with: /\A#?(?:[A-F0-9]{3}){1,2}\z/i   
  validates_format_of :secondary, with: /\A#?(?:[A-F0-9]{3}){1,2}\z/i   
  validates_format_of :success, with: /\A#?(?:[A-F0-9]{3}){1,2}\z/i   
  validates_format_of :info, with: /\A#?(?:[A-F0-9]{3}){1,2}\z/i   
  validates_format_of :warning, with: /\A#?(?:[A-F0-9]{3}){1,2}\z/i   
  validates_format_of :danger, with: /\A#?(?:[A-F0-9]{3}){1,2}\z/i  
  validates_format_of :background, with: /\A#?(?:[A-F0-9]{3}){1,2}\z/i  
  validates_format_of :text_light, with: /\A#?(?:[A-F0-9]{3}){1,2}\z/i  
  validates_format_of :text_dark, with: /\A#?(?:[A-F0-9]{3}){1,2}\z/i  
  validates_format_of :light, with: /\A#?(?:[A-F0-9]{3}){1,2}\z/i  
  validates_format_of :dark, with: /\A#?(?:[A-F0-9]{3}){1,2}\z/i  
  validates_format_of :link_hover, with: /\A#?(?:[A-F0-9]{3}){1,2}\z/i  
  validates_format_of :form_background, with: /\A#?(?:[A-F0-9]{3}){1,2}\z/i  
  validates_format_of :inner_background, with: /\A#?(?:[A-F0-9]{3}){1,2}\z/i  
end
