require 'spec_helper'

describe "anecdotes/index" do
  before(:each) do
    assign(:anecdotes, [
      stub_model(Anecdote,
        :sujet => "Sujet",
        :texte => "MyText",
        :themes => "Themes",
        :chapitre => nil
      ),
      stub_model(Anecdote,
        :sujet => "Sujet",
        :texte => "MyText",
        :themes => "Themes",
        :chapitre => nil
      )
    ])
  end

  it "renders a list of anecdotes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Sujet".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Themes".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
