import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class CardsWidget extends StatefulWidget {
  final String text1;
  final Color color;
  const CardsWidget({Key? key, required this.text1, required this.color}) : super(key: key);

  @override
  _CardsWidgetState createState() => _CardsWidgetState();
}

class _CardsWidgetState extends State<CardsWidget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),),
        child: Stack(
          children: [
            SizedBox(
              // height: 400,width: 200,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 100,
                          height: 60,
                          child: Card(
                            color: widget.color,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(14),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(widget.text1)
                                // SizedBox(
                                //   child: Text(widget.text1),
                                // ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );

  }
}
