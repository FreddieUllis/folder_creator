# Folder Creator

A Godot Engine 4 Editor plugin to scaffold a standard project folder layout with a single click.

## Features
- **Toolbar Button**: Adds a **Create a structure** button to the editor toolbar (uses `BUTTON_CREATE` in `constants.gd`) :contentReference[oaicite:0]{index=0}  
- **Configurable Main Folders**: Prompts for a **Structure Name** and presents checkboxes for **Scenes**, **Scripts**, **Resources**, and **Art** (defined in `FOLDERS`) :contentReference[oaicite:1]{index=1}  
- **Art Sub-Structure**: Always generates **Fonts**, **Images**, and **Sounds** under any selected **Art** folder (from `SUBFOLDERS`) :contentReference[oaicite:2]{index=2}  
- **Filesystem Refresh**: Rescans the FileSystem dock immediately after creation via `get_resource_filesystem().scan()` :contentReference[oaicite:3]{index=3}  

## Requirements
- Godot Engine 4.0 or higher (the plugin extends `EditorPlugin`) :contentReference[oaicite:4]{index=4}

## Installation
1. Clone or copy this repository into your project’s `res://addons/folder_creator/`.  
2. In Godot, open **Project → Project Settings → Plugins**, find **Folder Creator**, and click **Enable**.  
3. The plugin will preload `res://addons/folder_creator/Scripts/constants.gd`, so the folder must be named `folder_creator`. :contentReference[oaicite:5]{index=5}

## Usage
1. Click the **Create a structure** icon in the toolbar.  
2. Enter the desired **Structure Name**.  
3. Check which of **Scenes**, **Scripts**, **Resources**, and **Art** you want to generate.  
4. Click **Create a structure**—your folders will be created under `res://YourStructureName/` and appear immediately in the FileSystem dock. :contentReference[oaicite:6]{index=6}

## Configuration
To customize folder names, dialog titles, button labels, or messages, edit `Scripts/constants.gd`:  
```gdscript
const FOLDERS = { … }
const SUBFOLDERS = { … }
const BUTTON_CREATE = "Create a structure"
const DIALOG_TITLE = "Create a folder structure"
# etc.
``` :contentReference[oaicite:7]{index=7}

## Contributing
Pull requests, issues, and suggestions are welcome. Please fork the repo and work on feature branches.

## License
This project is licensed under the MIT License. :contentReference[oaicite:8]{index=8}

--------------
# Folder Creator

Плагин для редактора Godot Engine 4, который позволяет одним кликом создать стандартную структуру папок проекта.

## Возможности
- **Кнопка на панели инструментов**: добавляет кнопку **Create a structure** для быстрого вызова плагина.  
- **Настраиваемые папки**: запрашивает название структуры и предлагает галочки для создания папок **Scenes**, **Scripts**, **Resources**, **Art**.  
- **Подпапки для Art**: автоматически создаёт подпапки **Fonts**, **Images**, **Sounds** в папке **Art**.  
- **Обновление файловой системы**: после создания папок вкладка **FileSystem** обновляется автоматически.

## Требования
- Godot Engine 4.0 или выше.

## Установка
1. Клонируйте или скопируйте репозиторий в папку `res://addons/folder_creator/`.  
2. В Godot зайдите в **Project → Project Settings → Plugins**, найдите **Folder Creator** и нажмите **Enable**.

## Использование
1. Нажмите на иконку **Create a structure** на панели инструментов.  
2. Введите название структуры.  
3. Отметьте галочками нужные папки.  
4. Нажмите **Create a structure** — структура появится в `res://YourStructureName/` и сразу отобразится в файловой системе.

## Настройка
Для изменения названий папок, заголовков диалога или текста кнопок откройте и отредактируйте файл `Scripts/constants.gd`.

## Участие в развитии
Приглашаются pull request’ы, отчёты об ошибках и предложения. Пожалуйста, форкните репозиторий и работайте в отдельных ветках.

## Лицензия
Проект распространяется под лицензией MIT.
