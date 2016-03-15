require 'capybara/dsl'
require 'selenium-webdriver'
include Capybara::DSL
Capybara.default_driver = :selenium

visit('/')
fill_in 'name_1', with: 'Player1'
fill_in 'name_2', with: 'Player2'
click_button 'Submit'
