import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class saveButton extends StatelessWidget{
  saveButton({@required this.onPressed});
  final GestureTapCallback onPressed;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  RawMaterialButton(
      fillColor: Colors.grey,
      splashColor: Colors.white70,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0,horizontal:165.0 ),
        child: Text("Save",style: TextStyle(fontSize: 21,color: Colors.white,fontFamily:'Montserrat')),
      ),
      onPressed: onPressed,
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(16))),

    );


  }
}