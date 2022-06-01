import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(title: const Text("Third Screen"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            Navigator.pop(context);
          },
          child: ListView(
            padding: const EdgeInsets.all(8),
            children: <Widget>[
              Container(
                height: 50,
                color: Colors.amber[600],
                child: const Center(child: Text('Entry A')),
              ),
              Container(
                height: 50,
                color: Colors.amber[500],
                child: const Center(child: Text('Entry B')),
              ),
              Container(
                height: 50,
                color: Colors.amber[100],
                child: const Center(child: Text('Entry C')),
              ),
            ],
          ),
        ),
      ),
    );
  }
}