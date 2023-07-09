// ignore_for_file: avoid_print, file_names

import 'package:flutter/material.dart';

// ignore: camel_case_types
class Login_Screen extends StatelessWidget {
  //constructor function
  Login_Screen({super.key});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Stack(children:[
           Container(
            
             height: MediaQuery.of(context).size.height,
             width: MediaQuery.of(context).size.width,
             decoration: const BoxDecoration(
               image: DecorationImage(image: 
              NetworkImage("https://tse1.mm.bing.net/th?id=OIP.nkPEb1MF99uNc5ZzQp4VbgHaEK&pid=Api&P=0&h=180"),fit: BoxFit.fill )
               ),
             ),
        Column(
          children: [
           
            const Text(
              'Login',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30.0),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    TextFormField(
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                      onFieldSubmitted: (String value) {
                        print(value);
                      },
                      onChanged: (String value) {
                        print(value);
                      },
                      decoration: const InputDecoration(
                        labelText: 'UserName',
                        prefixIcon: Icon(
                          Icons.email,
                        ),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 30.0),
                    TextFormField(
                      controller: passwordController,
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      onFieldSubmitted: (value) {
                        print(value);
                      },
                      onChanged: (String value) {
                        print(value);
                      },
                      decoration: const InputDecoration(
                        labelText: 'Password ',
                        prefixIcon: Icon(
                          Icons.lock,
                        ),
                        suffixIcon: Icon(
                          Icons.remove_red_eye,
                        ),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 20.0),
                      Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(width: 400.0),
                const Text(
                  'New to Quiz? ',
                   style:TextStyle(
                      color:Colors.white
                    ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Register Now',
                    style:TextStyle(
                      color:Color.fromARGB(255, 193, 192, 196)
                    ),
                  ),
                ),
              ],
            ),
                    Container(
                      width: 800,
                      color: Colors.blue,
                      height: 40.0,
                      child: MaterialButton(
                        onPressed: () {
                          print('Login button pressed');
                          print(emailController.text);
                          print(passwordController.text);
                        },
                        child: const Text(
                          'Login',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        
                      ),
                      
                    ),
                    
            const SizedBox(height: 10.0),
                  
            const SizedBox(height: 20.0),
                          Icon(
                Icons.fingerprint,
                color:Color.fromARGB(255, 51, 146, 223),
                size: 60, // يجعل حجم الأيقونة يساوي 40 نقطة
              ),
            // Image.network(
            //               "https://png.pngtree.com/element_our/20200702/ourlarge/pngtree-flat-fingerprint-png-download-image_2286273.jpg",
            //               height: 100,
            //               width: 100,
            //             ),
                        Text("use touch id",
                            style: TextStyle(color:Color.fromARGB(255, 240, 157, 2))),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 200
                            ),
                            Checkbox(
                              value: true,
                              onChanged: (onChanged) {},
                            ),
                            Text(
                              "remember me",
                              style: TextStyle(color: Color.fromARGB(255, 240, 157, 2)),
                            ),
                            SizedBox(
                              width: 300,
                            ),
                            GestureDetector(
                              onTap: () {
                                print("h");
                              },
                              child: Text("forgot password?",
                              style: TextStyle(color: Color.fromARGB(255, 240, 157, 2)),
                            ),
                            ),
                             SizedBox(
                              height: 300,
                            ),
                            
                 ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('Back'),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 14, 169, 164)), // تعيين لون الخلفية كأزرق
                      foregroundColor: MaterialStateProperty.all<Color>(Colors.white), // تعيين لون النص كأبيض
                    ),
                  ),
                          ],
                        )
                  ],
                ),
              ),
              
            ),
            const SizedBox(height: 20.0),
                    ],
        ),

        
        ],
      ),
      )
    );
  }
}