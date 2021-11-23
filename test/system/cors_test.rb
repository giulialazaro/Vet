require "application_system_test_case"

class CorsTest < ApplicationSystemTestCase
  setup do
    @cor = cors(:one)
  end

  test "visiting the index" do
    visit cors_url
    assert_selector "h1", text: "Cors"
  end

  test "creating a Cor" do
    visit cors_url
    click_on "New Cor"

    fill_in "Descricao", with: @cor.descricao
    click_on "Create Cor"

    assert_text "Cor was successfully created"
    click_on "Back"
  end

  test "updating a Cor" do
    visit cors_url
    click_on "Edit", match: :first

    fill_in "Descricao", with: @cor.descricao
    click_on "Update Cor"

    assert_text "Cor was successfully updated"
    click_on "Back"
  end

  test "destroying a Cor" do
    visit cors_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cor was successfully destroyed"
  end
end
