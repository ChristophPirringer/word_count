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

  it("returns the number '2' for the word 'and' in the sentence 'me and old man anderson and his dog'") do
    expect(("me and old man anderson and his dog").word_count("and")).to(eq(2))
  end

  it("As per exercise objective, returns the number '2' for the word 'peck' in the sentence 'If Peter Piper picked a peck of pickled peppers, where's the peck of pickled peppers Peter Piper picked?'") do
    expect(("If Peter Piper picked a peck of pickled peppers, where's the peck of pickled peppers Peter Piper picked?").word_count("peck")).to(eq(2))
  end

end
