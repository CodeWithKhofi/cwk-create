#!/usr/bin/env bash
create_project(){
    # Project name
    echo " 🚀 Welcome to CWK Create"
    echo "Hello, dev! please provide a name for the project"
    sleep 0.5
    read -r project_name
    echo "creating project...."
    sleep 1
    project_path="$HOME/Desktop/$project_name"
    mkdir -p "$project_path"
    status_check=$?
    if [ $status_check -eq 0 ]; then
        echo "✅ Project ($project_name) has been created successfully!"
        echo "Project Directory: $project_path"
    else
        echo "❌ Failed to create project!"
        exit 1
    fi
}
create_asset_folder(){
    assets_folder="$project_path/assets"
    mkdir -p "$assets_folder"
    echo "hello $assets_folder"
}
# create_html_css_js(){}
create_project 
create_asset_folder
