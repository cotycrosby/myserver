module.exports = {
	watchOptions: {
		ignored: /node_modules/,
		poll: 1000
	},
	entry: {
		// Multiple entries supported, just add another with (otherApp: './source/to/other/app.js')
		app: './src/app.js'
	},
	output: {
		filename:'[name].js',
		path: __dirname + '/build'
	},
	module: {
		rules: [
			{
				test: /\.(js|jsx)$/,
				exclude: /node_modules/,
				use: {
					loader: "babel-loader"
				}
			}
		]
	}
};