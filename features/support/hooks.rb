require 'rubygems'

require 'watir'





Before do |scenario|
  DataMagic.load_for_scenario(scenario)
  @browser = Watir::Browser.new :chrome
  $browser = @browser
  $browser.driver.manage.window.maximize
end




After do
  $browser.close
end
$Screenshot_Directory = "HTML_report"

After do |scenario|

  sleep 0.5
  if scenario.failed?

file = Tempfile.new(["screenshot_", ".png"], $Screenshot_Directory)
screenshot = file.path
file.close(true)
$browser.driver.save_screenshot(screenshot)
attach "#{screenshot}", "image/png"
end

#   if scenario.failed?
#     time_stamp = Time.now.to_s.gsub('-', '_').gsub(" ","_").gsub(':','_').gsub(/__0400/,'')
#     screenshot = "#{scenario.name.gsub(' ', '_').gsub(/[^0-9A-Za-z_]/, '')}_#{time_stamp}.png"
#     @browser.driver.save_screenshot(File.join(@Screenshot_Directory, screenshot))
#     embed(File.join(@Screenshot_Directory, screenshot), "image/png", "SCREENSHOT")
#
   end
