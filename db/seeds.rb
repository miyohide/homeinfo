srand(Time.now.to_i)

HomeinfoDatum.delete_all

100.times do
  date_and_time = Time.now.strftime("%Y/%m/%d %H:%M:%S")
  HomeinfoDatum.create(dateandtime: date_and_time,
                       temperature: sprintf("%.2f", rand(10.0..40.0)),
                       humidity: sprintf("%.2f", rand(1.0..90.0)),
                       ido: sprintf("%.5f", rand(35.4450..35.4460)),
                       keido: sprintf("%.5f", rand(139.5930..139.5940)),
                       run_count: "1")
  sleep(1.1)
end
