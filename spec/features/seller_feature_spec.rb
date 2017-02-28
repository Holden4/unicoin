require 'rails_helper'

feature 'Seller can sign in and out' do

  context "Seller signed in on the homepage" do
    before do
     visit('/')
     click_link('Seller Sign Up')
     fill_in 'Name', with: 'Mike'
     fill_in 'Email', with: 'mike@test.com'
     fill_in 'Password', with: 'abc123'
     fill_in 'Password confirmation', with: 'abc123'
     click_button('Sign up')
   end

   it "should see 'sign out' link" do
     expect(page).to have_link('Sign Out')
     expect(current_path).to eq('/offers')
   end
 end
end
