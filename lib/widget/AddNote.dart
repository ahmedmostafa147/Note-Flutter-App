import 'package:flutter/material.dart';
import 'package:note_app/widget/CustomButton.dart';
import 'custometextfiled.dart';

class AddNote extends StatelessWidget {
  const AddNote({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20),
      child: SingleChildScrollView(
        child: AddNoteForm(),
      ),
    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    Key? key,
  }) : super(key: key);

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          CustomTextfield(
            onSaved: (value) {
              title:
              value;
            },
            hint: "Hello",
          ),
          const SizedBox(
            height: 30,
            width: 30,
          ),
          CustomTextfield(
            onSaved: (value) {
              subTitle:
              value;
            },
            hint: "title",
            maxlines: 5,
          ),
          const SizedBox(width: 10,height: 20,),
          
          customButtom(
            onTap: (() {
              if(formKey.currentState!.validate()){
                formKey.currentState!.save();
              }
              else{
                autovalidateMode=AutovalidateMode.always;
                setState(() {
                  
                });
              }
            
              })
          )
       
        ],
      ),
    );
  }
}
