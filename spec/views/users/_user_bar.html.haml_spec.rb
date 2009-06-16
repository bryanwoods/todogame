require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/users/_user_bar.html.haml" do
  include UsersHelper
    
  before(:each) do
    assigns[:user] = stub_model(User,
      :new_record? => true,
      :login => "value for login",
      :name => "value for name",
      :email => "value for email",
      :crypted_password => "value for crypted_password",
      :salt => "value for salt",
      :created_at => Time.now,
      :updated_at => Time.now,
      :remember_token => "value for remember token",
      :remember_token_expires_at => Time.now
    )
  end
  
  it "renders user bar" do
    render "/users/_user_bar.html.haml"
    
    response.should have_tag("div[id=?]", "user-bar-greeting")
    response.should have_tag("div[id=?]", "user-bar-action")    
  end
end