Given(/^I land on help popup$/) do
  actual_value = find_element(id: "alertTitle").text
  if actual_value != "Help"
    fail("Expected value is 'Help', but actual value was #{actual_value}")
  end
end

When(/^I click on Got it button$/) do
  find_element(id: "button1").click
end

Then(/^I land on Area screen$/) do
  actual_value = find_element(id: "toolbar").find_element(xpath: ".//android.widget.TextView").text
  if actual_value != "Area"
    fail("Expected value is 'Area', but actual value was #{actual_value}")
  end
end