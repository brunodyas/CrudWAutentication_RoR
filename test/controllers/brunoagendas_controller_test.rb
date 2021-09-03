require "test_helper"

class BrunoagendasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @brunoagenda = brunoagendas(:one)
  end

  test "should get index" do
    get brunoagendas_url
    assert_response :success
  end

  test "should get new" do
    get new_brunoagenda_url
    assert_response :success
  end

  test "should create brunoagenda" do
    assert_difference('Brunoagenda.count') do
      post brunoagendas_url, params: { brunoagenda: { email: @brunoagenda.email, endereco: @brunoagenda.endereco, id_seq: @brunoagenda.id_seq, nome: @brunoagenda.nome, preco: @brunoagenda.preco } }
    end

    assert_redirected_to brunoagenda_url(Brunoagenda.last)
  end

  test "should show brunoagenda" do
    get brunoagenda_url(@brunoagenda)
    assert_response :success
  end

  test "should get edit" do
    get edit_brunoagenda_url(@brunoagenda)
    assert_response :success
  end

  test "should update brunoagenda" do
    patch brunoagenda_url(@brunoagenda), params: { brunoagenda: { email: @brunoagenda.email, endereco: @brunoagenda.endereco, id_seq: @brunoagenda.id_seq, nome: @brunoagenda.nome, preco: @brunoagenda.preco } }
    assert_redirected_to brunoagenda_url(@brunoagenda)
  end

  test "should destroy brunoagenda" do
    assert_difference('Brunoagenda.count', -1) do
      delete brunoagenda_url(@brunoagenda)
    end

    assert_redirected_to brunoagendas_url
  end
end
