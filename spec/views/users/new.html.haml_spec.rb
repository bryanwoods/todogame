require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/users/new.html.haml" do
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
  
  it "says Sign up as a new user" do
    render "/users/new.html.haml"
    response.should have_text(/Sign up as a new user/)
  end
  
  it "renders a form field for login" do
    render "/users/new.html.haml"
    response.should have_tag("label[for=?]", /login/)
    response.should have_tag("input[id=?]", /user_login/)
  end
  
  it "renders a form field for email" do
    render "/users/new.html.haml"
    response.should have_tag("label[for=?]", /email/)
    response.should have_tag("input[id=?]", /user_email/)
  end
  
  it "renders a form field for password" do
    render "/users/new.html.haml"
    response.should have_tag("label[for=?]", /password/)
    response.should have_tag("input[id=?]", /user_password/)
  end
  
  it "renders a form field for password confirmation" do
    render "/users/new.html.haml"
    response.should have_tag("label[for=?]", /password_confirmation/)
    response.should have_tag("input[id=?]", /user_password_confirmation/)
  end
  
end