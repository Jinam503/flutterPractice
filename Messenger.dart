import 'package:flutter/material.dart';

const Color darkBlue = Color.fromARGB(255, 18, 32, 47);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'x',
      home: Note(),
    );
  }
}

class Note extends StatelessWidget {
  const Note({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
            elevation: 0,
            title: const Text('dddd'),
            leading: Container(
              width: 100,
              margin: const EdgeInsets.only(left: 20),
              height: 100,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Colors.grey),
            )),
        body: Column(
          verticalDirection: VerticalDirection.up,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: SizedBox(
                height: 50.0,
                width: 400.0,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[200],
                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_upward,
                        color: Colors.blue,
                      ),
                    ),
                    hintText: '여기를 터치해서 메시지를 보내세요',
                    enabledBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
