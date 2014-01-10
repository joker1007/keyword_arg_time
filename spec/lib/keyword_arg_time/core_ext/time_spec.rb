require 'spec_helper'

describe Time do
  describe ".now" do
    let(:now) { Time.now }
    subject { Time.now(hour: 10, min: 0, sec: 5, usec: 0) }

    it { should eq Time.local(now.year, now.mon, now.day, 10, 0, 5, 0) }
  end

  describe "#copy" do
    let(:time) { Time.local(2012, 4, 1, 10, 0, 0, 0) }

    context "given {hour: 12}" do
      subject { time.copy(hour: 12) }

      it { should eq Time.local(2012, 4, 1, 12, 0, 0, 0) }
    end

    context "given {hour: 12, sec: 10}" do
      subject { time.copy(hour: 12, sec: 10) }

      it { should eq Time.local(2012, 4, 1, 12, 0, 10, 0) }
    end
  end
end
