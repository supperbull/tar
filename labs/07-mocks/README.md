## Mocks, stubs and spies

```
spec/
├── integration
│   ├── exchange_money_spec.rb
│   └── report_spec.rb
├── spec_helper.rb
└── unit
    ├── money_spec.rb
    └── order_spec.rb

bundle exec rspec
```

Check `LOAD_PATH` on the command line:
```sh
ruby -e 'puts $LOAD_PATH'
```
or in _irb_:
```ruby
puts $LOAD_PATH
```

Add _lib_ directory to Ruby `LOAD_PATH`:
```ruby
$LOAD_PATH.unshift File.join(__dir__, 'lib')
```

Currencies from _exchange_rate.csv_:

| Currency | Exchange Rate |
| -------- | -------------:|
| EUR      | 1.00          |
| PLN      | 4.42          |
| USD      | 4.18          |


### Explore _money.rb_ and _order.rb_ in _irb_

```sh
bundle exec rspec -fd spec/unit
```

Ruby console _irb_:

```ruby
$LOAD_PATH.unshift File.join(__dir__, 'lib')
require 'money'

pl = Money.new 100, 'PLN'
us = Money.new 100, 'USD'
pl.value
pl.currency
us.currency

pl.to_s
pl * 5
pl + pl

Money.sum [pl, pl * 4]
Money.sum [pl, us, pl]
```


### Unit tests

* _money_spec.rb_ – `let`, `subject`
* _order_spec.rb_ – more examples of `let` and `subject`
* _product.rb_ – ensure isolation

```ruby
$LOAD_PATH.unshift File.join(__dir__, 'lib')
require 'money'
require 'order'

pl = Money.new 10, 'PLN'
order = Order.new 'FOO', '2016-11-28', [pl, pl * 4]
order.total_amount
```

Do you see problems in the code below?

```ruby
$LOAD_PATH.unshift File.join(__dir__, 'lib')
require 'product'
require 'order'
require 'money'

p1 = Product.new 'beer', Money.new(2, 'USD')
p2 = Product.new 'beer', Money.new(9, 'PLN')

order = Order.new 'Biedronka', '2016-11-28', [p1, p2, p1, p1]
Money.sum order.products
```
