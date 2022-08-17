import 'package:flutter/material.dart';

class LandingWebPage extends StatefulWidget {
  const LandingWebPage({Key? key}) : super(key: key);

  @override
  State<LandingWebPage> createState() => _LandingWebPageState();
}

class _LandingWebPageState extends State<LandingWebPage> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Web Page'),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: size.height,
          width: size.width,
          child: SafeArea(
            child: Column(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                  ),
                  //color: Colors.green,
                  child: Column(
                    children: [
                      const Text('Pagamento por aproximação'),
                      const Text(
                          'Ative o pagamento do seu cartão por aproximação e ajuste o limite por transação'),
                      Row(
                        children: [
                          Switch.adaptive(
                            value: isSwitched,
                            onChanged: (value) =>
                                setState(() => isSwitched = value),
                          ),
                          const Text('Ativar pagamento por aproximação'),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(20),
                        child: Text('Ajuste de limite'),
                      ),
                      Expanded(
                        child: Divider(
                          color: Colors.grey.withAlpha(90),
                          thickness: 2,
                          height: 2,
                        ),
                      ),
                      const SizedBox(
                        width: 40,
                      )
                    ],
                  ),
                ),
                Row(
                  children: [
                    Column(
                      children: const [
                        Text('Limite por transação'),
                        Text('R\$0,00'),
                      ],
                    ),
                    Expanded(
                      child: Container(
                        width: 30,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 40),
                      ),
                    ),
                    const Icon(Icons.edit),
                    const Text('Editar')
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      //  body: ListView.separated(
      //   padding: const EdgeInsets.all(16.0),
      //    physics: const BouncingScrollPhysics(),
      //   itemBuilder: itemBuilder,
      //    separatorBuilder: (separatorBuilderContext, index) => const Divider(),
      // itemCount: itemCount),
    );
  }
}
