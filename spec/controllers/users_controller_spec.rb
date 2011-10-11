require 'spec_helper'

describe UsersController do

  describe "GET 'new'" do
    it "create action should render new template when model is invalid" do
      get :new
      response.should render_template(:new)
    end
  end

end
