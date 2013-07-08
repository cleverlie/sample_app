include ApplicationHelper

def fill_new_user_form_with_example_content
  fill_in "Name",         with: "Example User"
  fill_in "Email",        with: "user@example.com"
  fill_in "Password",     with: "foobar"
  fill_in "Confirmation", with: "foobar"
end

RSpec::Matchers.define :have_a_welcome_message do |message|
  match do |page|
    page.should have_selector('div.alert.alert-success', text: message)
  end
end
