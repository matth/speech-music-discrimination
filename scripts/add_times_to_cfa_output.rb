require 'json'

def num_mfcc_frames_in_cfa_frames( num_cfa_frames, block_size, step_size )
  block_size + ( num_cfa_frames - 1 ) * step_size
end

def num_samples_in_mfcc_frames( num_mfcc_frames, block_size, step_size )
  block_size + ( num_mfcc_frames - 1 ) * step_size
end


file     = File.open('audio/test.mp3.cfa.csv')

line_num = 0.0

data     = { }

file.each_line do |line|
  number   = line.to_i
  line_num = line_num + 1

  num_mfcc    = num_mfcc_frames_in_cfa_frames( line_num, 100.0, 50.0 )
  num_samples = num_samples_in_mfcc_frames( num_mfcc, 1024.0, 256.0 )
  time_in_sec = num_samples / 11025.0

  data[ time_in_sec ] = number

end

puts data.to_json
