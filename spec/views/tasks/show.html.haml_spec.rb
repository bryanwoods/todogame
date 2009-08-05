require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/tasks/show.html.haml" do
  include TasksHelper
  before(:each) do
    assigns[:task] = @task = stub_model(Task,
      :name => "value for name",
      :user_id => 1,
      :due_date => Time.now,
      :point_value => 1000
    )
  end

  it "renders task name" do
    render
    
    response.should have_text(/value\ for\ name/)
  end
  
  it "renders due date" do
    render
    
    response.should have_tag("b", "Due:")
  end
  
  it "renders point value" do
    render
    
    response.should have_text(/1000/)
  end
end

