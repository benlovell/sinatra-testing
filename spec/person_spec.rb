require File.join(File.dirname(__FILE__), "spec_helper")

describe "creating a person" do
  before(:each) do
    @person = Person.new("Ben", 29)
  end
  
  it "should have a name" do
    @person.name.should == "Ben"
  end
  
  it "should have an age" do
    @person.age.should == 29
  end
  
  it "should have a surname" do
    pending
  end
  
  it "should display the name and age" do
    @person.to_s.should == 'Ben, 29'
  end
end