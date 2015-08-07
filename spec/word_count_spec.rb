require ("rspec")
require ("word_count")
#require ("pry")

describe ("String#word_count") do

  it("returns the number '1' for the word 'and' in the sentence 'me and myself'") do
    expect(("me and myself").word_count("and")).to(eq(1))
  end

  it("returns the number '3' for the word 'and' in the sentence 'me and myself and this and that'") do
    expect(("me and myself and this and that").word_count("and")).to(eq(3))
  end

end
