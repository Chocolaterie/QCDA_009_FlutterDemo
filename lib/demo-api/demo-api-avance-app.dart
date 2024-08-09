import 'package:dem_eni_flutter/demo-api/auth-context.dart';
import 'package:flutter/material.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

void main() {
  runApp(DemoApiAvanceApp());
}

class DemoApiAvanceApp extends StatelessWidget {
  const DemoApiAvanceApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo Avance Api',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: DemoPageAvanceApi(),
    );
  }
}

class DemoPageAvanceApi extends StatelessWidget {

  // Demo click se connecter
  // Envoyer un body dans l'url POST
  // ATTENTION : On test le resultat de la connexion avec le code métier
  // Recupérer le token
  void onClickAuth(BuildContext context) async {
    // Autoriser a envoyer du json dans le body
    final headers = {
      'Content-Type' : 'application/json'
    };

    // Envoyer email / mot de passe dans le body
    final bodyRequest = convert.jsonEncode({
        "email" : "chocolatine@gmail.com",
        "password" : "passworsssd"
    });

    var response = await http.post(Uri.parse("http://localhost:3000/auth"), headers: headers, body: bodyRequest);

    // 2 :: Transformer la réponse Http en JSON
    var responseBodyJson = convert.jsonDecode(response.body);

    // Si connecté stocker le token
    if (responseBodyJson['code'] == '203'){
      AuthContext.token = responseBodyJson['data'];
    }
    else {
      print(responseBodyJson['message']);
    }

    print(responseBodyJson);
  }

  /// Demo click appel api avec un token à envoyer
  void OnClickCallApi(BuildContext context) async {
    // 1 :: Appel API HTTP

    // Envoyer le token
    final headers = {
      'Authorization' : "Bearer ${AuthContext.token}"
    };

    var response = await http.get(Uri.parse("http://localhost:3000/v2/comment/all"), headers: headers);

    // 2 :: Transformer la réponse Http en JSON
    var responseBodyJson = convert.jsonDecode(response.body);

    // Afficher le body de la réponse http
    print(responseBodyJson);

    // Si erreur (pas connecté)
    if (responseBodyJson['code'] == "798"){
      // Afficher l'erreur
      print("Erreur vous n'êtes pas connecté(e)");
      print(responseBodyJson['message']);
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Demo Avance Api"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical : 10),
            child: ElevatedButton(
                onPressed: () {
                  onClickAuth(context);
                },
                child: Text("Appel Auth (Se connecter)")),
          ),
          ElevatedButton(
              onPressed: () {
                OnClickCallApi(context);
              },
              child: Text("Appel API")),
        ],
      ),
    );
  }
}
