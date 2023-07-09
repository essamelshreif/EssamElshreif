import 'package:flutter/material.dart';
import 'login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'MyApp',
      home: Openning_Screen(),
    );
  }
}

void login_screen(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>  Login_Screen()),
  );
}

class Openning_Screen extends StatelessWidget {
  const Openning_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        
      // appBar: AppBar(
      //   title: const Text('Home Screen'),
      // ),
      backgroundColor: Color.fromARGB(255, 4, 63, 72),
      body: 
      Column(
        
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[

        //    Text(
        // 'Hello, World!',
        // style: TextStyle(
        //   color: Colors.white,
        //   fontSize: 24,
        //   fontWeight: FontWeight.bold,
        // ),
        //    ),
         
              Expanded(
                
        child: Align(
          alignment: Alignment.topCenter,
          child: Text(
            'You are Welcome ',
            style: TextStyle(
              color: Color.fromARGB(255, 220, 115, 3),
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          ),
              ),
               Expanded(
            child: Align(
              alignment: Alignment.center,
              child:ElevatedButton(
                onPressed: () {
                  login_screen(context);
                },
                child: const Text('Start'),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 14, 169, 164)), // تعيين لون الخلفية كأحمر
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.white), // تعيين لون النص كأبيض
                ),
              ),
            ),
            
          ),
        ],
      ),
    
    );
  }
}


