require 'spec_helper'

RSpec.describe "Prancecloud::App::DriveRouteHelper" do
  pending "add some examples to (or delete) #{__FILE__}" do
    let(:helpers){ Class.new }
    before { helpers.extend Prancecloud::App::DriveRouteHelper }
    subject { helpers }

    it "should return nil" do
      expect(subject.foo).to be_nil
    end
  end
end
