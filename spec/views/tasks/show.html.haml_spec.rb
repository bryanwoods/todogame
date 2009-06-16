require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/tasks/show.html.haml" do
  include TasksHelper
  before(:each) do
    assigns[:task] = @task = stub_model(Task,
      :name => "value for name",
      :user_id => 1
    )
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(/value\ for\ name/)
  end
end

