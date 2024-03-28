require './caesar_cipher'

describe '#caesar_cipher' do
  it 'modified string keeps the same case' do
    expect(caesar_cipher('AaBbCc', 4)).to eql('EeFfGg')
  end

  it 'letter should wrap from z to a' do
    expect(caesar_cipher('xyzab', 5)).to eql('cdefg')
  end

  it 'return modified string according to shift factor' do
    expect(caesar_cipher('What a string!', 5)).to eql('Bmfy f xywnsl!')
  end
end