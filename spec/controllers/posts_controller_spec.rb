require 'spec_helper'

describe PostsController do

  it "new action should render new template" do
    get :new
    response.should render_template(:new)
  end

  it "create action should render new template when model is invalid" do
    post :create
    response.should render_template(:new)
  end

  it "should get posts" do
    Post.create!(:title => "title")
    Post.create!(:title => "title1")
    get :index
    assigns(:posts).should_not be_nil
    assigns(:posts).count.should == 2
  end

end
