void main() {

  Map starWars = {"title": "Star Wars", "year": 1977};
  Map theEmpireStrikesBack = {"title": "The Empire Strikes Back", "year": 1980};

  Map listFilms = {"first": starWars, "second": theEmpireStrikesBack};
  
  Map firstFilm = listFilms['first'];
  
  String title  = firstFilm['title'];
  int    year   = firstFilm['year'];
  
  print (title);
  print (year);
}
