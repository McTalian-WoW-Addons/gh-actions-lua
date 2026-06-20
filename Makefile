
build::
	-rm -r node_modules
	npm install --omit dev
	npx esbuild --bundle main.js --outfile=app.js --minify --platform=node --format=esm --banner:js="import { createRequire } from 'node:module'; const require = createRequire(import.meta.url);"
