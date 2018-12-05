require 'selenium-webdriver'

class SeleniumQAToolsForm

  def initialize
    @chrome_driver = Selenium::WebDriver.for :chrome
    @practice_form_url = 'http://toolsqa.com/automation-practice-form/'
    @first_name_field = 'firstname'
    @last_name_field = 'lastname'
    @sex_male_field = 'sex-0'
    @sex_female_field = 'sex-1'
    @years_of_experience_5_field = 'exp-4'
    @date_field = 'datepicker'
    @profession_manual_tester_field = 'profession-0'
    @profession_automation_tester_field = 'profession-1'
    @automation_tool_qtp_field = 'tool-0'
    @automation_tool_Selenium_IDE_field = 'tool-1'
    @automation_tool_Selenium_Webdriver_field = 'tool-2'
    @dropDown_continents_field = 'continents'
    @dropdown_commands_field = 'selenium_commands'
    @submit_button_field = 'submit'

  end

  def visit_practice_form
    @chrome_driver.get(@practice_form_url)
  end

  def input_firstname_field(text)
    @chrome_driver.find_element(:name, @first_name_field).send_keys(text)
  end

  def input_lastname_field(text)
    @chrome_driver.find_element(:name, @last_name_field).send_keys(text)
  end

    def select_gender
    @chrome_driver.find_element(:id, @sex_female_field).click
  end

  def select_years_of_experience
    @chrome_driver.find_element(:id, @years_of_experience_5_field).click
  end

  def select_profession
    @chrome_driver.find_element(:id, @profession_automation_tester_field).click
  end

  def input_date_field(text)
    @chrome_driver.find_element(:id, @date_field).send_keys(text)
  end

  def select_automation_tool
    @chrome_driver.find_element(:id, @automation_tool_Selenium_IDE_field).click
  end

  def select_continents
    dropDownMenu = @chrome_driver.find_element(:id, @dropDown_continents_field)
    option = Selenium::WebDriver::Support::Select.new(dropDownMenu)
    option.select_by(:text, 'Africa')
  end

  def select_selenium_commands
    dropDownMenu = @chrome_driver.find_element(:id, @dropdown_commands_field)
    option = Selenium::WebDriver::Support::Select.new(dropDownMenu)
    option.select_by(:text, 'Wait Commands')
  end

end

test = SeleniumQAToolsForm.new
test.visit_practice_form
test.input_firstname_field('Hassanat')
test.input_lastname_field('Ade')
test.select_gender
test.select_years_of_experience
test.select_profession
test.input_date_field('05/12/2018')
test.select_automation_tool
test.select_continents
test.select_selenium_commands
sleep 5
