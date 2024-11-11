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
  TextEditingController liveIdController = TextEditingController();
  var isHost = false;

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
                hintText: "User Id",
                prefixIcon: Icon(Icons.lock),
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextFormField(
              controller: liveIdController,
              decoration: const InputDecoration(
                hintText: "Live Id",
                prefixIcon: Icon(Icons.live_tv_outlined),
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
                onChanged: (value) {
                  setState(() {
                    isHost = value!;
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
                onPressed: () async {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LivePage(
                          userId: userIdController.text,
                          userName: nameController.text,
                          isHost: isHost,
                          liveId: liveIdController.text,
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
