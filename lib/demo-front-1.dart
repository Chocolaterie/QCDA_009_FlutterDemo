import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  Widget wrapPadding(Widget widget) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: widget,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text("Demo Front 1"),
        ),
        body: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(fit: BoxFit.cover, "mobile_background.png"),
            Padding(
              padding: const EdgeInsets.all(60),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    "Forgot Password",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 28, color: Color(0xFFFFFFFF)),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 40),
                    child: Text(
                      "Please send your email address. A new password will be sent to you if an account exists",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Color(0xFFFFFFFF)),
                    ),
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: TextField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0x77FFFFFF),
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(30)),
                          labelText: "Email",
                          hintText: "Veuillez saisir un email"),
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text("Send"),
                      )),
                  Spacer(
                    flex: 6,
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
