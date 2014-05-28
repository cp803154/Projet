require 'spec_helper'

describe "personnages/index" do
  before(:each) do
    assign(:personnages, [
      stub_model(Personnage,
        :nom => "Nom",
        :prenom => "Prenom",
        :age => 1
      ),
      stub_model(Personnage,
        :nom => "Nom",
        :prenom => "Prenom",
        :age => 1
      )
    ])
  end

  it "renders a list of personnages" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nom".to_s, :count => 2
    assert_select "tr>td", :text => "Prenom".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
