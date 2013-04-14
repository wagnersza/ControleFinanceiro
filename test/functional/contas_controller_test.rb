require 'test_helper'

class ContasControllerTest < ActionController::TestCase
  setup do
    @conta = contas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:contas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create conta" do
    assert_difference('Conta.count') do
      post :create, conta: { agencia: @conta.agencia, descricao: @conta.descricao, juros: @conta.juros, limite: @conta.limite, nome: @conta.nome, numero: @conta.numero, saldo: @conta.saldo, tipo: @conta.tipo, vencimento: @conta.vencimento }
    end

    assert_redirected_to conta_path(assigns(:conta))
  end

  test "should show conta" do
    get :show, id: @conta
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @conta
    assert_response :success
  end

  test "should update conta" do
    put :update, id: @conta, conta: { agencia: @conta.agencia, descricao: @conta.descricao, juros: @conta.juros, limite: @conta.limite, nome: @conta.nome, numero: @conta.numero, saldo: @conta.saldo, tipo: @conta.tipo, vencimento: @conta.vencimento }
    assert_redirected_to conta_path(assigns(:conta))
  end

  test "should destroy conta" do
    assert_difference('Conta.count', -1) do
      delete :destroy, id: @conta
    end

    assert_redirected_to contas_path
  end
end
