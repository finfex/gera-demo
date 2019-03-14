require 'factory_bot'

puts 'Seed database'

FactoryBot.create :rate_source_exmo
FactoryBot.create :rate_source_cbr
FactoryBot.create :rate_source_cbr_avg
FactoryBot.create :rate_source_manual

Money::Currency.all.each { |cur| Gera::PaymentSystem.create! name: cur.name, currency: cur }

Gera::CBRRatesWorker.new.perform
Gera::EXMORatesWorker.new.perform
Gera::DirectionsRatesWorker.new.perform
