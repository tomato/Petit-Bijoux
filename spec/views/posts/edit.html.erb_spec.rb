require 'spec_helper'

describe "/posts/edit.html.erb" do
  include PostsHelper

  before(:each) do
    assigns[:post] = @post = stub_model(Post,
      :new_record? => false,
      :text => "value for text",
      :url => "value for url"
    )
  end

  it "renders the edit post form" do
    render

    response.should have_tag("form[action=#{post_path(@post)}][method=post]") do
      with_tag('input#post_text[name=?]', "post[text]")
      with_tag('input#post_url[name=?]', "post[url]")
    end
  end
end
