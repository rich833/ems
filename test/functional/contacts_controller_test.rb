require 'test_helper'

class ContactsControllerTest < ActionController::TestCase
  setup do
    @contact = contacts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:contacts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create contact" do
    assert_difference('Contact.count') do
      post :create, contact: { business: @contact.business, city: @contact.city, county: @contact.county, email: @contact.email, fax: @contact.fax, first_name: @contact.first_name, job_description: @contact.job_description, landline: @contact.landline, last_name: @contact.last_name, mobile: @contact.mobile, number: @contact.number, postcode: @contact.postcode, sector: @contact.sector, street: @contact.street, website: @contact.website }
    end

    assert_redirected_to contact_path(assigns(:contact))
  end

  test "should show contact" do
    get :show, id: @contact
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @contact
    assert_response :success
  end

  test "should update contact" do
    put :update, id: @contact, contact: { business: @contact.business, city: @contact.city, county: @contact.county, email: @contact.email, fax: @contact.fax, first_name: @contact.first_name, job_description: @contact.job_description, landline: @contact.landline, last_name: @contact.last_name, mobile: @contact.mobile, number: @contact.number, postcode: @contact.postcode, sector: @contact.sector, street: @contact.street, website: @contact.website }
    assert_redirected_to contact_path(assigns(:contact))
  end

  test "should destroy contact" do
    assert_difference('Contact.count', -1) do
      delete :destroy, id: @contact
    end

    assert_redirected_to contacts_path
  end
end
