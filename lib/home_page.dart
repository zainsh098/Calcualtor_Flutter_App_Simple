import 'package:chapter_7/componets/my_button.dart';

import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';


class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  var userInput ='';
  var answer= '';



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      body:  SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5 ),
          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 25),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [

                      Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child:
                          Text(userInput.toString(),style: TextStyle(fontSize: 30,color: Colors.white),),
                        ),
                      ),
                      SizedBox(height: 10,),
                      Divider(
                        height: 1,
                        thickness: 1,
                        color: Colors.grey.shade400,
                        indent: 20,
                         endIndent: 20,

                      ),
                      SizedBox(height:10 ,),
                      Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: Text(answer.toString(),style: TextStyle(fontSize: 30,color: Colors.white),),
                      ),



                    ],
                  ),
                ),
              ),




    SizedBox(height: 10,),


              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    Row(

                      children: [
                        MyButton(title: 'AC',color: Colors.teal.shade400,onPress: (){

                          userInput='';
                          answer='';
                          setState(() {




                          });

                        },),

                        MyButton(title: '+/-',onPress: (){
                          userInput +='+/-';

                          setState(() {



                          });



                        }),

                        MyButton(title: '%',onPress: (){
                          userInput +='%';

                          setState(() {



                          });


                        }),

                        MyButton(title: '/',color: Color(0xffffa00a),onPress: (){
                          userInput +='/';

                          setState(() {



                          });


                        }),


                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(

                      children: [
                        MyButton(title:'7',onPress: (){
                            userInput +='7';

                            setState(() {



                            });





                        },),

                        MyButton(title: '8',onPress: (){
                          userInput +='8';

                          setState(() {



                          });


                        }),

                        MyButton(title: '9',onPress: (){
                          userInput +='9';

                          setState(() {



                          });



                        }),

                        MyButton(title: 'X',color: Color(0xffffa00a),onPress: (){
                          userInput +='x';

                          setState(() {



                          });


                        }),


                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(

                      children: [
                        MyButton(title: '4',onPress: (){
                          userInput +='4';

                          setState(() {



                          });


                        },),

                        MyButton(title: '5',onPress: (){
                          userInput +='5';

                          setState(() {



                          });


                        }),

                        MyButton(title: '6',onPress: (){
                          userInput +='6';

                          setState(() {



                          });


                        }),

                        MyButton(title: '-',color: Color(0xffffa00a),onPress: (){
                          userInput +='-';

                          setState(() {



                          });


                        }),


                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(

                      children: [
                        MyButton(title: '1',onPress: (){
                          userInput +='1';

                          setState(() {



                          });


                        },),

                        MyButton(title: '2',onPress: (){

                          userInput +='2';

                          setState(() {



                          });

                        }),

                        MyButton(title: '3',onPress: (){
                          userInput +='3';

                          setState(() {



                          });


                        }),

                        MyButton(title: '+',color: Color(0xffffa00a),onPress: (){
                          userInput +='+';

                          setState(() {



                          });


                        }),


                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(

                      children: [
                        MyButton(title: '0',onPress: (){
                          userInput +='0';

                          setState(() {



                          });


                        },),

                        MyButton(title: '.',onPress: (){
                          userInput +='.';

                          setState(() {



                          });


                        }),

                        MyButton(title: 'DEL',onPress: (){
                          userInput =userInput.substring(0,userInput.length-1);

                          setState(() {



                          });


                        }),

                        MyButton(title: '=',color: Color(0xffffa00a),onPress: (){

                          equalpress();

                          setState(() {



                          });


                        }),


                      ],
                    ),




                  ],
                ),
              ),








            ],



          ),
        ),
      ),



    );
  }

  void equalpress()
  {

    String finaluserInput=userInput;
      finaluserInput=userInput.replaceAll('x', '*');

        Parser p = Parser();
        Expression expression =p.parse(finaluserInput);
        ContextModel contextModel=ContextModel();


        double evaluation=expression.evaluate(EvaluationType.REAL, contextModel);
        answer=evaluation.toString();

  }






}












