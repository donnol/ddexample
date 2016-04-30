# 主逻辑
module.exports =
  activate: ->
	#   添加动作“在光标处插入当前时间”
	  atom.commands.add 'atom-text-editor',
	  'ddexample:insert-text': (event) ->
		  editor = @getModel()
		  editor.insertText(new Date().toLocaleString())
		#   添加动作“在控制台输出hello world”
	  atom.commands.add 'atom-text-editor',
	  'ddexample:console': (event) =>
		  @console()

  #注意缩进
  console: ->
	  console.log 'hello world'
