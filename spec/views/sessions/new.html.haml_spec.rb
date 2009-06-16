require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/sessions/new.html.haml" do
  
  it "renders form field for login" do
    render "/sessions/new.html.haml"
    response.should have_tag("label[for=?]", /login/)
    response.should have_tag("input[id=?]", /login/)
  end
  
  it "renders form field for password" do
    render "/sessions/new.html.haml"
    response.should have_tag("label[for=?]", /password/)
    response.should have_tag("input[id=?]", /password/)
  end
  
  it "renders checkbox to remember session" do
    render "sessions/new.html.haml"
    response.should have_tag("label[for=?]", /remember_me/)
    response.should have_tag("input[id=?]", /remember_me/)
  end
end