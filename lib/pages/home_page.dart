import 'package:flutter/material.dart';
import 'package:flutter_provider/pages/others/add_name_page.dart';
import 'package:provider/provider.dart';

import '../services/functions/change_name.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider Lesson'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Consumer<ChangeName>(
              builder: (context, nameProviderModel, child) =>  Text(nameProviderModel.name)),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: (() {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AddNamePage()),
                );
              }),
              child: const Text('Add Your Name'),
            )
          ],
        ),
      ),
    );
  }
}
