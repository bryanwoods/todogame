require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/users/show.html.haml" do
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
  
  it "renders welcome div" do
    render "/users/show.html.haml"
    response.should have_tag("div[id=?]", /welcome/)
  end
  
  it "says hello to user" do
    render "/users/show.html.haml"
    response.should have_text(/Welcome/)
    response.should have_tag("a[href=?]", "/login")
    response.should have_tag("a[title=?]", "0.0.0.0")
    response.should have_text(/not signed in/)
  end
    
end