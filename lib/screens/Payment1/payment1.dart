
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:group_radio_button/group_radio_button.dart';
import 'package:payment/helper/colors.dart';
import 'package:payment/helper/screensize.dart';

class Payment1 extends StatefulWidget {
  @override
  _Payment1State createState() => _Payment1State();
}

class _Payment1State extends State<Payment1> {
  var isToggled=false;
  var status=0;
  var selections=[true,true,true,true,true,true];
  var total=150;

  var selection =0;



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
                  Text('Packages',style: TextStyle(color: Mycolors.black,fontSize: 16,fontFamily: 'Segoe UI-Semibold'),)
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


                         gradient:status==0?LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [ Mycolors.upper_red,Mycolors.lower_red]):
                          status==1?LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [ Mycolors.yellow,Mycolors.organe]):
                          LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [ Mycolors.upper_red,Mycolors.lower_red]),



                        borderRadius: BorderRadius.circular(5)
                      ),
                      child: Column(
                        children: [
                  Text(status==0?'PLATINUM':"VALUE PACK",style: TextStyle(color: Mycolors.white,fontSize: 15,fontFamily: 'Segoe UI-Bold'),),
                  SizedBox(height: vert_block*2,),
                  InkWell(
                    onTap: (){

                      // print("status has been changed "+status.toString());
                    },
                    child: Container(
                      width: horz_block*55,
                      height: vert_block*6,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                      color: Colors.white,

                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                    Text(!isToggled?'Kes ':'USD ',style: TextStyle(color: Mycolors.black,fontSize: 24,fontFamily: 'Segoe UI-light'),),
                    Text('$total',style: TextStyle(color: Mycolors.black,fontSize: 24,fontFamily: 'Segoe UI-Bold'),),

                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: vert_block*4,),

                  Text(status==0?'Get access to all content on the Viusasa App':"Customize your Viysasa Experience ",style: TextStyle(color: Mycolors.white,fontSize: 10,fontFamily: 'Segoe UI-light'),),
                  Text('Select to get an updated amount',style: TextStyle(color: Mycolors.white,fontSize: 10,fontFamily: 'Segoe UI-Bold'),),


                        ],
                      ),
                    ),
                    Container(
                      width: width,
                      height: vert_block*7,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Radio(

                            value: selection,

                            groupValue: 0,
                            activeColor: Mycolors.green,
                            autofocus: true,

                            onChanged: (v){
                              selection=0;
                              setState(() {

                              });
                            },
                          ),
                          Text("Weekly",style: TextStyle(color: Mycolors.black,fontSize: 11,fontFamily: 'Segoe UI-Semibold'),),
                          Radio(
                            value: selection,
                            groupValue: 1,
                            activeColor: Mycolors.green,
                            onChanged: (s){
                              selection=1;
                              setState(() {

                              });

                            },
                          ),
                          Text("Monthly",style: TextStyle(color: Mycolors.black,fontSize: 11,fontFamily: 'Segoe UI-Semibold')),
                        ],
                      ),
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
                          InkWell(
                            onTap: (){
                              status=1;
                              selections[0]=!selections[0];

                              if(selections[0]){
                                total+=60;
                              }else{
                                total-=60;
                              }


                              if(selections[0] && selections[1] && selections[2] && selections[3]
                              && selections[4] && selections[5]){
                                status=0;
                              }
                             setState(() {

                             });
                            },
                            child:

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                     Text('Viusasa Videos unlimited ',style: TextStyle(color: selections[0]? Mycolors.black:Mycolors.black.withOpacity(0.3),fontSize: 11,fontFamily: 'Segoe UI-Semibold'),),
                  // Text('Kes 60',style: TextStyle(color:selections[0]? Mycolors.black:Mycolors.black.withOpacity(0.3),fontSize: 11,fontWeight: FontWeight.bold),),

                                    Text(!isToggled?'Kes 60':'USD 60',style: TextStyle(color:selections[1]? Mycolors.black:Mycolors.black.withOpacity(0.3),fontSize: 11,fontFamily: 'Segoe UI-Black')),

                                  ],
                                ),
                            selections[0]?Icon(Icons.check,size: 30,color: Mycolors.green,):Icon(Icons.check,size: 30,color: Mycolors.gray.withOpacity(0.3),)
                              ],
                            ),
                          )

                        ],
                      ),
                    ),

                    SizedBox(height: vert_block*1,),

                    InkWell(
                      onTap: (){
                        status=1;
                        selections[1]=!selections[1];

                        if(selections[1]){
                          total+=40;
                        }else{
                          total-=40;
                        }


                        if(selections[0] && selections[1] && selections[2] && selections[3]
                            && selections[4] && selections[5]){
                          status=0;
                        }
                        setState(() {

                        });
                      },
                      child: Container(
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
                                    Text('Viusasa Videos unlimited ',style: TextStyle(color: selections[1]? Mycolors.black:Mycolors.black.withOpacity(0.3),fontSize: 11,fontFamily: 'Segoe UI-Semibold'),),


                                    Text(!isToggled?'Kes 40':'USD 40',style: TextStyle(color:selections[1]? Mycolors.black:Mycolors.black.withOpacity(0.3),fontSize: 11,fontFamily: 'Segoe UI-Black')),
                                    // Text('Kes 60',style: TextStyle(color:selections[1]? Mycolors.black:Mycolors.black.withOpacity(0.3),fontSize: 11,fontWeight: FontWeight.bold),),

                                  ],
                                ),
                                selections[1]?Icon(Icons.check,size: 30,color: Mycolors.green,):Icon(Icons.check,size: 30,color: Mycolors.gray.withOpacity(0.3),)
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),

                    
                    SizedBox(height: vert_block*1,),

                    InkWell(
                      onTap: (){
                        status=1;
                        selections[2]=!selections[2];

                        if(selections[2]){
                          total+=20;
                        }else{
                          total-=20;
                        }


                        if(selections[0] && selections[1] && selections[2] && selections[3]
                            && selections[4] && selections[5]){
                          status=0;
                        }
                        setState(() {

                        });
                      },
                      child: Container(
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
                                    Text('Viusasa Videos unlimited',style: TextStyle(color: selections[2]? Mycolors.black:Mycolors.black.withOpacity(0.3),fontSize: 11,fontFamily: 'Segoe UI-Semibold'),),
                                    Text(!isToggled?'Kes 20':'USD 20',style: TextStyle(color:selections[1]? Mycolors.black:Mycolors.black.withOpacity(0.3),fontSize: 11,fontFamily: 'Segoe UI-Black')),

                                  ],
                                ),
                                selections[2]?Icon(Icons.check,size: 30,color: Mycolors.green,):Icon(Icons.check,size: 30,color: Mycolors.gray.withOpacity(0.3),)
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),

                     SizedBox(height: vert_block*1,),

                    InkWell(
                      onTap: (){
                        status=1;
                        selections[3]=!selections[3];

                        if(selections[3]){
                          total+=30;
                        }else{
                          total-=30;
                        }

                        if(selections[0] && selections[1] && selections[2] && selections[3]
                            && selections[4] && selections[5]){
                          status=0;
                        }
                        setState(() {

                        });
                      },
                      child: Container(
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
                                    Text('Viusasa music unlimited ',style: TextStyle(color: selections[3]? Mycolors.black:Mycolors.black.withOpacity(0.3),fontSize: 11,fontFamily: 'Segoe UI-Semibold'),),
                                    Text(!isToggled?'Kes 30':'USD 30',style: TextStyle(color:selections[1]? Mycolors.black:Mycolors.black.withOpacity(0.3),fontSize: 11,fontFamily: 'Segoe UI-Black')),

                                  ],
                                ),
                                selections[3]?Icon(Icons.check,size: 30,color: Mycolors.green,):Icon(Icons.check,size: 30,color: Mycolors.gray.withOpacity(0.3),)
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),

                    
                    SizedBox(height: vert_block*1,),

                    InkWell(
                      onTap: (){
                        status=1;
                        // selections[4]=!selections[4];

                        if(selections[4]){
                          total+=20;
                        }else{
                          total-=20;
                        }


                        if(selections[0] && selections[1] && selections[2] && selections[3]
                            && selections[4] && selections[5]){
                          status=0;
                        }
                        setState(() {

                        });
                      },
                      child: Container(
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
                                    Text('Viusasa News, TV & Radio',style: TextStyle(color: selections[4]? Mycolors.black:Mycolors.black.withOpacity(0.3),fontSize: 11,fontFamily: 'Segoe UI-Semibold'),),
                                    Text(status==1?'Free with subscription':"",style: TextStyle(color:selections[1]? Mycolors.black.withOpacity(0.5):Mycolors.black.withOpacity(0.3),fontSize: 10,fontFamily: 'Segoe UI-Regular'),),
                                  ],
                                ),
                                selections[4]?Icon(Icons.check,size: 30,color: Mycolors.green,):Icon(Icons.check,size: 30,color: Mycolors.gray.withOpacity(0.3),)
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),

                    SizedBox(height: vert_block*1,),

                    InkWell(
                      onTap: (){
                        status=1;
                        // selections[5]=!selections[5];


                        if(selections[0] && selections[1] && selections[2] && selections[3]
                            && selections[4] && selections[5]){
                          status=0;
                        }
                        setState(() {

                        });
                      },
                      child: Container(
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
                                    Text('Viusasa Deals and Auctions',style: TextStyle(color: selections[5]? Mycolors.black:Mycolors.black.withOpacity(0.3),fontSize: 11,fontFamily: 'Segoe UI-Semibold'),),
                                    Text(status==1?'Free with subscription':"",style: TextStyle(color:selections[1]? Mycolors.black.withOpacity(0.5):Mycolors.black.withOpacity(0.3),fontSize: 11,fontFamily: 'Segoe UI-regular'),),
                                  ],
                                ),
                                selections[5]?Icon(Icons.check,size: 30,color: Mycolors.green,):Icon(Icons.check,size: 30,color: Mycolors.gray.withOpacity(0.3),)
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),


                    SizedBox(height: vert_block*2,),

                    Container(

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("KSH",style: TextStyle(color: !isToggled?Mycolors.black:Mycolors.black.withOpacity(0.3),fontFamily: !isToggled? 'Segoe UI-Semibold':'Segoe UI-regular'),),
                          SizedBox(width: 10,),
                          Container(

                           decoration: BoxDecoration(
                             border: Border.all(color: Mycolors.green,width: 1),
                             borderRadius: BorderRadius.circular(10),
                           ),
                            child: FlutterSwitch(

                            height: 20.0,
                            width: 40.0,
                            padding: 2.0,
                            toggleSize: 20.0,
                            borderRadius: 10.0,
                            activeColor: Colors.transparent,
                            inactiveColor: Colors.transparent,
                            toggleColor: Mycolors.green,

                            //activeColor: lets_cyan,
                            value: isToggled,
                            onToggle: (value) {
                                  setState(() {
                                        isToggled = value;
                                  });
     },
),
                          ),
                          SizedBox(width: 10,),
                          Text("USD",style: TextStyle(color: isToggled?Mycolors.black:Mycolors.black.withOpacity(0.3),fontFamily: !isToggled? 'Segoe UI-Semibold':'Segoe UI-regular'),),

                          SizedBox(width: 10,),


                        ],
                      ),
                    ),
                    SizedBox(height: vert_block*2),
                    Container(
                       decoration: BoxDecoration(
                         color: Mycolors.red,
                         borderRadius: BorderRadius.all(Radius.circular(5)),
                       ),
                        width: horz_block*40,
                        height: vert_block*5,
                        child: Center(child: Row(
                          mainAxisAlignment:  MainAxisAlignment.center,
                          children: [

                            Text("Pay",style: TextStyle(color:Mycolors.white,fontSize: 18,fontFamily: 'Segoe UI-regular'),),
                            SizedBox(width: 10,),
                            Icon(Icons.arrow_forward,color: Mycolors.white,),
                          ],
                        ))),


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