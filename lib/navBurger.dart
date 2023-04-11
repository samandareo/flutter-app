import 'package:auth_project/main.dart';
import 'package:flutter/material.dart';

class navHamburger extends StatefulWidget {
  const navHamburger({Key? key}) : super(key: key);

  @override
  State<navHamburger> createState() => _navHamburgerState();
}

class _navHamburgerState extends State<navHamburger> {

  TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Builder(
            builder: (BuildContext context){
              return IconButton(
                icon: const Icon(Icons.keyboard_backspace),
                iconSize: 38,
                color: Colors.black87,
                onPressed: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => const MyApp())),
              );
            },
          ),
          backgroundColor: Colors.yellow,
          title: const Text("Store",
          style: TextStyle(color: Colors.black87, fontSize: 28),
          ),
        ),
        body: const navScreen(),
      ),
    );
  }
}

class navScreen extends StatelessWidget {
  const navScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
