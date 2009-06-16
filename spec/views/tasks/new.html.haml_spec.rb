require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/tasks/new.html.haml" do
  include TasksHelper
  
  before(:each) do
    assigns[:task] = stub_model(Task,
      :new_record? => true,
      :name => "value for name",
      :user_id => 1
    )
  end

  it "renders new task form" do
    render
    
    response.should have_tag("form[action=?][method=post]", tasks_path) do
      with_tag("input#task_name[name=?]", "task[name]")
    end
  end
end


