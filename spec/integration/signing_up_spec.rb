require 'spec_helper'

feature "Signing up" do
	scenario "Successful sign up" do
		visit "/"
		click_link "Sign up"
		fill_in "Email", :with => "user@ticketee.com"
		fill_in "Password", :with => "password"
		fill_in "Password confirmation", :with => "password"
		click_button "Sign up"
		message = "Please confirm your account before signing in."
		page.should have_content(message)
	end
end
