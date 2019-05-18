Dado("que acesse {string}") do |url|
  visit url
end

Quando("clicar no elemento {string}") do |selector|
  find(selector).click
end

Então("procure pelo elemento {string}") do |selector|
  expect(page).to have_selector(selector)
end