require 'spec_helper'

describe Lita::Handlers::OnewheelFogo, lita_handler: true do
  it 'converts to fogo integer' do
    send_command 'fogo 30'
    expect(replies.last).to eq('$30 equals 1 fogo.')
  end

  it 'converts to fogo float' do
    send_command 'fogo 31'
    expect(replies.last).to eq('$30 equals 1.03 fogo.')
  end
end
