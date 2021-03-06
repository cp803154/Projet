require 'spec_helper'

describe "scenes/show" do
  before(:each) do
    @scene = assign(:scene, stub_model(Scene,
      :texte => "MyText",
      :lieu => "Lieu",
      :chapitre => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    rendered.should match(/Lieu/)
    rendered.should match(//)
  end
end
