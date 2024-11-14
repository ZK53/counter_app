import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget{
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 350,
          height: 150,
          decoration: BoxDecoration(
              color: Colors.grey.shade900,
              borderRadius: BorderRadius.circular(100)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: (){
                  setState(() {
                    if(counter > 0){
                    setState(() {
                      counter--;
                    });
                  }
                  });
                },
                icon: const Icon(Icons.remove),
                iconSize: 60,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 13.0),
                child: CircleAvatar(
                  radius: 60,
                  backgroundColor: Colors.grey.shade800,
                  child: Text('$counter',
                  style: const TextStyle(fontSize: 60),),
                ),
              ),
              IconButton(
                onPressed: (){setState(() {
                  counter++;
                });
                },
                icon: const Icon(Icons.add),
                iconSize: 60,),
            ],
          ),
        ),
      ),
    );
  }
}