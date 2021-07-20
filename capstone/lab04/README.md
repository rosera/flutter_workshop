# Capstone Walkthrough 

Our example application will look similar to the images below:

![Capstone Template](https://github.com/rosera/flutter_workshop/blob/main/images/capstone-template.png "Capstone Sketch")

## MAIN

The file `main.dart` includes the following structure

| Item | Description |
|------|-------------|
| import | Required packages for the application |
| class  | Definitions of variables and methods  |

The main class displays information about the downloaded data.

__NOTE:__

The application supports both local and remote hosted JSON.

| Access   | File | Method | Data Source |
|----------|------|--------|-------------|
| Remote   | main.dart | loadRemoteData | https://storage.googleapis.com/spl-api/marvel.json |


## MODEL 

The file `model.dart` includes the following structure


The model class purpose is to work with external data sources.
To add a different file, ensure the structure matches on to the data source to be used.
