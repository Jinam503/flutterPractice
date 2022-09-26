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
          toolbarHeight: 100,
          backgroundColor: Colors.lightBlue,
          elevation: 0,
          title: const Text(
            '바늘이',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          leading: Container(
            height: 100,
            width: 100,
            margin: const EdgeInsets.fromLTRB(20, 20, 0, 20),
            decoration: const BoxDecoration(
              color: Colors.grey,
              shape: BoxShape.circle,
            ),
          ),
          leadingWidth: 100,
        ),
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
