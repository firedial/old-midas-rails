
Kind.create!(name: 'test')
Kind.create!(name: 'hoge')
Kind.create!(name: 'huga')

Purpose.create!(name: 'test')
Purpose.create!(name: 'hoge')
Purpose.create!(name: 'huga')

Place.create!(name: 'test')
Place.create!(name: 'hoge')
Place.create!(name: 'huga')

kinds = Kind.all
purposes = Purpose.all
places = Place.all

Balance.create!(amount: 300, item: 'test', kind: kinds.find(1), purpose: purposes.find(1), place: places.find(1), date: '2019/2/2')
Balance.create!(amount: 400, item: 'hoge', kind: kinds.find(1), purpose: purposes.find(2), place: places.find(1), date: '2019/2/3')
Balance.create!(amount: 500, item: 'huga', kind: kinds.find(2), purpose: purposes.find(3), place: places.find(1), date: '2019/2/4')
