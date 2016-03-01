# encoding: UTF-8
require "test_helper"
describe ApplicationController do
    test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:livros)
  end
end