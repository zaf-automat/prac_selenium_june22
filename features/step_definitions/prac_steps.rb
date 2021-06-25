require 'selenium-webdriver'


Given(/^User is on practiceselenium home page$/) do
  visit HomePage
end



Then(/^Verify that lets talk tea link is there$/) do
  #on(HomePage).lets_talk_tea.flash
  expect(on(HomePage).lets_talk_tea.present?).to be true
end