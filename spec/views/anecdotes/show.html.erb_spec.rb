require 'spec_helper'

describe "anecdotes/show" do
  before(:each) do
    @anecdote = assign(:anecdote, stub_model(Anecdote,
      :sujet => "Sujet",
      :texte => "MyText",
      :themes => "Themes",
      :chapitre => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Sujet/)
    rendered.should match(/MyText/)
    rendered.should match(/Themes/)
    rendered.should match(//)
  end
end
