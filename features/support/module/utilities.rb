module Utilities

  def lets_talk_tea
    $browser.driver.find_element( :xpath, '//*[@id="wsb-nav-00000000-0000-0000-0000-000450914915"]/ul/li[4]/a')
  end
end