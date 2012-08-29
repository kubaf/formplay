require 'test_helper'

class DocumentSignatoriesControllerTest < ActionController::TestCase
  setup do
    @document_signatory = document_signatories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:document_signatories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create document_signatory" do
    assert_difference('DocumentSignatory.count') do
      post :create, document_signatory: { document_id: @document_signatory.document_id, person_id: @document_signatory.person_id, type: @document_signatory.type }
    end

    assert_redirected_to document_signatory_path(assigns(:document_signatory))
  end

  test "should show document_signatory" do
    get :show, id: @document_signatory
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @document_signatory
    assert_response :success
  end

  test "should update document_signatory" do
    put :update, id: @document_signatory, document_signatory: { document_id: @document_signatory.document_id, person_id: @document_signatory.person_id, type: @document_signatory.type }
    assert_redirected_to document_signatory_path(assigns(:document_signatory))
  end

  test "should destroy document_signatory" do
    assert_difference('DocumentSignatory.count', -1) do
      delete :destroy, id: @document_signatory
    end

    assert_redirected_to document_signatories_path
  end
end
