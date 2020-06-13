# == Schema Information
#
# Table name: colorstraps
#
#  id               :bigint           not null, primary key
#  primary          :string
#  secondary        :string
#  success          :string
#  info             :string
#  warning          :string
#  danger           :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  background       :string
#  text_light       :string
#  text_dark        :string
#  light            :string
#  dark             :string
#  link_hover       :string
#  form_background  :string
#  inner_background :string
#
FactoryBot.define do
  factory :colorstrap do
    primary { Faker::Color.hex_color }
    secondary { Faker::Color.hex_color }
    success { Faker::Color.hex_color }
    info { Faker::Color.hex_color }
    warning { Faker::Color.hex_color }
    danger { Faker::Color.hex_color }
    background { Faker::Color.hex_color }
    text_light { Faker::Color.hex_color }
    text_dark { Faker::Color.hex_color }
    light { Faker::Color.hex_color }
    dark { Faker::Color.hex_color }
    link_hover { Faker::Color.hex_color }
    form_background { Faker::Color.hex_color }
    inner_background { Faker::Color.hex_color }

    trait :default do
      primary { '#007bff' }
      secondary { '#6c757d' }
      success { '#28a745' }
      info { '#17a2b8' }
      warning { '#ffc107' }
      danger { '#dc3545' }
      background { '#ffffff' }
      text_light { '#ffffff' }
      text_dark { '#212529' }
      light { '#f8f9fa' }
      dark { '#343a40' }
      link_hover { '#0056b3' }
      form_background { '#ffffff' }
      inner_background { '#e9ecef' }
    end
  end
end
