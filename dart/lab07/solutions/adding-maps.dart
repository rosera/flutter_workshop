void main() {
  Map starWars = {"title": "Star Wars", "year": 1977};
  Map theEmpireStrikesBack = {"title": "The Empire Strikes Back", "year": 1980};

  Map listFilms = {"first": starWars, "second": theEmpireStrikesBack};

  print(listFilms);

  print(listFilms['first']);
  print(listFilms['first']['title']);
  print(listFilms['first']['year']);

  print(listFilms['second']);
  print(listFilms['second']['title']);
  print(listFilms['second']['year']);
}
