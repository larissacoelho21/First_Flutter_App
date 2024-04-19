import 'package:flutter/material.dart';

class newScreen extends StatefulWidget {
  const newScreen({super.key});

  @override
  State<newScreen> createState() => _newScreenState();
}

class _newScreenState extends State<newScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New Page"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text("Clique!"),
      ),
    );
  }
}
