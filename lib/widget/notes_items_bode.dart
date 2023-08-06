import 'package:flutter/material.dart';
import 'package:note_app/view/edits.dart';

class NotesItemsBody extends StatelessWidget {
  const NotesItemsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const Edit();
        }));
      },
      child: Column(
        children: [
          Container(
              // ignore: prefer_const_constructors
              padding: const EdgeInsets.only(
                  top: 23, bottom: 23, left: 15, right: 15),
              decoration: BoxDecoration(
                 color: Color.fromARGB(255, 29, 55, 73),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  ListTile(
                    title:
                        const Text('FLUTTER ', style: TextStyle(fontSize: 30)),
                    subtitle: const Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Text(
                          'build your career build your career build your career build your career build your career build your career ',
                          style: TextStyle(fontSize: 16)),
                    ),
                    trailing: Padding(
                      padding: const EdgeInsets.only(
                        bottom: 16,
                        top: 16,
                        left: 16,
                      ),
                      child: IconButton(
                        onPressed: (() {}),
                        icon: const Icon(
                          Icons.delete,
                          size: 35,
                        ),
                      ),
                    ),
                  ),
                  // ignore: prefer_const_constructors
                  const SizedBox(
                    height: 10,
                  ),
                  const Text('May 21,2022', style: TextStyle(fontSize: 14)),
                  const SizedBox(
                    height: 10,
                  )
                ],
              ))
        ],
      ),
    );
  }
}
