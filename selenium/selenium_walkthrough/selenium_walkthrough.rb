require 'selenium-webdriver'

class SeleniumQAToolsForm

  def initialize
    @chrome_driver = Selenium::WebDriver.for :chrome
    @practice_form_url = 'http://toolsqa.com/automation-practice-form/'
    @first_name_field_name = 'firstname'
    @last_name_field_name = 'lastname'
    @male_field_name = 'sex-0'
    @female_field_name = 'sex-1'
  end

  def visit_practice_form
    @chrome_driver.get(@practice_form_url)
  end

  def input_firstname_field(text)
    @chrome_driver.find_element(:name, @first_name_field_name).send_keys(text)
  end
end

test = SeleniumQAToolsForm.new
test.visit_practice_form
test.input_firstname_field('Hassanat is testing')
sleep 5
