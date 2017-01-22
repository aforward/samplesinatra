require "message"

RSpec.describe Message, "#hello" do

  it "should support no input" do
    expect(Message.hello).to eq "Hello World"
  end

  it "should convert nil to default" do
    expect(Message.hello(nil)).to eq "Hello World"
  end

  it "should say your name" do
    expect(Message.hello("Andrew")).to eq "Hello Andrew"
  end

end