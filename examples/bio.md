# BioRuby Tutorial

## Trying Bioruby

Now test the following:

~~~ruby
require 'bio'
seq = Bio::Sequence::NA.new("atgcatgcaaaa")
~~~

~~~ruby
seq.complement
~~~

## Working with nucleic / amino acid sequences (Bio::Sequence class)

The `Bio::Sequence` class allows the usual sequence transformations and translations.

In the example below the DNA sequence `atgcatgcaaaa` is converted into the complemental strand and spliced into a subsequence; next, the nucleic acid composition is calculated and the sequence is translated into the amino acid sequence, the molecular weight calculated, and so on. When translating into amino acid sequences, the frame can be specified and optionally the codon table selected (as defined in [codontable.rb](https://github.com/bioruby/bioruby/blob/master/lib/bio/data/codontable.rb)).

~~~ruby
seq = Bio::Sequence::NA.new("atgcatgcaaaa")
~~~

~~~ruby
# complemental sequence (Bio::Sequence::NA object)
seq.complement
~~~

~~~ruby
seq.subseq(3,8) # gets subsequence of positions 3 to 8 (starting from 1)
~~~

~~~ruby
seq.gc_percent
~~~

~~~ruby
seq.composition
~~~

~~~ruby
seq.translate
~~~

~~~ruby
seq.translate(2)
~~~

~~~ruby
seq.translate(1,11)
~~~

~~~ruby
seq.translate.codes
~~~

~~~ruby
seq.translate.names
~~~

~~~ruby
seq.translate.composition
~~~

~~~ruby
seq.translate.molecular_weight
~~~

~~~ruby
seq.complement.translate
~~~
