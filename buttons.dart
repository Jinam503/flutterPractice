import 'package:flutter/material.dart';

const Color darkBlue = Color.fromARGB(255, 18, 32, 47);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      home: const Scaffold(
        body: Center(
          child: MyFirstButtons(),
        ),
      ),
    );
  }
}

class MyFirstButtons extends StatefulWidget {
  const MyFirstButtons({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _MyFirstButtonsState createState() => _MyFirstButtonsState();
}

class _MyFirstButtonsState extends State<MyFirstButtons> {
  Icon starIcon = const Icon(Icons.star);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
            onPressed: () {},
            child: const Text("ElevatedButton"),
          ),
          ElevatedButton.icon(
            onPressed: () {},
            icon: starIcon,
            label: const Text("ElevatedButton.icon"),
          ),
          TextButton(
            onPressed: () {},
            child: const Text("TextButton"),
          ),
          TextButton.icon(
            onPressed: () {},
            icon: starIcon,
            label: const Text("TextButton.icon"),
          ),
          OutlinedButton(
            onPressed: () {},
            child: const Text("OutlinedButton"),
          ),
          OutlinedButton.icon(
            onPressed: () {},
            icon: starIcon,
            label: const Text("OutlinedButton.icon"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {},
                icon: starIcon,
                iconSize: 20,
              ),
              IconButton(
                onPressed: () {},
                icon: starIcon,
                iconSize: 40,
              ),
              Ink(
                decoration: const ShapeDecoration(
                  color: Colors.lightBlue,
                  shape: CircleBorder(),
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: starIcon,
                  iconSize: 20,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30.0),
            child: Card(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30),
                    child: Column(
                      children: const [
                        SizedBox(height: 10),
                        Text(
                          "lala",
                        ),
                      ],
                    ),
                  ),
                  ButtonBar(
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: const Text("TextButton"),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text("ElevatedButton"),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
