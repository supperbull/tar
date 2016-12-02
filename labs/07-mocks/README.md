## Mocks, stubs and spies

Jak obsługiwać rachunki takie jak niżej, ale z produktami o cenach w różnych
walutach.

![yunin](images/yunin.png)

```
bin/
├── console
spec/
├── integration
│   ├── exchange_money_spec.rb
│   └── report_spec.rb
├── spec_helper.rb
└── unit
    ├── money_spec.rb
    └── product_spec.rb
    └── order_spec.rb

bundle exec rspec
```

The purpose of the _*bin/console*_ script is to make experimenting
with this project easier. The script is a customization of
the script with the same name from the generated gem scaffold project:
```sh
bundle gem wallet
```

----

The _exchange_rate_2016-12-02.csv_ file contains data used in some tests.

| Currency | Exchange Rate |
| -------- | -------------:|
| EUR      | 4.50          |
| PLN      | 1.00          |
| USD      | 4.22          |



### Explore _money.rb_ and _order.rb_ in _irb_

First check if unit test are working.
```sh
bundle exec rspec -fd spec/unit
# bundle exec rspec -fd spec/integration
```

Next run
```sh
bin/console
```

### Experimenting with _Money_

```ruby
pl = Money.new 10, 'PLN'
us = Money.new 10, 'USD'
```

```ruby
ls # Pry

pl.value
pl.currency
us.currency

pl.to_s
pl * 5
pl + pl

show-source Order # Pry

Money.sum [pl, pl * 4]
Money.sum [pl, us, pl]
```


### Experimenting with _Product_

On _bin/console_ run this code.

```ruby
pl = Money.new 10, 'PLN'
order = Order.new 'FOO', '2016-11-28', [pl, pl * 4]
order.total_amount
```

TODO


### Experimenting with _Order_

Do you see problems in the code below?

```ruby
def self.sum(products)
  # products.group_by(&:currency).values.map(&:sum)
  products.map(&:price).group_by(&:currency).values.map(&:sum)
end

p1 = Product.new 'beer', Money.new(2, 'USD')
p2 = Product.new 'beer', Money.new(9, 'PLN')

order = Order.new 'Biedronka', '2016-11-28', [p1, p2, p1, p1]
Money.sum order.products
```

TODO


## Unit tests

* _money_spec.rb_ – `let`, `subject`
* _order_spec.rb_ – more examples of `let` and `subject`
* _product.rb_ – ensure isolation




## FAQ

1\. _require_ 'something' does not work.

Check `LOAD_PATH` on the command line:
```sh
ruby -e 'puts $LOAD_PATH'
```
or in _irb_:
```ruby
puts $LOAD_PATH
```
