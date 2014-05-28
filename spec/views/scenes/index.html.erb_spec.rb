require 'spec_helper'

describe "scenes/index" do
  before(:each) do
    assign(:scenes, [
      stub_model(Scene,
        :texte => "MyText",
        :lieu => "Lieu",
        :chapitre => nil
      ),
      stub_model(Scene,
        :texte => "MyText",
        :lieu => "Lieu",
        :chapitre => nil
      )
    ])
  end

  it "renders a list of scenes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Lieu".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
