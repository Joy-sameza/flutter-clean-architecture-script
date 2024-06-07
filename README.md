# Flutter Clean Architecture Folder Structure Script

This repository contains a Windows shell script to create a folder structure for a Flutter project following clean architecture principles.

## Usage

1. Clone the repository or download the `create_clean_architecture_structure.bat` file.
2. Open a command prompt or PowerShell.
3. Navigate to the directory where the script is located.
4. Run the script by specifying the path where you want to create the folder structure. For example:

    ```batch
    create_clean_architecture_structure.bat C:\Projects\MyFlutterApp
    ```

5. If the specified path does not exist, the script will display an error message.
6. When prompted, enter the list of features separated by spaces. For example:

    ```batch
    Enter the list of features (separated by spaces): authentication user_profile dashboard
    ```

## Example

If you run the script with the path `C:\Projects\MyFlutterApp` and features `authentication` and `user_profile`, the following folder structure will be created:

```txt
C:\Projects\MyFlutterApp
└── lib
├── core
│ ├── error
│ │ └── desc.txt
│ ├── usecases
│ │ └── desc.txt
│ └── utils
│ └── desc.txt
├── features
│ ├── authentication
│ │ ├── data
│ │ │ ├── datasources
│ │ │ │ └── desc.txt
│ │ │ ├── models
│ │ │ │ └── desc.txt
│ │ │ ├── repositories
│ │ │ │ └── desc.txt
│ │ │ └── desc.txt
│ │ ├── domain
│ │ │ ├── entities
│ │ │ │ └── desc.txt
│ │ │ ├── repositories
│ │ │ │ └── desc.txt
│ │ │ ├── usecases
│ │ │ │ └── desc.txt
│ │ │ └── desc.txt
│ │ ├── presentation
│ │ │ ├── bloc
│ │ │ │ └── desc.txt
│ │ │ ├── pages
│ │ │ │ └── desc.txt
│ │ │ ├── widgets
│ │ │ │ └── desc.txt
│ │ │ └── desc.txt
│ │ └── desc.txt
│ ├── user_profile
│ │ ├── data
│ │ │ ├── datasources
│ │ │ │ └── desc.txt
│ │ │ ├── models
│ │ │ │ └── desc.txt
│ │ │ ├── repositories
│ │ │ │ └── desc.txt
│ │ │ └── desc.txt
│ │ ├── domain
│ │ │ ├── entities
│ │ │ │ └── desc.txt
│ │ │ ├── repositories
│ │ │ │ └── desc.txt
│ │ │ ├── usecases
│ │ │ │ └── desc.txt
│ │ │ └── desc.txt
│ │ ├── presentation
│ │ │ ├── bloc
│ │ │ │ └── desc.txt
│ │ │ ├── pages
│ │ │ │ └── desc.txt
│ │ │ ├── widgets
│ │ │ │ └── desc.txt
│ │ │ └── desc.txt
│ │ └── desc.txt
├── injection_container.dart
└── main.dart
```

## Notes

- **Add to PATH:** To easily call the script from any terminal, you can add the directory containing the script to your system's PATH environment variable. Follow these steps:
  1. Right-click on 'This PC' or 'Computer' on the desktop or in File Explorer.
  2. Select 'Properties'.
  3. Click 'Advanced system settings'.
  4. Click the 'Environment Variables' button.
  5. In the 'System variables' section, find the `Path` variable and select it. Click 'Edit'.
  6. Click 'New' and add the path to the directory containing your script. Click 'OK' to save.
  7. Open a new command prompt or PowerShell window to use the updated PATH.

- **Move to System32:** Alternatively, you can move the script to the `System32` folder, which is already in the PATH. Be cautious with this approach as it requires administrative privileges and can potentially affect system files:
  1. Copy `create_clean_architecture_structure.bat`.
  2. Navigate to `C:\Windows\System32`.
  3. Paste the script into this directory.
  4. You may be prompted for administrator permissions to move the file.

- The script will create a `desc.txt` file in each directory with a brief description of its purpose.
