# rbplotly basic usage


~~~ruby
require 'rbplotly'

n = 100

x  = n.times.map { |i| i.to_f / (n - 1) }
y0 = n.times.map { rand(-2.0..2.0) + 5 }
y1 = n.times.map { rand(-2.0..2.0) }

trace0 = { x: x, y: y0, type: :scatter, mode: :markers }
trace1 = trace0.merge(y: y1, mode: :'markers+lines')

plot = Plotly::Plot.new(data: [trace0, trace1])
~~~

Here we replace the last trace range from -0.5 to 0.5


~~~ruby
plot.data.last.y = n.times.map { rand(-0.5..0.5) }
plot
~~~

Next we add a line trace with the center -5 and the range from -2.0 to 2.0.

~~~ruby
new_trace = { x: x, y: n.times.map { rand(-2.0..2.0) - 5 }, type: :scatter, mode: :lines }
plot.data.push(new_trace)
plot
~~~

Last of all we add the x,y titles.


~~~ruby
plot.layout.xaxis = { title: 'x title' }
plot.layout.yaxis = { title: 'y title' }
plot
~~~

