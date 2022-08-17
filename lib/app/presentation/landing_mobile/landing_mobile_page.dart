import 'package:flutter/material.dart';

class LandingMobilePage extends StatefulWidget {
  const LandingMobilePage({Key? key}) : super(key: key);

  @override
  State<LandingMobilePage> createState() => _LandingMobilePageState();
}

class _LandingMobilePageState extends State<LandingMobilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Nomady Pass')),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.grey,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text('Hello'),
                  Container(
                    height: 800,
                    color: Colors.blue,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Enter your name',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
