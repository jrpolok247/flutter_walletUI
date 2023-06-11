import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {

  final String iconImagePath;
  final String buttonText;

  const MyButton({
    Key? key,
    required this.iconImagePath,
    required this.buttonText,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //icon
        Container(
          height: 90,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(color: Colors.grey[100],
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade400,
                  blurRadius: 40,
                  spreadRadius: 2,
                )
              ]
          ),



          child: Center(
            child: Image.asset('lib/icons/'+iconImagePath)
            ,),
        ),
        //text
        SizedBox(height: 12,),

        Text(buttonText,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.grey[700],
          )
          ,),
      ],
    );

  }
}
