
build::
	-rm -r node_modules
	npm install --omit dev
	npx esbuild --bundle main.js --outfile=app.cjs --minify --platform=node --format=cjs
