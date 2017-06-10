require 'rails_helper'

RSpec.describe StudentsController, :type => :controller do

  before(:all) do
    @student = Student.create()
  end

  describe "GET new" do
    it "returns http success" do
      get :new
      expect(response).to be_success
    end
  end

  describe "GET show" do
    it "returns http success" do
      get :show, id: @student.id
      expect(response).to be_success
    end
  end

  describe "GET edit" do
    it "returns http success" do
      get :edit, id: @student.id
      expect(response).to be_success
    end
  end

end
