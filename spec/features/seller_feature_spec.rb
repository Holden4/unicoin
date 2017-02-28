require 'rails_helper'

describe 'Seller' do

  context 'A seller can sign up' do
    scenario 'a seller fills in a form to sign up' do
      visit '/sellers/sign_up'
      fill_in 'Name', with: 'Mike'
      fill_in 'Email', with: 'mike@test.com'
      fill_in 'Password', with: 'abc123'
      fill_in 'Password confirmation', with: 'abc123'
      click_button 'Sign up'
      expect(current_path).to eq '/'
    end
  end
end
