# Lab 01 - Application Basics 

To get started building an application we should understand how an application is constructed.

In the image below there is an application with two distinct pages presented.

![Example application](https://github.com/rosera/flutter_workshop/blob/main/images/wk2-example-mobile-sketch.png "Flutter Workshop")

User interfaces in Flutter are constructed from Widgets.
Widgets are a representation of a user interface element.
In the starter code application we used a `Text` and `Floating Action Bar` widgets.

## Main Screen

In the main screen shown below we have a header and a list of items containing months of the year.

![Main page](https://github.com/rosera/flutter_workshop/blob/main/images/wk2-example-mobile-main.png "Flutter Workshop")

To recreate this effect in Flutter we would need:

| Item  | Widget | Description |
|-------|--------|-------------|
| Header | AppBar | Header for an application |
| List   | ListView | A grouping of information |

The above items provide the building blocks requried for the main screen.

## Details Screen

In the details screen shown below we have a header and text displaying the selected month.

![Details page](https://github.com/rosera/flutter_workshop/blob/main/images/wk2-example-mobile-details.png "Flutter Workshop")

To recreate this effect in Flutter we would need:

| Item   | Widget | Description |
|--------|--------|-------------|
| Header | AppBar | Header for an application |
| Text   | Text   | A Text field |

The above items provide the building blocks required for the details screen
