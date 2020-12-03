
<!-- README.md is generated from README.Rmd. Please edit that file -->

# geombeer <img src="man/img/logo.png" align="right" height=230/>

<!-- badges: start -->

![](https://img.shields.io/badge/AndrewLi-STAT545-green)

<!-- badges: end -->

`geombeer` is a package that that creates cool images of refreshing
alcoholic beverages and yummy bar food. This was mainly built for my [R
Shiny](https://andrewcli.shinyapps.io/andrews_bar/) app but I think
anyone can enjoy this package.

### What’s in the package so far?

  - `geom_beer()` creates a can of ice cold beer
  - `geom_redwine()`creates a bottle of red wine
  - `geom_whitewine()`creates a bottle of white wine
  - `geom_gin()` creates a bottle of gin (aesthetics inspired by [Bombay
    sapphire](https://www.bombaysapphire.com))
  - `geom_hotdog()`creates a yummy hot dog

### Installation

You can install from [GitHub](https://github.com/andr3wli/geombeer)
with:

``` r
devtools::install_github("andr3wli/geombeer")
```

### Example: `geom_beer()`

This is how you create a cold one in r

``` r
library(ggplot2)
library(geombeer)

ggplot() +
  geom_beer() +
  theme_void()
```

<img src="man/figures/README-example-1.png" width="100%" /> \#\#\#
Example: `geom_gin()`

``` r
ggplot() +
  geom_gin() +
  theme_void()
```

<img src="man/figures/README-unnamed-chunk-4-1.png" width="100%" />

### Example: `geom_hotdog()`

``` r
ggplot() +
  geom_hotdog() +
  theme_void()
```

<img src="man/figures/README-unnamed-chunk-5-1.png" width="100%" />

### Acknowledgements

A huge thank you to [Georgios
Karamanis](https://t.co/crHTOelx3S?amp=1)\! He is the one who created
the original hot dog and I modified his code to give it some friends.
Georgios is super nice and I am grateful for his help and code.

### Code of Conduct

Please note that the geombeer project is released with a [Contributor
Code of
Conduct](https://contributor-covenant.org/version/2/0/CODE_OF_CONDUCT.html).
By contributing to this project, you agree to abide by its terms.
