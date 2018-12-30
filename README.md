# rubydown

[![Build status](https://ci.appveyor.com/api/projects/status/rroa24x9jgdwuka5?svg=true)](https://ci.appveyor.com/project/kozo2/rubydown)


*rubydown* is pure-Ruby [R Markdown](https://rmarkdown.rstudio.com/) clone.

## Quick Start

```
docker run -it -v c:/Users:/data ruby bash
gem install specific_install
gem specific_install https://github.com/sciruby-jp/rubydown.git
apt update
apt install gnuplot
rubydown -i /usr/local/bundle/gems/rubydown-0.1.0/examples/data_science.md -e /usr/local/bundle/gems/rubydown-0.1.0/templates/template.html.erb -o /data/YOURNAME/data_science.html
cp data_science.md /data/YOURNAME/data_science.md
```
