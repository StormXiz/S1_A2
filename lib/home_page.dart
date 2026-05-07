import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mi app'),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          
          CircleAvatar(
            radius: 50,
            backgroundColor: Colors.deepPurple,
            child: Icon(Icons.person, size: 60, color: Colors.white,),
          ),

          SizedBox(height: 16,),

          Text(
            'Angel!',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),

          SizedBox(height: 8,),

          Text(
            'Estudiante en UIDE',
            style: TextStyle(fontSize: 16, color: Colors.grey),
          ),

          SizedBox(height: 8,),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.email, color: Colors.deepPurple,),
              SizedBox(width: 8,),
              Text('angel@uide.edu.ec')
            ],
          ),

        ],
      ),

    );
  }
}