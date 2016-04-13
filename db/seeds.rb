100.times do
  srand(Time.now.to_i)
  date_and_time = Time.now.strftime("%Y/%m/%d %H:%M:%S.%3N")
  h = Humidity.create(humidity: sprintf("%.2f", rand(1.0..90.0)))
  t = Temperature.create(temperature: sprintf("%.2f", rand(10.0..40.0)))
  HomeinfoDatum.create(dateandtime: date_and_time,
                       temperature_id: t.id,
                       humidity_id: h.id)
end
