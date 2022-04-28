require "station"

describe Station do

  subject(:station) { described_class.new }

  it "makes an instance of station" do
    expect(station).to be_instance_of(Station)
  end
end
