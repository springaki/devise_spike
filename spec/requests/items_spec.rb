require 'spec_helper'

describe "Items" do
  describe "GET /items" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      sign_in_as_a_valid_user      
      get items_path
      response.status.should be(200)
    end
  end

 describe "GET /items" do
    it "test access to things, does not work without a signed in user" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get items_path
      response.status.should be(302)
    end
  end
end
