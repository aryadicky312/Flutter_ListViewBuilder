import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Login Form',
        style: TextStyle (color: Colors.white)
      ),
      backgroundColor: Colors.blue,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(8),
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Container(
              height: 100,
              width: 100,
              decoration: const BoxDecoration(
                color: Colors.blue,
                shape: BoxShape.circle
              ),
              child: const Center(
                child: Icon(Icons.person, size: 45, color: Colors.white,),
              ),
            ),

            const SizedBox(height: 20,),

            const Text("Welcome", style: TextStyle(fontSize: 20, color: Colors.black87),),
            const Text("Please Login !", style: TextStyle(fontSize: 20, color: Colors.black87),),
            const SizedBox(height: 20,),

            TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide:BorderSide(color: Colors.black87)
                ),
                prefixIcon: Icon(Icons.person, size: 40,color: Colors.blue),
                hintText: "Input Username",
                hintStyle: TextStyle(color: Colors.black87),
                labelText: "Username",
                labelStyle: TextStyle(color: Colors.black87),
              ),
            ),

            const SizedBox(height: 20,),

            TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide:BorderSide(color: Colors.black87)
                ),
                prefixIcon: Icon(Icons.lock, size: 40,color: Colors.blue,),
                hintText: "Input Password",
                hintStyle: TextStyle(color: Colors.black87),
                labelText: "Password",
                labelStyle: TextStyle(color: Colors.black87),
              ),
            ),

            const SizedBox(height: 20,),

            Container(
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/product');
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                  ),
                  child: const Center(
                    child: Text("Login", style: TextStyle(fontSize: 20, color: Colors.white)),
                  ),)
              ),
          ],
        ),
      ),
    );
  }
}
