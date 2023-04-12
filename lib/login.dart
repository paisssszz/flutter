import 'package:flutter/material.dart';
import 'package:flutter_application_6/halaman.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(8),
        decoration: const BoxDecoration(
        gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromRGBO(211, 144, 119, 1),
                Color.fromRGBO(1, 1, 1, 1),
              ],
            )
      ),
        child: Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
              height: 100,
              width: 100,
              decoration: const BoxDecoration(
                color: Colors.black87,
                shape: BoxShape.circle
              ),
              child: const Center(
                child: Icon(Icons.person, size: 40, color: Colors.white, ),
              ),
            ),
            const SizedBox(height: 90,),

            const Text("Sign In", style: TextStyle(fontSize: 40, color: Colors.white, fontWeight: FontWeight.bold),),

            const SizedBox(height: 90,),

            Container(
            margin: const EdgeInsets.only(top: 20),
            padding: const EdgeInsets.only(left: 20),
            width: 400,
            height: 45,
            decoration: const BoxDecoration(
              color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(13)
            )
          ),
            child: const TextField(
              
            decoration: InputDecoration(
              hintText: "Email",
              border: InputBorder.none
              ),
            ),
          ),

            const SizedBox(height: 10,),
          
            Container(
            padding: const EdgeInsets.only(left: 20),
            width: 400,
            height: 45,
            decoration: const BoxDecoration(
              color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(10)
            )
          ),
            child: const TextField(
              obscureText: true,
            decoration: InputDecoration(
              hintText: "Password",
              border: InputBorder.none
              ),
           ),
        ),
            const SizedBox(height: 50,),
            
            SizedBox(
              width: 200,
              height: 45,
              child: TextButton(
                style: TextButton.styleFrom(
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)
                )
              ),
              onPressed: () {
                Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const halaman()),
                    );
              }, 
              child: const Text(
                'Login', style: TextStyle(
                  color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
} 