# Graph generation example

## With Numo::Gnuplot

`Rubydown::RbMarkPlot` is extended class of `Numo::Gnuplot`

~~~ruby
rp = Rubydown::RbMarkPlot.new
rp.set title: "Example Plot"
rp.plot "sin(x)", w:"lines"
~~~
