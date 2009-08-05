require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/tasks/edit.html.haml" do
  include TasksHelper
  
  before(:each) do
    assigns[:task] = @task = stub_model(Task,
      :new_record? => false,
      :name => "value for name",
      :user_id => 1,
      :due_date => Time.now,
      :point_value => 1000
    )
  end

  it "renders the edit task form" do
    render
    
    response.should have_tag("form[action=#{task_path(@task)}][method=post]") do
      with_tag('input#task_name[name=?]', "task[name]")
    end
  end
  
  it "should render a text field for chronic date input" do
    render
    
    response.should have_tag("label[for=?]", "task_due_date")
    response.should have_tag("input[id=?]", "task_due_date")
  end
  
  it "should render a text field for point value input" do
    render
    
    response.should have_tag("label[for=?]", "task_point_value")
    response.should have_tag("input[id=?]", "task_point_value")
  end
end


