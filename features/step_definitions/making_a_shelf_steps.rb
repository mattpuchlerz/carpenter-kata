def get_pieces_from pieces_string
  pieces_string.split(/\s*,\s*/).map { |piece| piece.to_i }
end

Given /^(?:a piece|pieces) in the inventory that measures? "([^\"]*)"$/ do |pieces_string|
  pieces = get_pieces_from pieces_string
  pending # express the regexp above with the code you wish you had
end

When /^I make a shelf that measures "([^\"]*)"$/ do |length|
  pending # express the regexp above with the code you wish you had
end

Then /^I should have (?:a piece|pieces) that measures? "([^\"]*)"$/ do |pieces_string|
  pieces = get_pieces_from pieces_string
  pending # express the regexp above with the code you wish you had
end

Then /^I should have (?:a piece|pieces) left in the inventory that measures? "([^\"]*)"$/ do |pieces_string|
  pieces = get_pieces_from pieces_string
  pending # express the regexp above with the code you wish you had
end

Then /^I should have no pieces left in the inventory$/ do
  Then 'I should have a piece left in the inventory that measures ""'
end
