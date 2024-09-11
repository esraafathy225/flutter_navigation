import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserInputPage extends StatefulWidget {
  const UserInputPage({super.key});

  @override
  State<UserInputPage> createState() => _UserInputPageState();
}

class _UserInputPageState extends State<UserInputPage> {
  TextEditingController myController = TextEditingController();
  String _inputMessage='';

  void getInputMessage(){
    setState(() {
      _inputMessage = myController.text;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: myController,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(),
                  hintText: 'Enter your email'
                ),
              ),
            ),
            SizedBox(height: 16,),
            Text(_inputMessage),
            SizedBox(height: 16,),
            ElevatedButton(onPressed: getInputMessage, child: Text('Tap'))
          ],
        ),
      ),
    );
  }
}
