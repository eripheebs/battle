require 'capybara/dsl'
require 'selenium-webdriver'
include Capybara::DSL
Capybara.default_driver = :selenium

describe "Homepage" do
  context "Go to home page" do
    it "opens homepage" do
      visit('/')
    end
  end

  it "fills in name 1" do
    fill_in 'name_1', with: 'Player1'
  end

  it "fills in name 1" do
    fill_in 'name_1', with: 'Player1'
  end

  it "submits names" do
    click_button 'Submit'
  end
end
