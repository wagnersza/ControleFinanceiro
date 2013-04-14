require 'test_helper'

class TransacoesControllerTest < ActionController::TestCase
  setup do
    @transacao = transacoes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:transacoes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create transacao" do
    assert_difference('Transacao.count') do
      post :create, transacao: { comprovante: @transacao.comprovante, data: @transacao.data, frequencia: @transacao.frequencia, nome: @transacao.nome, pagamento: @transacao.pagamento, pago: @transacao.pago, tipo: @transacao.tipo, valor: @transacao.valor, vencimento: @transacao.vencimento }
    end

    assert_redirected_to transacao_path(assigns(:transacao))
  end

  test "should show transacao" do
    get :show, id: @transacao
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @transacao
    assert_response :success
  end

  test "should update transacao" do
    put :update, id: @transacao, transacao: { comprovante: @transacao.comprovante, data: @transacao.data, frequencia: @transacao.frequencia, nome: @transacao.nome, pagamento: @transacao.pagamento, pago: @transacao.pago, tipo: @transacao.tipo, valor: @transacao.valor, vencimento: @transacao.vencimento }
    assert_redirected_to transacao_path(assigns(:transacao))
  end

  test "should destroy transacao" do
    assert_difference('Transacao.count', -1) do
      delete :destroy, id: @transacao
    end

    assert_redirected_to transacoes_path
  end
end
