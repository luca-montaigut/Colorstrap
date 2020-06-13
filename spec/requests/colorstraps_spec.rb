RSpec.describe 'Colorstraps', type: :request do
  describe 'GET #index' do
    it 'should be accessible from root_path' do
      get root_path
      expect(response).to have_http_status(:ok)
      expect(response).to render_template(:index)
    end

    it 'should be accessible from colorstraps_path' do
      get colorstraps_path
      expect(response).to have_http_status(:ok)
      expect(response).to render_template(:index)
    end
  end

  describe 'GET #show' do
    let(:colorstrap) { create(:colorstrap) }
    let(:classic_colorstrap) { create(:colorstrap, :default) }
    let(:classic_css) { File.open('spec/fixtures/generated_files/classic.min.css').read }

    it 'should display an existing colorstrap' do
      get colorstrap_path(colorstrap)

      expect(response).to have_http_status(:ok)
      expect(response).to render_template(:show)
    end

    it 'should generate CSS' do
      get colorstrap_path(classic_colorstrap), params: { format: :css }

      expect(response).to have_http_status(:ok)
      expect(response.content_type).to eq 'text/css'
      expect(response.body).to eq classic_css
    end

    it 'should fail with non-existent record' do
      expect { get colorstrap_path(1) }.to raise_error(ActiveRecord::RecordNotFound)
    end
  end

  describe 'POST #create' do
    context 'with valid attributes' do
      it 'should create a Colorstrap record and redirect to it' do
        expect { post '/colorstraps', { params: attributes_for(:colorstrap) } }.to change(Colorstrap, :count).by(1)
        created_colorstrap = Colorstrap.last

        expect(response).to redirect_to(colorstrap_path(created_colorstrap))
        follow_redirect!
        expect(response).to render_template(:show)
      end
    end

    context 'with invalid attributes' do
      let(:invalid_attributes) { { primary: Faker::String.random, secondary: Faker::String.random, success: Faker::String.random, info: Faker::String.random, warning: Faker::String.random, danger: Faker::String.random, background: Faker::String.random, text_light: Faker::String.random, text_dark: Faker::String.random, light: Faker::String.random, dark: Faker::String.random, link_hover: Faker::String.random, form_background: Faker::String.random, inner_background: Faker::String.random } }

      it 'should fail and explode' do
        expect { post '/colorstraps', { params: invalid_attributes } }.to change(Colorstrap, :count).by(0)
      end
    end
  end
end
