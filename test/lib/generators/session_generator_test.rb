require "test_helper"
require "generators/session/session_generator"

class SessionGeneratorTest < Rails::Generators::TestCase
  tests SessionGenerator
  destination Rails.root.join("tmp/generators")
  setup :prepare_destination

  # test "generator runs without errors" do
  #   assert_nothing_raised do
  #     run_generator ["arguments"]
  #   end
  # end
end
