require File.join(File.dirname(__FILE__), "spec_helper")

describe "creating a person" do
  before(:each) do
    @person = Person.new("Ben", "Lovell", 29)
  end
  
  it "has a name" do
    @person.name.should == "Ben"
  end
  
  it "has an age" do
    @person.age.should == 29
  end
  
  it "has a surname" do
    @person.surname.should == 'Lovell'
  end
  
  it "displays the name and age" do
    @person.to_s.should == 'Ben Lovell, 29'
  end
  
  it "does something" do
    pending
  end
end