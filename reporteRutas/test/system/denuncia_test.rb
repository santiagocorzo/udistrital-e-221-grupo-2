require "application_system_test_case"

class DenunciaTest < ApplicationSystemTestCase
  setup do
    @denuncium = denuncia(:one)
  end

  test "visiting the index" do
    visit denuncia_url
    assert_selector "h1", text: "Denuncia"
  end

  test "creating a Denuncium" do
    visit denuncia_url
    click_on "New Denuncium"

    fill_in "Comentario", with: @denuncium.comentario
    fill_in "Dni", with: @denuncium.dni
    fill_in "Email", with: @denuncium.email
    fill_in "Fecha", with: @denuncium.fecha
    fill_in "Id Ruta", with: @denuncium.id_ruta
    fill_in "Nombre", with: @denuncium.nombre
    fill_in "Telefono", with: @denuncium.telefono
    click_on "Create Denuncium"

    assert_text "Denuncium was successfully created"
    click_on "Back"
  end

  test "updating a Denuncium" do
    visit denuncia_url
    click_on "Edit", match: :first

    fill_in "Comentario", with: @denuncium.comentario
    fill_in "Dni", with: @denuncium.dni
    fill_in "Email", with: @denuncium.email
    fill_in "Fecha", with: @denuncium.fecha
    fill_in "Id Ruta", with: @denuncium.id_ruta
    fill_in "Nombre", with: @denuncium.nombre
    fill_in "Telefono", with: @denuncium.telefono
    click_on "Update Denuncium"

    assert_text "Denuncium was successfully updated"
    click_on "Back"
  end

  test "destroying a Denuncium" do
    visit denuncia_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Denuncium was successfully destroyed"
  end
end
