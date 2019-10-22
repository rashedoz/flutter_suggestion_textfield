import 'package:flutter/material.dart';
import 'package:suggestion_textfield/suggestion_textfield.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //
  List<SuggestionObject> suggestions = List<SuggestionObject>();
  List<String> suggestionStrings = [
    "Rahim",
    "Karim",
    "Abaas",
    "Anis Khan",
    "Rafiq",
    "Raqib",
    "Raju",
    "Raju3",
    "Rafiqasd",
    "Raqibasfasf",
    "Rajuasfas",
    "Rajuasfasf",

  ];

  final TextEditingController _nameTextController = TextEditingController();

  @override
  void initState() {
    super.initState();

    suggestions.add(SuggestionObject(name: "Abir", id: 1));

    suggestions.add(SuggestionObject(name: "Karim", id: 2));
    suggestions.add(SuggestionObject(name: "Rahim", id: 3));
    suggestions.add(SuggestionObject(name: "Manik", id: 4));
    suggestions.add(SuggestionObject(name: "Joshom", id: 5));
    suggestions.add(SuggestionObject(name: "Anis", id: 6));
    suggestions.add(SuggestionObject(name: "Akkas", id: 7));
    suggestions.add(SuggestionObject(name: "Dumbo", id: 8));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Auto Suggestion Demo"),
        ),
        body: Column(
          children: <Widget>[
            Container(),
            SizedBox(
              height: 100,
            ),

            //Auto suggestion box widget
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: AutoSuggestionTextField(
                textController: _nameTextController,
                suggestionStrings: suggestionStrings,
                onValueChanged: (dynamic newValue){
                  print("new Val - $newValue");
                },
              ),
            ),
          ],
        ));
  }
}

/// Suggestion object with name and id
class SuggestionObject {
  String name;
  int id;
  SuggestionObject({this.name, this.id});
}

