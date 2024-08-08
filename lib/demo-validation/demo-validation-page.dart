import 'package:flutter/material.dart';

class DemoValidationPage extends StatelessWidget {

  // Instancier une clé de formulaire
  // Nous permettera de récupérer l'etat du formulaire
  // Attention : Il faut l'associer dans le formulaire
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  /// Va etre utilisé pour lier la valeur d'un champs
  TextEditingController viennoiserieController = TextEditingController();

  /// Quand je clique sur le submit
  void onSubmit(BuildContext context) {
    // Tester si le formulaire valide (enclencher la validation)
    if (formKey.currentState!.validate()){
      print("Formulaire valide");

      // Afficher la valeur
      print("La valeur : ${viennoiserieController.text}");
    }
  }

  /// Validateur d'un champ
  String? viennoiserieValidator(String? value) {
    // Si null
    if (value == null){
      return "Le champ ne doit pas être null";
    }

    // Si vide
    if (value!.isEmpty){
      return "Le champ ne doit pas être vide";
    }

    // Si chocolatine
    if (value == "chocolatine"){
      return "Dégage de mon fief retourne dans le sud";
    }

    // pas d'erreur
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text("Demo Validation"),
        ),
        body: Center(
          child: Form(
            key: formKey,
            child: Padding(
              padding: const EdgeInsets.all(40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextFormField(
                    controller: viennoiserieController,
                    validator: viennoiserieValidator,
                    decoration: InputDecoration(labelText: "Viennoiserie"),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        onSubmit(context);
                      },
                      child: Text("Submit"))
                ],
              ),
            ),
          ),
        ));
  }
}
