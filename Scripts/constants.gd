extends Node
class_name FolderCreatorConstants

const FOLDERS := {
	"Scenes": "Scenes",
	"Scripts": "Scripts",
	"Resources": "Resources",
	"Art": "Art",
}

const SUBFOLDERS := {         
	"Art": ["Fonts", "Images", "Sounds"],
}

const BUTTON_CREATE : String = "Create a structure"
const DIALOG_TITLE  : String = "Create a folder structure"
const NAME_LABEL    : String = "Structure Name:"
const SUCCESS_MSG   : String = "Folders were created successfully"
const EXISTS_MSG    : String = "Such a folder already exists"
const OPEN_ERR_MSG  : String = "Couldn't open res://"

const CHECKBOX_LABELS := {
	"Scenes":    " Scenes",
	"Scripts":   " Scripts",
	"Resources": " Resources",
	"Art":       " Art",
}
