import 'package:flutter/material.dart';
class Cards extends StatefulWidget {
  final String text1,text2,text3, text4;
  const Cards({Key? key,  required this.text1, required this.text2, required this.text3, required this.text4}) : super(key: key);

  @override
  _CardsState createState() => _CardsState();
}

class _CardsState extends State<Cards> {
  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
      child: Card(
        color:const Color(0xffFFFFFF),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14),
        ),
        child: Container(
          padding: const EdgeInsets.only( left: 10,),
          width: 150,
          height: 100,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(

              ),
              // const SizedBox(height: 16,),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  Text(widget.text1,textAlign: TextAlign.center,
                    style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black
                    ),
                  ),
                  // const SizedBox(height: 8,),
                  Row(
                    children:  [
                      Text(widget.text2,textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black
                        ),
                      ),],
                  ),
                  // Expanded(child: Container()),
                  // const SizedBox(height: 16,),
                  Card(
                    margin: EdgeInsets.only(left: 7),
                    color: Color(0xffE6EEF6),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(28),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CircleAvatar(radius: 15,
                            backgroundColor: Colors.white,
                            child:Icon(Icons.remove) ),
                        Text(widget.text3,style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black
                        ),),
                        CircleAvatar(radius: 15,
                            backgroundColor: Colors.white,
                            child:Icon(Icons.add) ),
                      ],
                    ),
                  ),


                ],

              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    padding: const EdgeInsets.only(bottom: 13),
                    child: Row(children: [
                      // const Icon(Icons.account_balance_wallet_sharp,size: 14,color: const Color(0xffEAF0E4),),
                      Text(widget.text4,
                        style: const TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Color(0xffC6C6C6)
                        ),
                      ),
                    ],),
                  )
                ],
              ),
              // const Icon(Icons.star_border,),
              const SizedBox(height: 8,),

            ],
          ),
        ),
      ),
    );
  }
}
