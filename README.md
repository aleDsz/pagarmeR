# pagarmeR
[![Build Status](https://travis-ci.org/aleDsz/pagarmeR.svg?branch=master)](https://travis-ci.org/aleDsz/pagarmeR) [![Coverage Status](https://coveralls.io/repos/github/aleDsz/pagarmeR/badge.svg?branch=master)](https://coveralls.io/github/aleDsz/pagarmeR?branch=master)

Pagar.me R library

## Documentation

* [Documentation](https://docs.pagar.me/)
* [Full API Guide](https://docs.pagar.me/reference)

## Getting Started

### Install

You can install via R

```r
install.packages("pagarmeR")
```


### Configure your API key

You can set your API key in R:

```r
library(pagarmeR)

PagarMe$api_key        <- "YOUR_API_KEY_HERE"
PagarMe$encryption_key <- "YOUR_ENCRYPTION_KEY_HERE"
```


### Using Pagar.me Checkout

See our [demo checkout](https://pagar.me/checkout).

More about how to use it [here](https://docs.pagar.me/docs/overview-checkout).


## Support
If you have any problem or suggestion please open an issue [here](https://github.com/aleDsz/pagarmeR/issues).


## License

Check [here](LICENSE).
