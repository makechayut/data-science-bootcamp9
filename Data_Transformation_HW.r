## Q1. Carrier with the highest minutes delayed in 2013, and the amount of minutes delayed in total of each specific carrier
flights <- left_join(flights, airlines)

flights %>%
  group_by(name, carrier, year) %>%
  filter(dep_delay != "NULL") %>%
  summarize(sum_delay = sum(dep_delay)) %>%
  arrange(desc(sum_delay))

## Q2. The busiest airports in both (origin, destination) in 2013.

flights %>%
  group_by(origin, year) %>%
  count(origin) %>%
  arrange(desc(n))

flights %>%
  group_by(dest, year) %>%
  count(dest) %>%
  arrange(desc(n))

## Q3. The busiest month(highest number of flights in a month in 2013)

flights %>%
  group_by(month, year) %>%
  count(month) %>%
  arrange(desc(n))

## Q4. Carrier with the highest amount of flights in 2013

flights %>%
  group_by(name, year) %>%
  count(name) %>%
  arrange(desc(n))

## Q5. Carrier with the highest minutes in-air in 2013
flights %>%
  group_by(name, year) %>%
  filter(air_time != "NULL") %>%
  summarize(min_in_air = sum(air_time)) %>%
  arrange(desc(min_in_air))

## Q6. Carrier with the highest travel-distance in 2013
flights %>%
  group_by(name, year) %>%
  summarize(sum_dis = sum(distance)) %>%
  arrange(desc(sum_dis))

## Q7. Find all flights that departed between midnight and 6AM
flights %>%
  select(flight, carrier, name, dep_time) %>%
  filter(between(dep_time, 0000, 0600))

## Q8. Find all flights that were operated by United, American, or Delta
flights %>%
  select(flight, carrier, name) %>%
  filter(grepl("United|American|Delta", flights$name))

## Q9. Find all flights that arrived more than two hours late, but didn’t leave late
flights %>%
  select(flight, carrier, arr_delay, dep_delay) %>%
  filter(dep_delay <= 0 & arr_delay >= 120) %>%
  arrange(arr_delay)

## Q10. Which day has the most amount of flight in December
flights %>%
  group_by(month, day) %>%
  filter(month == 12) %>%
  count(day) %>%
  arrange(desc(n))
