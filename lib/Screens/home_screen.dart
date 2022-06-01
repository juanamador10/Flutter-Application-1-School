import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/second_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState()=> _HomeScreenState();
  }
  class _HomeScreenState extends State<HomeScreen>{
  @override
  Widget build (BuildContext context){
    const fontStyle = TextStyle(fontSize: 30);
    int counter = 10;

   
    return Scaffold(
      backgroundColor: Colors.pink,
      appBar: AppBar(
        title: const Text("App bar title"),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, 
          children:[
           const Text("Number of clicks", style: fontStyle),
           Text("$counter", style: fontStyle),
           ElevatedButton(
             onPressed: () {
               Navigator.push(context, MaterialPageRoute(
                 builder: (context) => const SecondScreen()));
             }, child: const Text("Go to second screen"))
           ])
      ),
      floatingActionButton:  Row(
        children:[
          FloatingActionButton(
            heroTag: "btn3",
            onPressed:(){
              counter++;
              print("The button has been pressed $counter");
              setState((){});
        },
        backgroundColor: Colors.blue,
        child: const Icon(Icons.restore)),
          
          FloatingActionButton(
          onPressed:(){
            counter++;
            print("The button has been passed $counter");
            setState((){});
        },
        backgroundColor: Colors.blue,
        child: const Icon(Icons.exposure_plus_1)),
        ],
      ),
        floatingActionButtonLocation: 
          FloatingActionButtonLocation.miniCenterDocked,
    );
  }
}
