require 'spec_helper'
 
describe "GET '/' - Greeting Form" do
  it 'welcomes the user' do
    visit '/'
    expect(page.body).to include("Welcome!")
  end

  it 'has a greeting form with a user_name field' do 
  	visit '/'

  	expect(page).to have_selector("form")
  	expect(page).to have_field(:user_name)
  end
end