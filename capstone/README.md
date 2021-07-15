# REST API

An example Capstone project using Google Cloud Storage.

| Section | Description |
|---------|-------------|
| JSON    | Example JSON file illustrating how to set up a hosted file for API |
| MAIN    | Example Flutter main page that consumes the JSON file |
| DETAIL  | Example Flutter details page that shows information from the main page | 


Our example application will look similar to the images below:

![Capstone Template](https://github.com/rosera/flutter_workshop/blob/main/images/capstone-template.png "Capstone Sketch")

## JSON

Consuming information from a remote JSON object.

1. Create a JSON file e.g. Marvel Phase 1

```yaml
{
    "data": [
        {
            "id": "p1-1",
            "title": "Iron Man",
            "image": "https://upload.wikimedia.org/wikipedia/en/0/02/Iron_Man_%282008_film%29_poster.jpg"
        },
        {
            "id": "p1-2",
            "title": "The Incredible Hulk",
            "image": "https://upload.wikimedia.org/wikipedia/en/f/f0/The_Incredible_Hulk_%28film%29_poster.jpg"
        },
        {
            "id": "p1-3",
            "title": "Iron Man 2",
            "image": "https://upload.wikimedia.org/wikipedia/en/e/ed/Iron_Man_2_poster.jpg"
        },
        {
            "id": "p1-4",
            "title": "Thor",
            "image": "https://upload.wikimedia.org/wikipedia/en/9/95/Thor_%28film%29_poster.jpg"
        },
        {
            "id": "p1-5",
            "title": "Captain America: The First Avenger",
            "image": "https://upload.wikimedia.org/wikipedia/en/3/37/Captain_America_The_First_Avenger_poster.jpg"
        },
        {
            "id": "p1-6",
            "title": "Marvel's The Avengers",
            "image": "https://upload.wikimedia.org/wikipedia/en/8/8a/The_Avengers_%282012_film%29_poster.jpg"
        }
    ]
}
```

__NOTE:__ Example URL is available to test against
```bash
https://storage.googleapis.com/spl-api/marvel.json
```

2. Hosting a JSON file

Below are the options presented previously.

- [x] Cloud Storage 
- [x] Cloud Run
- [x] Firebase Firestore


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
| Local    | main.dart | loadLocalData | assets/marvel.json | 
| Remote   | main.dart | loadRemoteData | https://storage.googleapis.com/spl-api/marvel.json |



## Details

The file `details.dart` includes the following structure


The details class displays information about the selected item from the main page.


## MODEL 

The file `model.dart` includes the following structure


The model class purpose is to work with external data sources.
To add a different file, ensure the structure matches on to the data source to be used.



## Final Project Images

Main

![Capstone Main Page](https://github.com/rosera/flutter_workshop/blob/main/images/capstone-main.png "Capstone Main")

Details

![Capstone Details Page](https://github.com/rosera/flutter_workshop/blob/main/images/capstone-details.png "Capstone Details")
