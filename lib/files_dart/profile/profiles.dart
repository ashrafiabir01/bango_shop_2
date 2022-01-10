import 'package:double_back_to_close/double_back_to_close.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:bango_shop/custom_widgets/custom_drawer.dart';
import 'package:shared_preferences/shared_preferences.dart';

class profile extends StatefulWidget {
  @override
  _profileState createState() => _profileState();
}

class _profileState extends State<profile> {
  String username_value = "";
  String pass_value = "";
  String name_value = "";
  String email_value = "";
  int gender_value = 0;
  int day_value = 0;
  int month_value = 0;
  int year_value = 0;

  @override
  void initState() {
    showperfer();
  }

  @override
  showperfer() async {
    final showdata = await SharedPreferences.getInstance();
    setState(() {
      username_value = showdata.getString("username")!;
      pass_value = showdata.getString("password")!;
      name_value = showdata.getString("name")!;
      email_value = showdata.getString("email")!;
      gender_value = showdata.getInt("gender")!;
      day_value = showdata.getInt("day")!;
      year_value = showdata.getInt("years")!;
      month_value = showdata.getInt("month")!;
    });
  }

  Widget build(BuildContext context) {
    var hei = MediaQuery.of(context).size.height;
    var wid = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xFF3BB73E),
      drawer: custom_drawer(),
      appBar: AppBar(
        backgroundColor: Color(0xFF3BB73E),
        elevation: 0,
        title: Text("My Profile"),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  height: hei/7.5,
                  color: Color(0xFF3BB73E),
                ),
                Container(
                  height: hei/1.31,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(0),
                      topRight: Radius.circular(130),
                    ),
                  ),
                  child: ListView(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 45,top:10),
                            child: Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  SizedBox(height: 35,)
                                  // Column(
                                  //   mainAxisAlignment: MainAxisAlignment.center,
                                  //   crossAxisAlignment: CrossAxisAlignment.start,
                                  //   children: [
                                  //     Text ('$name_value',style: TextStyle(
                                  //       fontWeight: FontWeight.bold,
                                  //       fontSize: hei/45
                                  //     ),),
                                  //     Text ('$email_value',style: TextStyle(
                                  //         fontWeight: FontWeight.w600,
                                  //         fontSize: hei/45
                                  //     ),)
                                  //   ],
                                  // )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: hei/55),
                      Divider(
                        thickness: 0.1,
                          color: Color(0xFF3BB73E),
                      ),
                      TextButton(onPressed: (){},
                        child: ListTile(
                          leading: Icon (Icons.account_circle_sharp,size: hei/23, color: Color(0xFF3BB73E),),
                          trailing:  Icon (Icons.arrow_forward ,size: hei/23,color: Color(0xFF3BB73E),),
                          title: Text ("Account Information",style: GoogleFonts.notoSans(textStyle: TextStyle(
                            fontSize: hei/45,fontWeight: FontWeight.w400,
                          )),),
                        ),
                      ),
                      TextButton(onPressed: (){},
                        child: ListTile(
                            leading: Icon (Icons.shop_outlined,size: hei/23, color: Color(0xFF3BB73E),),
                           trailing:  Icon (Icons.arrow_forward ,size: hei/23, color: Color(0xFF3BB73E),),
                           title: Text ("My Orders",style: GoogleFonts.notoSans(textStyle: TextStyle(
                             fontSize: hei/45,fontWeight: FontWeight.w400,
                           )),),
                        ),
                      ),
                      TextButton(onPressed: (){},
                        child: ListTile(
                          leading: Icon (Icons.location_on_outlined,size: hei/23, color: Color(0xFF3BB73E),),
                          trailing:  Icon (Icons.arrow_forward ,size: hei/23, color: Color(0xFF3BB73E),),
                          title: Text ("My Delivery Address",style: GoogleFonts.notoSans(textStyle: TextStyle(
                            fontSize: hei/45,fontWeight: FontWeight.w400,
                          )),),
                        ),
                      ),
                      TextButton(onPressed: (){},
                        child: ListTile(
                          leading: Icon (Icons.shop_outlined,size: hei/23, color: Color(0xFF3BB73E),),
                          trailing:  Icon (Icons.arrow_forward ,size: hei/23, color: Color(0xFF3BB73E),),
                          title: Text ("Payment Mathodes",style: GoogleFonts.notoSans(textStyle: TextStyle(
                            fontSize: hei/45,fontWeight: FontWeight.w400,
                          )),),
                        ),
                      ),

                      TextButton(onPressed: (){},
                        child: ListTile(
                          leading: Icon ( Icons.policy_outlined,size: hei/23, color: Color(0xFF3BB73E),),
                          trailing:  Icon (Icons.arrow_forward ,size: hei/23,color: Color(0xFF3BB73E),),
                          title: Text ("Privacy Policy",style: GoogleFonts.notoSans(textStyle: TextStyle(
                            fontSize: hei/45,fontWeight: FontWeight.w400,
                          )),),
                        ),
                      ),
                      TextButton(onPressed: (){},
                        child: ListTile(
                          leading: Icon (Icons.add_chart,size: hei/23, color: Color(0xFF3BB73E),),
                          trailing:  Icon (Icons.arrow_forward ,size: hei/23, color: Color(0xFF3BB73E),),
                          title: Text ("About App",style: GoogleFonts.notoSans(textStyle: TextStyle(
                            fontSize: hei/45,fontWeight: FontWeight.w400,
                          )),),
                        ),
                      ),
                      TextButton(onPressed: (){},
                        child: ListTile(
                          leading: Icon (Icons.exit_to_app_outlined,size: hei/23, color: Color(0xFF3BB73E),),
                          trailing:  Icon (Icons.arrow_forward ,size: hei/23, color: Color(0xFF3BB73E),),
                          title: Text ("Logout",style: GoogleFonts.notoSans(textStyle: TextStyle(
                            fontSize: hei/45,fontWeight: FontWeight.w400,
                          )),),
                        ),
                      ),

                    ],
                  ),
                )
              ],
            ),
            Positioned(
                top: hei/22,
                left: hei / 25,
                child: CircleAvatar(
                  radius: hei/12,
                  backgroundColor: Color(0xFF000000),
                  child: CircleAvatar(
                    radius: hei/13.5,
                    backgroundImage: gender_value == 2 ? AssetImage('assets/female.png'):AssetImage('assets/male.png'),
                  ),
                )),
          ],
        ),
      ),

    );
  }
}
