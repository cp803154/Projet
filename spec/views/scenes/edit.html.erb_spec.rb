require 'spec_helper'

describe "scenes/edit" do
  before(:each) do
    @scene = assign(:scene, stub_model(Scene,
      :texte => "MyText",
      :lieu => "MyString",
      :chapitre => nil
    ))
  end

  it "renders the edit scene form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", scene_path(@scene), "post" do
      assert_select "textarea#scene_texte[name=?]", "scene[texte]"
      assert_select "input#scene_lieu[name=?]", "scene[lieu]"
      assert_select "input#scene_chapitre[name=?]", "scene[chapitre]"
    end
  end
end
