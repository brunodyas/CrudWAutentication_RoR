require "application_system_test_case"

class BrunoagendasTest < ApplicationSystemTestCase
  setup do
    @brunoagenda = brunoagendas(:one)
  end

  test "visiting the index" do
    visit brunoagendas_url
    assert_selector "h1", text: "Brunoagendas"
  end

  test "creating a Brunoagenda" do
    visit brunoagendas_url
    click_on "New Brunoagenda"

    fill_in "Email", with: @brunoagenda.email
    fill_in "Endereco", with: @brunoagenda.endereco
    fill_in "Id seq", with: @brunoagenda.id_seq
    fill_in "Nome", with: @brunoagenda.nome
    fill_in "Preco", with: @brunoagenda.preco
    click_on "Create Brunoagenda"

    assert_text "Brunoagenda was successfully created"
    click_on "Back"
  end

  test "updating a Brunoagenda" do
    visit brunoagendas_url
    click_on "Edit", match: :first

    fill_in "Email", with: @brunoagenda.email
    fill_in "Endereco", with: @brunoagenda.endereco
    fill_in "Id seq", with: @brunoagenda.id_seq
    fill_in "Nome", with: @brunoagenda.nome
    fill_in "Preco", with: @brunoagenda.preco
    click_on "Update Brunoagenda"

    assert_text "Brunoagenda was successfully updated"
    click_on "Back"
  end

  test "destroying a Brunoagenda" do
    visit brunoagendas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Brunoagenda was successfully destroyed"
  end
end
