require "test_helper"

class AppwebexempsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @appwebexemp = appwebexemps(:one)
  end

  test "should get index" do
    get appwebexemps_url
    assert_response :success
  end

  test "should get new" do
    get new_appwebexemp_url
    assert_response :success
  end

  test "should create appwebexemp" do
    assert_difference('Appwebexemp.count') do
      post appwebexemps_url, params: { appwebexemp: { email: @appwebexemp.email, endereco: @appwebexemp.endereco, id: @appwebexemp.id, nome: @appwebexemp.nome, sobrenome: @appwebexemp.sobrenome, telefone: @appwebexemp.telefone } }
    end

    assert_redirected_to appwebexemp_url(Appwebexemp.last)
  end

  test "should show appwebexemp" do
    get appwebexemp_url(@appwebexemp)
    assert_response :success
  end

  test "should get edit" do
    get edit_appwebexemp_url(@appwebexemp)
    assert_response :success
  end

  test "should update appwebexemp" do
    patch appwebexemp_url(@appwebexemp), params: { appwebexemp: { email: @appwebexemp.email, endereco: @appwebexemp.endereco, id: @appwebexemp.id, nome: @appwebexemp.nome, sobrenome: @appwebexemp.sobrenome, telefone: @appwebexemp.telefone } }
    assert_redirected_to appwebexemp_url(@appwebexemp)
  end

  test "should destroy appwebexemp" do
    assert_difference('Appwebexemp.count', -1) do
      delete appwebexemp_url(@appwebexemp)
    end

    assert_redirected_to appwebexemps_url
  end
end
