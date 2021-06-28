require 'rspec'
require 'page-object'
require 'data_magic'

if ENV['browser'] == nil
  $browser_type = :chrome
else
  $browser_type = ENV['browser']
end


# require 'rspec'
# require 'page-object'
# require 'data_magic'
# require 'yaml'
#
#
# if ENV['browser'] == nil
#   $browser_type = :chrome
# else
#   $browser_type = ENV['browser']
# end



if ENV['env'] == nil
  environment_name = ''
else
  environment_name = ENV['env']
end

$url = "www.practiceselenium#{environment_name}.com"






World(PageObject::PageFactory)
