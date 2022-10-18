import 'package:flutter/material.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({super.key});

  @override
  State<LearnFlutterPage> createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {
  bool isSwitch = true;

  bool? isCheckBox = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Learn flutter"),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        actions: [
          IconButton(
              onPressed: () => debugPrint("Actions"),
              icon: const Icon(Icons.info_outline))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Image.asset('images/einstein.jpg'),
          const SizedBox(
            height: 10,
          ),
          const Divider(
            color: Colors.black,
          ),
          Container(
            margin: const EdgeInsets.all(10.0),
            padding: const EdgeInsets.all(10.0),
            color: Colors.blueGrey,
            width: double.infinity,
            child: const Text(
              'This is a text widegt',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: isSwitch ? Colors.blue : Colors.green),
              onPressed: () {
                debugPrint('Elevated Button');
              },
              child: const Text('Elevated Button')),
          OutlinedButton(
              onPressed: () => debugPrint('Outlined Button'),
              child: const Text('Outlined Button')),
          TextButton(
              onPressed: () => debugPrint('Text Button'),
              child: const Text('Text Button')),
          GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () {
              debugPrint('This is the row');
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Icon(Icons.local_fire_department, color: Colors.blue),
                Text('Row widget'),
                Icon(Icons.local_fire_department)
              ],
            ),
          ),
          Switch(
            value: isSwitch,
            onChanged: (value) {
              setState(() {
                isSwitch = value;
              });
            },
          ),
          Checkbox(
            value: isCheckBox,
            onChanged: (value) => setState(() {
              isCheckBox = value;
            }),
          ),
          Image.network(
              'https://up.enterdesk.com/edpic_source/81/f8/c2/81f8c2d8bea55c7b77ba0c4446f2e6a1.jpg')
        ]),
      ),
    );
  }
}
