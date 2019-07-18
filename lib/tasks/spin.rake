task({ :spin => :environment}) do
  # spinners = TTY::Spinner::Multi.new

  # sp1 = spinners.register "[:spinner] one"
  # sp2 = spinners.register "[:spinner] two"
  # sp3 = spinners.register "[:spinner] three"

  # sp1.auto_spin
  # sp2.auto_spin
  # sp3.auto_spin

  # sleep(3)
  
  # sp1.success
  # sleep(3)
  # sp2.success
  # sleep(3)
  # sp3.success

  spinners = TTY::Spinner::Multi.new("[:spinner] Top level spinner")

  sp1 = spinners.register "[:spinner] one"
  sp2 = spinners.register "[:spinner] two"
  sp3 = spinners.register "[:spinner] three"
  
  sp1.auto_spin
  sp2.auto_spin
  sp3.auto_spin
  
  sleep(10)
  sp1.success
  sleep 10
  sp2.success
  sleep 12
  sp3.success
end
