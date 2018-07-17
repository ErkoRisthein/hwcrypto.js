default: bower_components
	grunt

node_modules:
	npm install

bower_components: node_modules
	bower install

publish: bower_components
	grunt publish
	npm run convert-to-umd
	# only publish commited code
	test -z "`git status -s`" || echo "Must manually commit any generated code for Bower or Github releases"
