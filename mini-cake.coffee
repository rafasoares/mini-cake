TASKS = {}

global.task = (name, deps, block) ->
	if typeof deps is 'function'
		block = deps
		deps = []

	TASKS[name] = new Task name, deps, block

class Task
	constructor: (@name, @deps, @action) ->

	execute: ->
		@action?()

	invoke: ->
		return if @already_run

		TASKS[dep]?.invoke() for dep in @deps
		@execute()
		@already_run = yes

require './tasks'

process.argv.forEach (arg) ->
	TASKS[arg]?.invoke()
