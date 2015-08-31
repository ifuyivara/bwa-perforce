module.exports =
  activate: ->
    atom.commands.add 'atom-workspace', "BWA Perforce:edit", => @edit()

  edit: ->
    # This assumes the active pane item is an editor
    fs = require 'fs'
    editor = atom.workspace.getActivePaneItem()
    file = editor?.buffer.file
    fs.chmodSync file?.path, '755'
    
