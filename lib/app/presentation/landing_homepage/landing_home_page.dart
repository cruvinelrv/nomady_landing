// ignore_for_file: avoid_print, sized_box_for_whitespace
import 'package:flutter/material.dart';
import 'package:nomady_design_system/nomady_design_system.dart';

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
              children: [
                DsButtonSave(
                  onpressed: () =>
                      Navigator.pushNamed(context, '/landingmobile'),
                ),
                DsButtonSave(
                  onpressed: () => Navigator.pushNamed(context, '/auth/'),
                ),
                const DsButtonSave(),
                Container(
                  alignment: Alignment.topRight,
                  color: Colors.amber,
                  height: 200,
                  width: double.infinity,
                  child: Column(
                    children: [
                      const Text('Landing Page',
                          style: TextStyle(fontSize: 24)),
                      Switch.adaptive(
                        value: isSwitched,
                        onChanged: (value) =>
                            setState(() => isSwitched = value),
                      ),
                    ],
                  ),
                ),
                const Expanded(
                  flex: 1,
                  child: Text(
                    'Landing Page',
                    style: TextStyle(fontSize: 24),
                  ),
                ),
                const Expanded(
                  flex: 1,
                  child: Text(
                    'Landing Page',
                    style: TextStyle(fontSize: 24),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
