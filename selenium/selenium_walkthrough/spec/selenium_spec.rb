require 'selenium-webdriver'

describe "Testing the methods within SeleniumQAToolsForm" do

  before(:all) do
    @QA_form_data = SeleniumQAToolsForm.new
    @QA_form_data.visit_practice_form
  end

  it "should return the correct form url" do
    expect(@QA_form_data.get_current_url).to eq 'http://toolsqa.com/automation-practice-form/'
  end

  it "should return first name as a String" do
    expect(@QA_form_data.input_firstname_field).to be_kind_of String
  end




end
