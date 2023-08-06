import 'package:flutter/material.dart';

class customButtom extends StatelessWidget {
  const customButtom({super.key, this.onTap});
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 55,
        decoration: BoxDecoration(
       
            borderRadius: BorderRadius.circular(10)),
        child: const Center(
          
            child: Text(
          "Add New Note",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
        )),
      ),
    );
  }
}
