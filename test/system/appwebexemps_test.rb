require "application_system_test_case"

class AppwebexempsTest < ApplicationSystemTestCase
  setup do
    @appwebexemp = appwebexemps(:one)
  end

  test "visiting the index" do
    visit appwebexemps_url
    assert_selector "h1", text: "Appwebexemps"
  end

  test "creating a Appwebexemp" do
    visit appwebexemps_url
    click_on "New Appwebexemp"

    fill_in "Email", with: @appwebexemp.email
    fill_in "Endereco", with: @appwebexemp.endereco
    fill_in "Id", with: @appwebexemp.id
    fill_in "Nome", with: @appwebexemp.nome
    fill_in "Sobrenome", with: @appwebexemp.sobrenome
    fill_in "Telefone", with: @appwebexemp.telefone
    click_on "Create Appwebexemp"

    assert_text "Appwebexemp was successfully created"
    click_on "Back"
  end

  test "updating a Appwebexemp" do
    visit appwebexemps_url
    click_on "Edit", match: :first

    fill_in "Email", with: @appwebexemp.email
    fill_in "Endereco", with: @appwebexemp.endereco
    fill_in "Id", with: @appwebexemp.id
    fill_in "Nome", with: @appwebexemp.nome
    fill_in "Sobrenome", with: @appwebexemp.sobrenome
    fill_in "Telefone", with: @appwebexemp.telefone
    click_on "Update Appwebexemp"

    assert_text "Appwebexemp was successfully updated"
    click_on "Back"
  end

  test "destroying a Appwebexemp" do
    visit appwebexemps_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Appwebexemp was successfully destroyed"
  end
end
