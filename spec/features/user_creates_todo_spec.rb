require "rails_helper"

feature "User creates todo" do
  scenario "successfully" do
    visit root_path

    click_on "Add a new to do"
    fill_in "Title", with: "Pay bills"
    click_on "Submit"

    expect(page).to have_css '.todos li', text: 'Pay bills'
  end
end
