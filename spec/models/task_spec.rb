require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Task do
  before(:each) do
    @valid_attributes = {
      :name => "value for name",
      :complete => Time.now,
      :due => Date.today,
      :created_at => Time.now,
      :updated_at => Time.now,
      :user_id => 1,
      :point_value => 1000
    }
  end

  it "should create a new instance given valid attributes" do
    Task.create!(@valid_attributes)
  end
  
  it "should render due date to string" do
    task = Task.new
    task.due_date.is_a?(String)
  end
  
  it "should parse due_date with Chronic" do
    task = Task.new
    task.due_date=("today")
  end
  
  it "should properly parse dates" do
    task = Task.new
    task.due_date=("today")
    task.due_date == Time.now.day
  end
  
  it "should render point value to integer" do
    task = Task.new
    task.point_value.is_a?(Integer)
  end
end
