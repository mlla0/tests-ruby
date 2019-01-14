def time_string(a)
	seconds = a.divmod(60) # => [minutes à recalculer, secondes]
	minutes = seconds[0].divmod(60) # => [heures, minutes]
	return "#{"%02d" % minutes[0]}" + ":" + "#{"%02d" % minutes[1]}" + ":" + "#{"%02d" % seconds[1]}"
end