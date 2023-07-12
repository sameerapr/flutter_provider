import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../services/functions/change_name.dart';

class AddNamePage extends StatefulWidget {
  const AddNamePage({super.key});

  @override
  State<AddNamePage> createState() => _AddNamePageState();
}

class _AddNamePageState extends State<AddNamePage> {
  TextEditingController enteredName = TextEditingController();
  final snackBar  =  SnackBar(content: Text('Your name is added!'));

  @override
  Widget build(BuildContext context) {
    return Consumer<ChangeName>(
      builder: (context, nameProviderModel, child) => Scaffold(
        appBar: AppBar(
          title: const Text('Add Name Page'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  controller: enteredName,
                  decoration: InputDecoration(
                    label: Text('Enter Name'),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: (() {
                  nameProviderModel.changeName(enteredName.text);
                }),
                child: const Text('Add Your Name'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
