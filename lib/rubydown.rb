require "rubydown/version"

require 'numo/narray'

require 'numo/gnuplot'
require 'base64'
require 'tempfile'


class Numo::NArray
  def to_html
    rows = self.to_a.map do |row|
      elems = row.map do |elem|
        "<td>#{elem}</td>"
      end
      "<tr>#{elems.join}</tr>"
    end
    "<table>#{rows.join}</table>"
  end
end

module Rubydown
  class RbMarkPlot < Numo::Gnuplot
    def plot(*args)
      super(*args)
      self
    end
  
    def splot(*args)
      super(*args)
      self
    end
  
    def _plot_splot(*args)
      @tempfile = Tempfile.open(['plot', '.png'])
      set terminal: 'png'
      set output: @tempfile.path
      super(*args)
    end
  
    def to_html
      img_b64 = Base64.encode64(File.binread(@tempfile))
      <<-HTML
        <img src='data:image/png;base64,#{img_b64}' />
      HTML
    end
  end

  class Error < StandardError; end
  # Your code goes here...
end
