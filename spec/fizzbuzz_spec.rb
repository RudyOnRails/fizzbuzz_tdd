# chicago ruby fizzbuzz/tdd hacknight
require 'fizzbuzz'
require 'pry'


describe FizzBuzz do

  let(:buzz){FizzBuzz.new}

  it "creates a new FizzBuzz object" do
    expect(buzz).to eq(buzz)
  end

  it "range attr should be 1..100" do
    expect(buzz.range).to eq(1..100)
  end

  it "has a method named divisible_by_three" do
    expect(buzz.divisible_by_three(1)).to eq(1)
  end

  it "divisible_by_three returns true" do
    expect(buzz.divisible_by_three(3)).to eq("fizz")
  end

  it "has a method named divisible_by_five" do
    expect(buzz.divisible_by_five(5)).to eq("buzz")
  end

  it "should be divisible by both 3 and 5" do
    expect(buzz.divisible_by_both(15)).to eq("fizzbuzz!")
  end

  it "returns results when calling run method" do
    expect(buzz.play(1..3)).to eq("12fizz")
  end

  it "returns results when calling run method" do
    expect(buzz.play(1..5)).to eq("12fizz4buzz")
  end

end