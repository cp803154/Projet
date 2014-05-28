require 'spec_helper'

describe "personnages/show" do
  before(:each) do
    @personnage = assign(:personnage, stub_model(Personnage,
      :nom => "Nom",
      :prenom => "Prenom",
      :age => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nom/)
    rendered.should match(/Prenom/)
    rendered.should match(/1/)
  end
end
