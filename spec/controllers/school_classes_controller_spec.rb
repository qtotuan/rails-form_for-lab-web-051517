require 'rails_helper'

RSpec.describe SchoolClassesController, :type => :controller do


  before(:all) do
    @school_class = SchoolClass.create(title: "Rakes", room_number: 2)
  end

  describe "GET new" do
    it "returns http success" do
      get :new
      expect(response).to be_success
    end
  end

  describe "GET show" do
    it "returns http success" do
      # byebug
      get :show, id: @school_class.id
      expect(response).to be_success
    end
  end

  describe "GET edit" do
    it "returns http success" do
      get :edit, id: @school_class.id
      expect(response).to be_success
    end
  end

end
