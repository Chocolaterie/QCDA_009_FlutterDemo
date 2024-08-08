import 'package:dem_eni_flutter/demo-api/movie.dart';
import 'package:flutter/material.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

void main() {
  runApp(DemoApiApp());
}

class DemoApiApp extends StatelessWidget {
  const DemoApiApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo Api',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: DemoPageApi(),
    );
  }
}

class DemoPageApi extends StatelessWidget {

  /// TODO
  void OnClickCallApi(BuildContext context) async {
    // 1 :: Appel API HTTP
    var response = await http.get(Uri.parse("https://raw.githubusercontent.com/Chocolaterie/EniWebService/main/api/movies.json"));

    // 2 :: Transformer la réponse Http en JSON
    var responseBodyJson = convert.jsonDecode(response.body);

    // 3 :: Extraire dans le body de la réponse, les données (les films)
    var moviesJson = responseBodyJson;

    // 4:: Convertir ces données en List de Film (en Dart)
    // En 2 ligne
    /*
    List<dynamic> newMovies = moviesJson.map((movieJson) => Movie.fromJson(movieJson)).toList();
    List<Movie> MoviesTypeFort = List<Movie>.from(newMovies);
    */
    // 1 ligne
    List<Movie> movies = List<Movie>.from(moviesJson.map((movieJson) => Movie.fromJson(movieJson)).toList());

    // 5 :: Print dans la console la liste de films
    for (var movie in movies){
      print("Mon film : ${movie.id} - ${movie.title}");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Demo Api"),
      ),
      body:Column(children: [
        ElevatedButton(onPressed: () { OnClickCallApi(context); }, child: Text("Appel API")),
      ],),
    );
  }
}
