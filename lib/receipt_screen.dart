import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReceiptScreen extends StatefulWidget {
  const ReceiptScreen({Key? key}) : super(key: key);

  @override
  State<ReceiptScreen> createState() => _ReceiptScreenState();
}

class _ReceiptScreenState extends State<ReceiptScreen> {
  var greenColor = const Color(0xFF0F5F37);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: greenColor,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 0,
            child: RotatedBox(
              quarterTurns: 2,
              child: Image.asset("assets/images/confetti.png",scale: 2.0),
            ),
          ),
          // const Positioned(
          //   top: 50.0,
          //   child: Text(
          //     "Top up Receipt",
          //     style: TextStyle(
          //       fontSize: 16.0,
          //         color: Colors.white,
          //         decoration: TextDecoration.none),
          //   ),
          // ),
          Column(
            children: [
             const SizedBox(height: 16.0 * 5),
              Container(
                margin: const EdgeInsets.only(top:16.0,left: 16.0,right: 16.0,bottom: 0.0),
                height: MediaQuery.of(context).size.height*0.4,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                  border: Border.all(color: Colors.white),
                  borderRadius: const BorderRadius.only(topRight: Radius.circular(16.0),topLeft: Radius.circular(16.0),),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top:0.0,left: 16.0,right: 16.0,bottom: 0.0),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  border: Border.symmetric(horizontal:BorderSide(color: Colors.white)),
                  ),
                child: Row(
                  children:  [
                    SizedBox(
                      height: 20,
                      width: 10,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: greenColor,
                            borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(16.0),
                                bottomRight: Radius.circular(16.0))),
                      ),
                    ),
                    Expanded(child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: LayoutBuilder(
                        builder: (BuildContext context, BoxConstraints constraints){
                          return Flex(
                            direction: Axis.horizontal,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: List.generate(
                                (constraints.constrainWidth()/15).floor() ,
                                    (index) => const SizedBox(
                                  width: 5,
                                  height: 1,
                                  child: DecoratedBox(
                                    decoration: BoxDecoration(
                                      color: Colors.grey,
                                    ),
                                  ),
                                )),
                          );
                        },
                      ),
                    )),
                    SizedBox(
                      height: 20,
                      width: 10,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: greenColor,
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(16.0),
                                bottomLeft: Radius.circular(16.0))),
                      ),
                    ),
                  ],
                ),
              ),
              Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top:0.0,left: 16.0,right: 16.0,bottom: 16.0),
                    height: MediaQuery.of(context).size.height*0.32,
                    decoration: BoxDecoration(
                        color: Colors.white,
                      border: Border.all(color: Colors.white),
                      borderRadius: const BorderRadius.only(bottomRight: Radius.circular(0.0),bottomLeft: Radius.circular(0.0),),
                    ),
                  ),
                  Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child:Row(
                        children: [
                          Expanded(child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: LayoutBuilder(
                              builder: (BuildContext context, BoxConstraints constraints){
                                return Flex(
                                  direction: Axis.horizontal,
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  mainAxisSize: MainAxisSize.max,
                                  children: List.generate(
                                      (constraints.constrainWidth()/30).floor() ,
                                          (index) => SizedBox(
                                            height: 15,
                                            width: 20,
                                            child: DecoratedBox(
                                              decoration: BoxDecoration(
                                                  color: greenColor,
                                                  borderRadius: const BorderRadius.only(
                                                      topRight: Radius.circular(16.0),
                                                      topLeft: Radius.circular(16.0))),
                                            ),
                                          ),),
                                );
                              },
                            ),
                          )),
                        ],
                      )
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
