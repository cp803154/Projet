require 'spec_helper'

describe "personnages/new" do
  before(:each) do
    assign(:personnage, stub_model(Personnage,
      :nom => "MyString",
      :prenom => "MyString",
      :age => 1
    ).as_new_record)
  end

  it "renders new personnage form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", personnages_path, "post" do
      assert_select "input#personnage_nom[name=?]", "personnage[nom]"
      assert_select "input#personnage_prenom[name=?]", "personnage[prenom]"
      assert_select "input#personnage_age[name=?]", "personnage[age]"
    end
  end
end
