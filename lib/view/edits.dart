import 'package:flutter/material.dart';
import '../widget/custometextfiled.dart';


class Edit extends StatelessWidget {
  const Edit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'EDIT NOTES',
          style: TextStyle(fontSize: 30),
        ),
        actions: [
          IconButton(
            onPressed: (() {}),
            icon: const Icon(
              Icons.check_circle_outline_outlined,
              size: 35,
            ),
          )
        ],
      ),
  body: Padding(
    padding: const EdgeInsets.all(20),
    child: Column(
      children: const [
        CustomTextfield(
              hint: "Hello",
            ),
            SizedBox(
              height: 30,
              width: 30,
            ),
            CustomTextfield(
              hint: "title",
              maxlines: 5,
            ),
        
      ],
    ),
  ),
   
    );
  }
}
