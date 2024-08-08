class Movie {
  int id;
  String title;
  String description;

  Movie(this.id, this.title, this.description);

  /// Convertir un film json en film dart (en Objet)
  static Movie fromJson(Map<String, dynamic> json){
    return Movie(json['id'], json['title'], json['description']);
  }
}