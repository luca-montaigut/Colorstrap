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
RSpec.describe Colorstrap, type: :model do
  it 'has a valid factory' do
    expect(build(:colorstrap)).to be_valid
    expect(build(:colorstrap, :default)).to be_valid
  end

  describe 'validations' do
    let(:random_hex_color) { Faker::Color.hex_color }
    let(:random_string) { Faker::String.random }

    it { is_expected.to allow_value(random_hex_color).for(:primary) }
    it { is_expected.to allow_value(random_hex_color).for(:secondary) }
    it { is_expected.to allow_value(random_hex_color).for(:success) }
    it { is_expected.to allow_value(random_hex_color).for(:info) }
    it { is_expected.to allow_value(random_hex_color).for(:warning) }
    it { is_expected.to allow_value(random_hex_color).for(:danger) }
    it { is_expected.to allow_value(random_hex_color).for(:background) }
    it { is_expected.to allow_value(random_hex_color).for(:text_light) }
    it { is_expected.to allow_value(random_hex_color).for(:text_dark) }
    it { is_expected.to allow_value(random_hex_color).for(:light) }
    it { is_expected.to allow_value(random_hex_color).for(:dark) }
    it { is_expected.to allow_value(random_hex_color).for(:link_hover) }
    it { is_expected.to allow_value(random_hex_color).for(:form_background) }
    it { is_expected.to allow_value(random_hex_color).for(:inner_background) }
    
    it { is_expected.to_not allow_value(random_string).for(:primary) }
    it { is_expected.to_not allow_value(random_string).for(:secondary) }
    it { is_expected.to_not allow_value(random_string).for(:success) }
    it { is_expected.to_not allow_value(random_string).for(:info) }
    it { is_expected.to_not allow_value(random_string).for(:warning) }
    it { is_expected.to_not allow_value(random_string).for(:danger) }
    it { is_expected.to_not allow_value(random_string).for(:background) }
    it { is_expected.to_not allow_value(random_string).for(:text_light) }
    it { is_expected.to_not allow_value(random_string).for(:text_dark) }
    it { is_expected.to_not allow_value(random_string).for(:light) }
    it { is_expected.to_not allow_value(random_string).for(:dark) }
    it { is_expected.to_not allow_value(random_string).for(:link_hover) }
    it { is_expected.to_not allow_value(random_string).for(:form_background) }
    it { is_expected.to_not allow_value(random_string).for(:inner_background) }
  end
end
