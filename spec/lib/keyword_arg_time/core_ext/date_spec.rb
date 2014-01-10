require 'spec_helper'

describe Date do
  describe ".today" do
    let(:today) { Date.today }
    subject { Date.today(mon: 10) }

    it { should eq Date.new(today.year, 10, today.day) }
  end

  describe "#copy" do
    let(:date) { Date.new(2013, 10, 1) }

    context "given {mon: 2}" do
      subject { date.copy(mon: 2) }

      it { should eq Date.new(2013, 2, 1) }
    end
  end
end
