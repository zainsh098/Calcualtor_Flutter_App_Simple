import 'package:flutter/material.dart';





class MyButton extends StatelessWidget {
  final VoidCallback onPress;
  final   String title;
  final Color color;
  const MyButton({Key? key,
    required this.title,
    this.color=const Color(0xffa5a5a5),
    required this.onPress
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onPress,

        child: Container(

          height: 80,

          decoration: BoxDecoration(

            shape: BoxShape.circle,
            color: color,

          ),


          child: Center(
            child: Text(title,style: TextStyle(color: Colors.white,fontSize: 20),),


          ),


        ),
      ),
    );



  }
}
