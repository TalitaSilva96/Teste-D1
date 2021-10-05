Before do
  page.current_window.resize_to(1440, 900)
end

After do |cena|
  name = cena.name
  pago.save_screenshot("screenshot/#{name}.png")
  log shot
end
