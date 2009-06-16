require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/tasks/index.html.haml" do
  include TasksHelper
  
  before(:each) do
    assigns[:tasks] = [
      stub_model(Task,
        :name => "value for name",
        :user_id => 1
      ),
      stub_model(Task,
        :name => "value for name",
        :user_id => 1
      )
    ]
  end

  it "renders a list of tasks" do
    render
    response.should have_tag("tr>td", "value for name".to_s, 2)
  end
end

