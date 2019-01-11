require_relative "../frequencies"

describe "#frequencies" do

  it 'Return an empty hash if text is empty' do
    the_frequencies = frequencies('')
    expect(the_frequencies).to eq({})
  end

  it 'should calculte the frequencies' do
    the_frequencies = frequencies('the lazy dog jumped over the brown fox')
    expect(the_frequencies['the']).to eq(2)
    expect(the_frequencies['dog']).to eq(1)
    expect(the_frequencies['cat']).to eq(nil)
  end


end