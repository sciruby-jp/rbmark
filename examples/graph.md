# Graph generation example

## With [Numo::Gnuplot](https://github.com/ruby-numo/numo-gnuplot)

`Rubydown::RbMarkPlot` is extended class of `Numo::Gnuplot`

~~~ruby
rp = Rubydown::RbMarkPlot.new
rp.set title: "Example Plot"
rp.plot "sin(x)", w:"lines"
~~~
