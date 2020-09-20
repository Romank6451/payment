import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:payment/helper/colors.dart';
import 'package:payment/helper/screensize.dart';

class Payment1 extends StatefulWidget {
  @override
  _Payment1State createState() => _Payment1State();
}

class _Payment1State extends State<Payment1> {
  var isToggled=false;
  var status=0;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var height=SizeConfig.screenHeight;
    var width=SizeConfig.screenWidth;
    var vert_block=SizeConfig.safeBlockVertical;
    var horz_block=SizeConfig.safeBlockHorizontal;
    return Scaffold(

      body: Container(
        width: width,
        height: height,
        child: Stack(
          children: [
           
            Container(
              width: width,
              height: height,
              child: Image.asset('assets/background.png',fit: BoxFit.cover,),
            ),
            Container(
              alignment: Alignment.bottomLeft,
             // padding: EdgeInsets.all(10),
              width: width,
              height: vert_block*10,
              //color: Colors.red,
              child: Row(
                children: [
                  IconButton(icon: Icon(Icons.arrow_back,color: Mycolors.black,), onPressed: null),
                  Text('Packages',style: TextStyle(color: Mycolors.black,fontSize: 16,fontWeight: FontWeight.bold),)
                ],
              ),
            ),

            Align(
              alignment: Alignment.center,
              child: Container(
                margin: EdgeInsets.only(left: 35,right: 35,bottom: 50,top: 90),
                width: width,
                height: height,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Mycolors.white
                ),
                child: Column(
                  children: [
                    Container(
                      width: width,
                      height: vert_block*22,
                      padding: EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(
                         gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [ Mycolors.upper_red,Mycolors.lower_red]),
                        borderRadius: BorderRadius.circular(5)
                      ),
                      child: Column(
                        children: [
                  Text('Packages',style: TextStyle(color: Mycolors.white,fontSize: 15,fontWeight: FontWeight.bold),),
                  SizedBox(height: vert_block*2,),
                  Container(
                    width: horz_block*55,
                    height: vert_block*6,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                    color: Colors.white,

                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                  Text('Kes ',style: TextStyle(color: Mycolors.black,fontSize: 24),),
                  Text('150.00',style: TextStyle(color: Mycolors.black,fontSize: 24,fontWeight: FontWeight.bold),),

                      ],
                    ),
                  ),
                  SizedBox(height: vert_block*4,),

                  Text('Get access to all content on the Viusasa App',style: TextStyle(color: Mycolors.white,fontSize: 10,),),
                  Text('Select to get an updated amount',style: TextStyle(color: Mycolors.white,fontSize: 10,fontWeight: FontWeight.bold),),


                        ],
                      ),
                    ),
                    Container(
                      width: width,
                      height: vert_block*7,
                      //color: Colors.black,
                    ),
                    Container(
                      width: width,
                      height: vert_block*6,
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                          boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          spreadRadius: 0,
                          blurRadius: 0,
                          offset: Offset(0, 1), // changes position of shadow
                        ),
                        
                      ],
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                   Text('Viusasa Videos unlimited ',style: TextStyle(color: Mycolors.black,fontSize: 11,),),
                  Text('Kes 60',style: TextStyle(color: Mycolors.black,fontSize: 11,fontWeight: FontWeight.bold),),
                                ],
                              ),
                             Icon(Icons.check,size: 30,color: Mycolors.green,)
                            ],
                          )

                        ],
                      ),
                    ),

                    SizedBox(height: vert_block*1.5,),

                    Container(
                      width: width,
                      height: vert_block*6,
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                          boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          spreadRadius: 0,
                          blurRadius: 0,
                          offset: Offset(0, 1), // changes position of shadow
                        ),
                        
                      ],
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                   Text('Viusasa music unlimited ',style: TextStyle(color: Mycolors.black,fontSize: 11,),),
                  Text('Kes 40',style: TextStyle(color: Mycolors.black,fontSize: 11,fontWeight: FontWeight.bold),),
                                ],
                              ),
                              Icon(Icons.check,size: 30,color: Mycolors.green,)
                            ],
                          )

                        ],
                      ),
                    ),

                    
                    SizedBox(height: vert_block*1.5,),

                    Container(
                      width: width,
                      height: vert_block*6,
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                         boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          spreadRadius: 0,
                          blurRadius: 0,
                          offset: Offset(0, 1), // changes position of shadow
                        ),
                        
                      ],
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                   Text('Kids Viu ',style: TextStyle(color: Mycolors.black,fontSize: 11,),),
                  Text('Kes 20',style: TextStyle(color: Mycolors.black,fontSize: 11,fontWeight: FontWeight.bold),),
                                ],
                              ),
                              Icon(Icons.check,size: 30,color: Mycolors.green,)
                            ],
                          )

                        ],
                      ),
                    ),

                     SizedBox(height: vert_block*1.5,),

                    Container(
                      width: width,
                      height: vert_block*6,
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                         boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          spreadRadius: 0,
                          blurRadius: 0,
                          offset: Offset(0, 1), // changes position of shadow
                        ),
                        
                      ],
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                   Text('Viusasa Elimu ',style: TextStyle(color: Mycolors.black,fontSize: 11,),),
                  Text('Kes 30',style: TextStyle(color: Mycolors.black,fontSize: 11,fontWeight: FontWeight.bold),),
                                ],
                              ),
                              Icon(Icons.check,size: 30,color: Mycolors.green,)
                            ],
                          )

                        ],
                      ),
                    ),

                    
                    SizedBox(height: vert_block*1.5,),

                    Container(
                      width: width,
                      height: vert_block*6,
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                         boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          spreadRadius: 0,
                          blurRadius: 0,
                          offset: Offset(0, 1), // changes position of shadow
                        ),
                        
                      ],
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                   Text('Viusasa News, TV & Radio ',style: TextStyle(color: Mycolors.black,fontSize: 11,),),
                  // Text('Kes 30',style: TextStyle(color: Mycolors.black,fontSize: 11,fontWeight: FontWeight.bold),),
                                ],
                              ),
                              Icon(Icons.check,size: 30,color: Mycolors.green,)
                            ],
                          )

                        ],
                      ),
                    ),

                    SizedBox(height: vert_block*1.5,),

                    Container(
                      width: width,
                      height: vert_block*6,
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                         boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          spreadRadius: 0,
                          blurRadius: 0,
                          offset: Offset(0, 1), // changes position of shadow
                        ),
                        
                      ],
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                   Text('Viusasa Deals and Auctions ',style: TextStyle(color: Mycolors.black,fontSize: 11,),),
                  // Text('Kes 30',style: TextStyle(color: Mycolors.black,fontSize: 11,fontWeight: FontWeight.bold),),
                                ],
                              ),
                              Icon(Icons.check,size: 30,color: Mycolors.green,)
                            ],
                          )

                        ],
                      ),
                    ),


                    Container(
                      child: FlutterSwitch(
                        
                      height: 20.0,
                      width: 40.0,
                      padding: 0.0,
                      toggleSize: 15.0,
                      borderRadius: 10.0,
                      //activeColor: lets_cyan,
                      value: isToggled,
                      onToggle: (value) {
                            setState(() {
                                  isToggled = value;
                            });
     },
),
                    ),

                  ],
                ),
              ),
            )
          ],
        ),

      ),
      
    );
  }
}