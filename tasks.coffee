task 'make_mac_and_cheese', ['boil_water', 'buy_pasta', 'buy_cheese'], ->
	console.log 'Making Mac n Cheese!'

task 'boil_water', ['buy_pasta', 'buy_cheese'], ->
	console.log 'Boiling water...'

task 'buy_pasta', ['goto_store'], ->
	console.log 'Buying Pasta...'

task 'buy_cheese', ['goto_store'], ->
	console.log 'Buying Cheese...'

task 'goto_store', ->
	console.log 'Going to the store...'
