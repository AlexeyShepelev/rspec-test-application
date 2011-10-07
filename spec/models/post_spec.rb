require 'spec_helper'

describe Post do
  def new_post(attributes = {})
    attributes[:title] ||= 'Rspec test'
    attributes[:body] ||= 'Some body'
    attributes[:published] ||= 'false'
    Post.new(attributes)
  end

  it "should be valid" do
    new_post.should be_valid
  end

  it "should require title" do
    new_post(:title => '').should have(1).error_on(:title)
  end
end
