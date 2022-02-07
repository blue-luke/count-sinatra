require "capybara/rspec"
require_relative "../../app"

Capybara.app = CounterApp

feature "time last updated" do
  scenario "see the time the counter was last updated" do
    visit("/")
    expect(page).to have_content 0
    click_button "Decrement"
    expect(page).to have_content "#{Time.now.strftime("%H:%M")}"
    click_button "Reset"
  end
end