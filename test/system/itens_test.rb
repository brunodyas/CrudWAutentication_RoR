require "application_system_test_case"

class ItensTest < ApplicationSystemTestCase
  setup do
    @iten = itens(:one)
  end

  test "visiting the index" do
    visit itens_url
    assert_selector "h1", text: "Itens"
  end

  test "creating a Iten" do
    visit itens_url
    click_on "New Iten"

    fill_in "Id seq", with: @iten.id_seq
    fill_in "Level", with: @iten.level
    fill_in "Modelo", with: @iten.modelo
    fill_in "Nome", with: @iten.nome
    fill_in "Quantidade", with: @iten.quantidade
    click_on "Create Iten"

    assert_text "Iten was successfully created"
    click_on "Back"
  end

  test "updating a Iten" do
    visit itens_url
    click_on "Edit", match: :first

    fill_in "Id seq", with: @iten.id_seq
    fill_in "Level", with: @iten.level
    fill_in "Modelo", with: @iten.modelo
    fill_in "Nome", with: @iten.nome
    fill_in "Quantidade", with: @iten.quantidade
    click_on "Update Iten"

    assert_text "Iten was successfully updated"
    click_on "Back"
  end

  test "destroying a Iten" do
    visit itens_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Iten was successfully destroyed"
  end
end
