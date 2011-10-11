require 'spec_helper'

describe PostsController do
  include Sorcery::TestHelpers::Rails

  def login
    login_user(User.create!(:email => "test@mail.com",
                            :password => "111111",
                            :password_confirmation => "111111"))
  end

  it "new action should not render new template without login" do
    get :new
    response.should_not render_template(:new)
  end

  it "create action should not render new template without login" do
    get :create
    response.should_not render_template(:create)
  end

  it "should not get posts without login" do
    get :index
    response.should_not render_template(:index)
  end

  it "new action should render new template" do
    login
    get :new
    response.should render_template(:new)
  end

  it "create action should render new template when model is invalid" do
    login
    post :create
    response.should render_template(:new)
  end

  it "should get posts" do
    login
    Post.create!(:title => "title")
    Post.create!(:title => "title1")
    get :index
    assigns(:posts).should_not be_nil
    assigns(:posts).count.should == 2
  end

end
