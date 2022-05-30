# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

articles = Article.create([
	{ 
		title: 'Star Wars',
		body: 'Laborum in mollit cupidatat dolore pariatur anim eiusmod dolore dolor sit laborum Lorem adipisicing cillum. Cupidatat ut deserunt in velit amet proident nulla ea exercitation. Aliqua eu nisi enim irure culpa Lorem commodo occaecat in fugiat adipisicing.',
		importance: 6
	},
	{ 
		title: 'Star Trek',
		body: 'Enim occaecat tempor dolore labore cillum qui non in sint. Excepteur aliquip in Lorem qui incididunt laborum ut voluptate ex. Eu ipsum amet aliquip mollit reprehenderit amet Lorem aliquip magna ipsum fugiat ea eu. Ipsum minim ad nulla voluptate sunt exercitation. In officia ea in occaecat Lorem non veniam dolor nulla. Est in amet fugiat veniam.',
		importance: 2
	}
])