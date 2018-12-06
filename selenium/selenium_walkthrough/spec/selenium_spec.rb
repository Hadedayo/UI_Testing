require 'selenium-webdriver'

describe "Testing the methods within SeleniumQAToolsForm" do

  before(:all) do
    @QA_form_data = SeleniumQAToolsForm.new
    @QA_form_data.visit_practice_form
    @generate = Generator.new
    @firstname = @generate.firstname
    @lastname = @generate.lastname
  end

  it "should land on the registration page" do
    expect(@QA_form_data.get_current_url).to eq 'http://toolsqa.com/automation-practice-form/'
  end

  it "should accept a first name" do
    @QA_form_data.input_firstname_field(@firstname)
    expect(@QA_form_data.get_firstname_field).to eq @firstname
    sleep 2
  end

  it "should accept a last name" do
    @QA_form_data.input_lastname_field(@lastname)
    expect(@QA_form_data.get_lastname_field).to eq @lastname
    sleep 2
  end

  it "should select a checkbox for the gender field" do
    @QA_form_data.select_gender
    expect(@QA_form_data.is_gender_selected).to be true
    sleep 3
  end

  it "should select a checkbox for the years of experience field" do
    @QA_form_data.select_years_of_experience
    expect(@QA_form_data.is_years_of_experience_selected).to be true
    sleep 3
  end

  it "should accept today's date" do
    @QA_form_data.input_date_field(Date.today)
    expect(@QA_form_data.get_date_field).to eq (Date.today.to_s)
    sleep 5
  end

  it "should select a checkbox for the profession field" do
    @QA_form_data.select_profession
    expect(@QA_form_data.is_profession_selected).to be true
    sleep 3
  end

  it "should select a checkbox for the automation tool field" do
    @QA_form_data.select_automation_tool
    expect(@QA_form_data.is_automation_tool_selected).to be true
    sleep 3
  end

  it "should select a continent from the dropdown menu" do
    @QA_form_data.select_continent_from_dropdown
    expect(@QA_form_data.get_selected_continent_from_dropdown).to be true
    sleep 3
  end

  it "should select a selenium command from the dropdown menu" do
    @QA_form_data.select_selenium_commands_from_dropdown
    expect(@QA_form_data.get_selected_selenium_command_from_dropdown).to be true
    sleep 3
  end

  it "should submit the form when clicked and return to the registration page" do
    @QA_form_data.click_to_submit_form
    expect(@QA_form_data.get_firstname_field).to eq ''
    sleep 5
  end

end
