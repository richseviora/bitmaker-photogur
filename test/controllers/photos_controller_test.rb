require 'test_helper'

class PhotosControllerTest < ActionController::TestCase
  test "should get show" do
    get :show, id: photos(:one)
    assert_response :success
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get create" do
    post :create, Photo.new
    assert_redirected_to photos_path
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: photos(:one)
    assert_response :success
  end

  test "should get update" do
    post :update, id: photos(:one), photo: {title:'Meow', author:'Purr', url: 'http://www.canada.com'}
    assert_redirected_to photo_path(photos(:one))
  end

  test "should get delete" do
    delete :destroy, id: photos(:one)
    assert_redirected_to photos_path
  end

end
