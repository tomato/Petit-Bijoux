require 'spec_helper'

describe "/posts/new.html.erb" do
  include PostsHelper

  before(:each) do
    assigns[:post] = stub_model(Post,
      :new_record? => true,
      :text => "value for text",
      :url => "value for url"
    )
  end

  it "renders new post form" do
    render

    response.should have_tag("form[action=?][method=post]", posts_path) do
      with_tag("input#post_text[name=?]", "post[text]")
      with_tag("input#post_url[name=?]", "post[url]")
    end
  end
end
