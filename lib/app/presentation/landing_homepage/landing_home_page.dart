// ignore_for_file: avoid_print, sized_box_for_whitespace
import 'package:flutter/material.dart';

class LandingHomePage extends StatefulWidget {
  const LandingHomePage({Key? key}) : super(key: key);

  @override
  State<LandingHomePage> createState() => _LandingHomePageState();
}

class _LandingHomePageState extends State<LandingHomePage> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      print('Biggest: ${constraints.biggest}');
      print('Smallest: ${constraints.smallest}');
      return Scaffold(
        appBar: AppBar(
          title: const Text('Nomady Pass'),
          elevation: 0,
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return Column(
                          children: [
                            const Text('Hello'),
                            ListTile(
                              title: const Text('Landing Web'),
                              onTap: () {
                                Navigator.pushNamed(context, '/landingweb');
                              },
                            ),
                            ListTile(
                              title: const Text('Landing Mobile'),
                              onTap: () {
                                Navigator.pushNamed(context, '/landingmobile');
                              },
                            ),
                            ListTile(
                              title: const Text('Login'),
                              onTap: () {
                                Navigator.pushNamed(context, '/auth');
                                //Navigator.
                              },
                            ),
                            ListTile(
                              title: const Text('Pet Amigo'),
                              onTap: () {
                                Navigator.pushNamed(context, '/petamigo');
                                //Navigator.
                              },
                            ),
                          ],
                        );
                      });
                  //);
                },
                icon: const Icon(Icons.web))
          ],
        ),
        body: Container(
          color: Colors.grey,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Text(
                  'O que é ser nômade?',
                  style: TextStyle(fontSize: 30),
                ),
                Text(
                  'Nossa proposta é criar uma plataforma com módulos que irão ajudar você a possuir a liberdade em várias áreas da sua vida com o objetivo de viver o nomadismo digital, com uma pitada de minimalismo.',
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  'Landing Web',
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  'Landing Mobile',
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  'Login',
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  'Pet Amigo',
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
