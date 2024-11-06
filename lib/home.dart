import 'dart:math';
import 'package:flutter/material.dart';
import 'package:live_streaming/live_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController userIdController = TextEditingController();
  bool isHost = false;
  String generateRandomId() {
    final random = Random();
    final timestamp = DateTime.now().millisecondsSinceEpoch;
    final randomNumber = random.nextInt(10000);
    return '$timestamp$randomNumber';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextFormField(
              controller: nameController,
              decoration: const InputDecoration(
                hintText: "Username",
                prefixIcon: Icon(Icons.person),
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextFormField(
              controller: userIdController,
              decoration: const InputDecoration(
                hintText: "UserId",
                prefixIcon: Icon(Icons.lock),
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Checkbox(
                value: isHost,
                onChanged: (bool? value) {
                  setState(() {
                    isHost = value ?? false;
                  });
                },
              ),
              const Text('Host')
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
              height: 60,
              width: 200,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LivePage(
                          userId: userIdController.text,
                          userName: nameController.text,
                          isHost: isHost,
                          liveId: generateRandomId(),
                        ),
                      ));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 248, 203, 43),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                ),
                child: const Text(
                  'Join',
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w700),
                ),
              ))
        ],
      ),
    );
  }
}
