require 'test_helper'

class DoencaPessoasControllerTest < ActionController::TestCase
  setup do
    @doenca_pessoa = doenca_pessoas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:doenca_pessoas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create doenca_pessoa" do
    assert_difference('DoencaPessoa.count') do
      post :create, doenca_pessoa: { data: @doenca_pessoa.data, observacao: @doenca_pessoa.observacao }
    end

    assert_redirected_to doenca_pessoa_path(assigns(:doenca_pessoa))
  end

  test "should show doenca_pessoa" do
    get :show, id: @doenca_pessoa
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @doenca_pessoa
    assert_response :success
  end

  test "should update doenca_pessoa" do
    patch :update, id: @doenca_pessoa, doenca_pessoa: { data: @doenca_pessoa.data, observacao: @doenca_pessoa.observacao }
    assert_redirected_to doenca_pessoa_path(assigns(:doenca_pessoa))
  end

  test "should destroy doenca_pessoa" do
    assert_difference('DoencaPessoa.count', -1) do
      delete :destroy, id: @doenca_pessoa
    end

    assert_redirected_to doenca_pessoas_path
  end
end
