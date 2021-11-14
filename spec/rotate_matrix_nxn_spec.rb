# frozen_string_literal: true

RSpec.describe '.rotate_matrix_nxn' do
  {
    [
      ['11', '12', '13', '14', '15'],
      ['21', '22', '23', '24', '25'],
      ['31', '32', '33', '34', '35'],
      ['41', '42', '43', '44', '45'],
      ['51', '52', '53', '54', '55'],
    ] => [
      ['51', '41', '31', '21', '11'],
      ['52', '42', '32', '22', '12'],
      ['53', '43', '33', '23', '13'],
      ['54', '44', '34', '24', '14'],
      ['55', '45', '35', '25', '15'],
    ]
  }.each do |input, expected_output|
    context "when #{input}" do
      it "rotates to #{expected_output}" do
        expect(rotate_matrix_nxn(input)).to match_array(expected_output)
      end
    end
  end
end
