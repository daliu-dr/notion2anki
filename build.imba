import {spawn} from 'child_process'
import path from 'path'
import fs from 'fs'

# build the html pages
# webpack --mode=production

def run cmd, options
	Promise.new do |resolve, reject|
		const wc = spawn(cmd, options)
		wc.stdout.on('data') do |data|
			console.log data.toString!
		wc.stderr.on('data') do |data|
			console.log data.toString!
			reject(data)
		wc.on('close') do |code|
			resolve(code)

def build_process
	if !process.env.SKIP_WEBPACK
		await run('yarn', ['run', 'webpack', '--mode=production'])		  
	await run('/bin/cp', ['node_modules/sql.js/js/sql-memory-growth.js', 'node_modules/sql.js/js/sql.js'])
	await run('yarn', ['run', 'build-server'])

def make_pages
	console.log('skipping make_pages')
	# TODO: make it dynamic?
	# const cwd = path.join(__dirname, 'src/pages')
	# const directories = fs.readdirSync(cwd)
	# const pages = directories.filter do $1.match(/\.imba$/)

	# import './src/pages/test-page>'
	# console.log(<test-page>)
	# const pages 
	# for page in pages

make_pages!
build_process!