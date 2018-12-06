require 'selenium-webdriver'

class SeleniumQAToolsForm

  attr_accessor :first_name_field

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
    @automation_tool_Selenium_Webdriver_field = 'tool-2'
    @dropDown_continents_field = 'continents'
    @dropdown_commands_field = 'selenium_commands'
    @submit_button_field = 'submit'

  end

  def visit_practice_form
    @chrome_driver.get(@practice_form_url)
  end

  def get_current_url
    @chrome_driver.current_url
  end

  def input_firstname_field(text)
    @chrome_driver.find_element(:name, @first_name_field).send_keys(text)
  end

  def get_firstname_field
    @chrome_driver.find_element(:name, @first_name_field).attribute('value')
  end

  def input_lastname_field(text)
    @chrome_driver.find_element(:name, @last_name_field).send_keys(text)
  end

  def get_lastname_field
    @chrome_driver.find_element(:name, @last_name_field).attribute('value')
  end

  def select_gender
    @chrome_driver.find_element(:id, @sex_female_field).click
  end

  def is_gender_selected
    @chrome_driver.find_element(:id, @sex_female_field).selected?
  end

  def select_years_of_experience
    @chrome_driver.find_element(:id, @years_of_experience_5_field).click
  end

  def is_years_of_experience_selected
    @chrome_driver.find_element(:id, @years_of_experience_5_field).selected?
  end

  def input_date_field(text)
    @chrome_driver.find_element(:id, @date_field).send_keys(text)
  end

  def get_date_field
    @chrome_driver.find_element(:id, @date_field).attribute('value')
  end

  def select_profession
    @chrome_driver.find_element(:id, @profession_automation_tester_field).click
  end

  def is_profession_selected
    @chrome_driver.find_element(:id, @profession_automation_tester_field).selected?
  end

  def select_automation_tool
    @chrome_driver.find_element(:id, @automation_tool_Selenium_Webdriver_field).click
  end

  def is_automation_tool_selected
    @chrome_driver.find_element(:id, @automation_tool_Selenium_Webdriver_field).selected?
  end

  def select_continent_from_dropdown
    dropDownMenu = @chrome_driver.find_element(:id, @dropDown_continents_field)
    option = Selenium::WebDriver::Support::Select.new(dropDownMenu)
    option.select_by(:text, 'Africa')
  end

  def get_selected_continent_from_dropdown
    dropDownMenu = @chrome_driver.find_element(:id, @dropDown_continents_field).text.include?('Africa')
  end


  def select_selenium_commands_from_dropdown
    dropDownMenu = @chrome_driver.find_element(:id, @dropdown_commands_field)
    option = Selenium::WebDriver::Support::Select.new(dropDownMenu)
    option.select_by(:text, 'Wait Commands')
  end

  def get_selected_selenium_command_from_dropdown
    dropDownMenu = @chrome_driver.find_element(:id, @dropdown_commands_field).text.include?('Wait Commands')
  end

  def click_to_submit_form
    @chrome_driver.find_element(:name, 'submit').click
  end

  def is_submit_clicked
    @chrome_driver.find_element(:name, 'submit').submit
  end

end
