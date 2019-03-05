Rumale machine learning examples


~~~ruby
require 'rumale'
require 'rdatasets'

iris = RDatasets.load(:datasets, :iris)

iris_labels = iris['Species'].to_a
encoder = Rumale::Preprocessing::LabelEncoder.new
labels = encoder.fit_transform(iris_labels)
p "hoge"
~~~

~~~ruby
samples = Numo::DFloat[*iris[0..3].to_matrix.to_a]
~~~

~~~ruby
model = Rumale::LinearModel::SVC.new(
  reg_param: 0.0001,
  fit_bias: true,
  max_iter: 3000,
  random_seed: 1
)

model.fit(samples, labels)

p model.predict(samples).to_a
~~~
