@tool
extends EditorPlugin
class_name FolderCreatorPlugin

const constants := preload("res://addons/folder_creator/Scripts/constants.gd")

var _btn: Button
var _dialog: ConfirmationDialog  


func _enter_tree() -> void:
	_btn = Button.new()
	_btn.text = constants.BUTTON_CREATE
	add_control_to_container(CONTAINER_TOOLBAR, _btn)
	_btn.pressed.connect(self._on_btn_pressed)

func _exit_tree() -> void:
	remove_control_from_container(CONTAINER_TOOLBAR, _btn)
	_btn.queue_free()

func _on_btn_pressed() -> void:
	_dialog = ConfirmationDialog.new()
	_dialog.title = constants.DIALOG_TITLE
	_dialog.ok_button_text = constants.BUTTON_CREATE

	var vbox: VBoxContainer = VBoxContainer.new()
	_dialog.add_child(vbox)

	var name_label: Label = Label.new()
	name_label.text = constants.NAME_LABEL
	vbox.add_child(name_label)

	var name_edit: LineEdit = LineEdit.new()
	vbox.add_child(name_edit)
	_dialog.register_text_enter(name_edit)

	var boxes := {}                       
	for key in constants.FOLDERS.keys():
		var chbox: CheckBox = CheckBox.new()
		chbox.text = constants.CHECKBOX_LABELS[key]
		chbox.pressed
		vbox.add_child(chbox)
		boxes[key] = chbox

	_dialog.confirmed.connect(func() -> void:
		_create_structure(name_edit.text.strip_edges(), boxes)
	)

	add_child(_dialog)
	_dialog.popup_centered()

func _create_structure(name: String, boxes: Dictionary) -> void:
	var dir: DirAccess = DirAccess.open("res://")
	if dir == null:
		_show(constants.OPEN_ERR_MSG); return
	if dir.dir_exists(name):
		_show(constants.EXISTS_MSG); return

	dir.make_dir(name)
	for key in constants.FOLDERS.keys():
		var chbox: CheckBox = boxes[key]
		if chbox.pressed:
			var base := "%s/%s" % [name, constants.FOLDERS[key]]
			dir.make_dir(base)
			if constants.SUBFOLDERS.has(key):
				for sub in constants.SUBFOLDERS[key]:
					dir.make_dir("%s/%s" % [base, sub])
					
	_show(constants.SUCCESS_MSG)
	get_editor_interface().get_resource_filesystem().scan()

func _show(msg: String) -> void:
	var acc_dialog: AcceptDialog = AcceptDialog.new()
	acc_dialog.dialog_text = msg
	add_child(acc_dialog)
	acc_dialog.popup_centered()
