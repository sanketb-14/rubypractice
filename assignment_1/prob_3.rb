def hand_wash(n,m)
  user_sec = n * m * 34
  user_min  = (n * m * 34)/60
  correct_sec= 10 * m * 34
  correct_min = (10 * m * 34)/60
  user_min < correct_min ? "please wash your hand regularly, you have to spend minimum #{correct_min /24} minute daily for washing hand" : "you are doing good, you are spending #{user_min / 24} minute daily for washing hand"
end

puts hand_wash(15,30)