require 'spec_helper'

describe DateTime do
  describe ".now" do
    let(:now) { DateTime.now }
    subject { DateTime.now(hour: 10, min: 0, sec: 5) }

    it { should eq DateTime.new(now.year, now.mon, now.day, 10, 0, 5) }
  end

  describe "#copy" do
    let(:time) { DateTime.new(2012, 4, 1, 10, 0, 0) }

    context "given {hour: 12}" do
      subject { time.copy(hour: 12) }

      it { should eq DateTime.new(2012, 4, 1, 12, 0, 0) }
    end

    context "given {hour: 12, sec: 10}" do
      subject { time.copy(hour: 12, sec: 10) }

      it { should eq DateTime.new(2012, 4, 1, 12, 0, 10) }
    end
  end
end
