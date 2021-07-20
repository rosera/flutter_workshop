# Capstone Walkthrough

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
