def measure(repeate = 1)
  total_time = 0

    repeate.times do
      start_time = Time.now 
      yield
      total_time += Time.now - start_time
    end
    
  total_time / repeate.to_f
end