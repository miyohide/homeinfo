srand(Time.now.to_i)

HomeinfoDatum.delete_all

100.times do
  date_and_time = Time.now.strftime("%Y/%m/%d %H:%M:%S.%3N")
  HomeinfoDatum.create(dateandtime: date_and_time,
                       temperature: sprintf("%.2f", rand(10.0..40.0)),
                       humidity: sprintf("%.2f", rand(1.0..90.0)))
end
