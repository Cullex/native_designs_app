import 'package:flutter/material.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
// TODO 2: Replace with EmptyGroceryScreen
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 10),
              Center(
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 95,
                      backgroundImage:
                          AssetImage('assets/magazine_pics/logo.png'),
                    ),
                    Text(
                      'Sidney Richards',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      '+263 774 935 699',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'sidyrich@gmail.com',
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 360,
                      child: TextField(
                        style: TextStyle(color: Colors.black),
                        enableSuggestions: false,
                        autocorrect: false,
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          prefixIcon: const Icon(
                            Icons.email,
                            color: Colors.black,
                          ),
                          hintText: 'Email',
                          contentPadding: const EdgeInsets.all(15),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      width: 360,
                      child: TextField(
                        style: TextStyle(color: Colors.black),
                        enableSuggestions: false,
                        autocorrect: false,
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          prefixIcon: const Icon(
                            Icons.phone,
                            color: Colors.black,
                          ),
                          hintText: 'Email',
                          contentPadding: const EdgeInsets.all(15),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      width: 360,
                      child: TextField(
                        keyboardType: TextInputType.multiline,
                        maxLines: 7,
                        style: TextStyle(color: Colors.black),
                        enableSuggestions: false,
                        autocorrect: false,
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          hintText: 'Email',
                          contentPadding: const EdgeInsets.all(15),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    ElevatedButton(
                      child: isLoading
                          ? CircularProgressIndicator(color: Colors.white)
                          : Text(
                              'Register',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                      onPressed: () {
                        setState(() {
                          isLoading = true;
                        });
                        Future.delayed(Duration(seconds: 6), () {
                          setState(() {
                            isLoading = false;
                          });
                        });
                      },
                      style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          padding:
                              EdgeInsets.symmetric(horizontal: 50, vertical: 8),
                          textStyle: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
