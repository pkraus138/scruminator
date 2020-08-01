Capybara.register_driver :selenium_chrome_headless_js do |app|
  options = Selenium::WebDriver::Chrome::Options.new

  [
    "headless",
    "window-size=1280x1280",
    "disable-gpu",
  ].each { |arg| options.add_argument(arg) }

  Capybara::Selenium::Driver.new(app, browser: :chrome, options: options)
end

RSpec.configure do |config|
  config.before(:each, type: :system) do
    driven_by :rack_test
  end

  config.before(:each, type: :system, js: true) do
    driven_by :selenium_chrome_headless_js
  end
end
