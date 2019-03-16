require 'factory_bot'

puts 'Seed database'

FactoryBot.create :rate_source_exmo, name: 'exmo'
FactoryBot.create :rate_source_cbr, name: 'Russian Central Bank'
FactoryBot.create :rate_source_cbr_avg, name: 'Russian Central Bank (avg)'
FactoryBot.create :rate_source_manual, name: 'Manual'
FactoryBot.create :rate_source_bitfinex, name: 'bitfinex'

Money::Currency.all.each { |cur| Gera::PaymentSystem.create! name: cur.name, currency: cur }

Gera::CBRRatesWorker.new.perform
Gera::EXMORatesWorker.new.perform
Gera::DirectionsRatesWorker.new.perform
Gera::BitfinexRatesWorker.new.perform
