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


## Notes

- Make sure to add the directory containing the script to your system's PATH environment variable if you want to call it from any terminal.
- The script will create a `desc.txt` file in each directory with a brief description of its purpose.
