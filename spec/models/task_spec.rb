require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Task do
  before(:each) do
    @valid_attributes = {
      :name => "value for name",
      :complete => Time.now,
      :due => Date.today,
      :created_at => Time.now,
      :updated_at => Time.now,
      :user_id => 1
    }
  end

  it "should create a new instance given valid attributes" do
    Task.create!(@valid_attributes)
  end
end
