
import 'package:flutter/material.dart';


class MyCustomTextField extends StatelessWidget {

  TextEditingController editingController;
  String errorMessage;
  String hints;
  String helpetext;
  String label;
  VoidCallback voidCallback;


  MyCustomTextField({
  required this.editingController,
  required this.errorMessage,
  required this.hints,
  required this.helpetext,
  required this.label,

  //required this.icon,
  required this.voidCallback
});






  @override
  Widget build(BuildContext context) {
    return Container(

      margin:  const EdgeInsets.all(10),
      decoration:  const BoxDecoration(
          color: Colors.white
      ),


      height: 70,
      child: TextFormField(
        keyboardType: TextInputType.text,
        cursorColor: Colors.red,
        controller: editingController,
        enabled: true,
        //obscureText: true,
        onChanged: (value){
          voidCallback;
        },
        maxLines: 1,
        maxLength: 30,
        validator: (value){

          if(value!.isEmpty){
            return '$errorMessage is required';
          }

          return null;


        },
        decoration:  InputDecoration(
          border: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(5)),
            borderSide: BorderSide(color: Colors.red, width: 1.0 ),
          ),
          //prefixIcon: icon,
          hintText: hints,
          labelText: label,
          helperText: helpetext,

          contentPadding: const EdgeInsets.only(left: 5),
          // prefix: Icon(Icons.remove_red_eye),

        ),



      ),
    );
  }

  void _myCallBack() {


  }
}


