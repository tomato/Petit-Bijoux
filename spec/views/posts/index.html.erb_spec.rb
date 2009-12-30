require 'spec_helper'

describe "/posts/index.html.erb" do
  include PostsHelper

  before(:each) do
    assigns[:posts] = [
      stub_model(Post,
        :text => "value for text",
        :url => "value for url"
      ),
      stub_model(Post,
        :text => "value for text",
        :url => "value for url"
      )
    ]
  end

  it "renders a list of posts" do
    render
    response.should have_tag("tr>td", "value for text".to_s, 2)
    response.should have_tag("tr>td", "value for url".to_s, 2)
  end
end
