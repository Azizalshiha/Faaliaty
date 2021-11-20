import 'package:provider/screens/home/activity.dart';
import 'package:provider/screens/home/settings.dart';
import 'package:provider/shared/const.dart';
import 'package:flutter/material.dart';

// notifications screen, activity screen, Explor screen,

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFEF9EB),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 375,
                width: double.infinity,
                decoration: darkCont,
                child: Column(
                  children: [
                    SizedBox(height: 35,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 24,
                          child: CircleAvatar(
                            backgroundColor: Colors.blue,
                            radius: 22,
                          ),
                        ),
                        SizedBox(width: 118,),
                        InkWell(
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => SettingsPage(),
                            ),
                          ),
                          child: CircleAvatar(
                            backgroundColor: Color(0xFFFEF9EB),
                            radius: 13,
                            child: Icon(
                              Icons.settings,
                              color: Color(0xff222B44),
                            ),
                          ),
                        ),
                        SizedBox(width: 6,),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Text(
                      'P.Abdulaziz alshiha',
                      style: TextStyle(
                          color: Color(0xFFFEF9EB),
                          fontSize: 18,
                          letterSpacing: 0.75,
                          fontWeight: FontWeight.w500
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                      height: 110,
                      width: 310,
                      decoration: smallbox,
                      child: Text(
                        'It is a long established fact that a reader will be distracted'
                            ' by the readable content of a page when looking at its layout.'
                            ' The point of using Lorem Ipsum is that it has a more-or-less normal'
                            ' distribution of letters',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.25,
                        ),
                      ),
                    ),

                    SizedBox(height: 30,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                            padding: EdgeInsets.symmetric(horizontal: 6, vertical: 6),
                            height: 100,
                            width: 110,
                            decoration: smallbox,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Align(
                                  alignment: Alignment(0,-0.25),
                                  child: Text(
                                      '3',
                                      style: TextStyle(
                                          color: Color(0xFFFEF9EB),
                                          fontSize: 24,
                                          letterSpacing: 0.75,
                                          fontWeight: FontWeight.bold

                                      )
                                  ),
                                ),
                                SizedBox(height: 5,),
                                Text(
                                    'Waiting for',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 14,
                                        letterSpacing: 0.75,
                                        fontWeight: FontWeight.bold

                                    )
                                ),
                                Text(
                                    'approval',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 14,
                                        letterSpacing: 0.75,
                                        fontWeight: FontWeight.bold

                                    )
                                ),
                                SizedBox(height: 5,),
                              ],
                            )
                        ),
                        Container(
                            padding: EdgeInsets.symmetric(horizontal: 6, vertical: 6),
                            height: 100,
                            width: 110,
                            decoration: smallbox,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                    '+150 SR',
                                    style: TextStyle(
                                        color: Color(0xFFFEF9EB),
                                        fontSize: 21,
                                        letterSpacing: 0.75,
                                        fontWeight: FontWeight.bold
                                    )
                                ),
                                SizedBox(height: 15,),
                                Text(
                                    'Balance',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 18,
                                        letterSpacing: 0.75,
                                        fontWeight: FontWeight.bold
                                    )
                                ),
                                SizedBox(height: 5,),
                              ],
                            )
                        ),
                        // InkWell(
                        //   onTap: () => Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //       builder: (_) => Activity(),
                        //     ),
                        //   ),
                        //   child: Container(
                        //       padding: EdgeInsets.symmetric(horizontal: 6, vertical: 6),
                        //       height: 80,
                        //       width: 90,
                        //       decoration: smallbox,
                        //       child: Column(
                        //         mainAxisAlignment: MainAxisAlignment.end,
                        //         children: [
                        //           Align(
                        //             alignment: Alignment(0,-0.25),
                        //             child: Text(
                        //                 '6',
                        //                 style: TextStyle(
                        //                     color: Color(0xFFFEF9EB),
                        //                     fontSize: 24,
                        //                     letterSpacing: 0.75,
                        //                     fontWeight: FontWeight.bold
                        //                 )
                        //             ),
                        //           ),
                        //           SizedBox(height: 5,),
                        //           Text(
                        //               'Likes',
                        //               style: TextStyle(
                        //                   color: Colors.grey,
                        //                   fontSize: 15,
                        //                   letterSpacing: 0.75,
                        //                   fontWeight: FontWeight.bold
                        //
                        //               )
                        //           ),
                        //           SizedBox(height: 5,),
                        //         ],
                        //       )
                        //   ),
                        // ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 12,),
              Align(
                alignment: Alignment(-0.75,0),
                child: Text(
                  'Published Activities:',
                  style: TextStyle(
                    color: Color(0xff222B44),
                    fontSize: 18,
                    decoration: TextDecoration.underline,
                    letterSpacing: 0.15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(height: 8,),
              Container(
                child: GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => Activity(),
                    ),
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 130,
                        width: 320,
                        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                        decoration: BoxDecoration(
                          color: Color(0xFFFEF9EB),
                          border: Border.all(color: Colors.black54, width: 2),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20.0),
                            topRight: Radius.circular(20.0),
                            bottomLeft: Radius.circular(20.0),
                            bottomRight: Radius.circular(20.0),
                          ),
                        ),
                        child: Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.access_time,
                                  color: Color(0xff222B44),
                                  size: 28,
                                ),
                                SizedBox(height: 7,),
                                Text(
                                  '07 Nov',
                                  style: TextStyle(
                                      color: Color(0xff222B44),
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                                SizedBox(height: 4,),
                                Text(
                                  '4:30 AM',
                                  style: TextStyle(
                                    color: Color(0xff222B44),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(width: 2,),
                            VerticalDivider(
                              color: Colors.black,
                              thickness: 2,
                            ),
                            SizedBox(width: 3,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Chess tournament',
                                  style: TextStyle(
                                    color: Color(0xff222B44),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                                SizedBox(height: 18,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.location_on,
                                      color: Color(0xff222B44),
                                    ),
                                    SizedBox(width: 6,),
                                    Text(
                                      'Riyadh',
                                      style: TextStyle(
                                        color: Color(0xff222B44),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 17,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.group,
                                      color: Color(0xff222B44),
                                    ),
                                    SizedBox(width: 6,),
                                    Text(
                                      '16',
                                      style: TextStyle(
                                        color: Color(0xff222B44),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 12,),
                      Container(
                        height: 130,
                        width: 320,
                        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                        decoration: BoxDecoration(
                          color: Color(0xFFFEF9EB),
                          border: Border.all(color: Colors.black54, width: 2),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20.0),
                            topRight: Radius.circular(20.0),
                            bottomLeft: Radius.circular(20.0),
                            bottomRight: Radius.circular(20.0),
                          ),
                        ),
                        child: Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.access_time,
                                  color: Color(0xff222B44),
                                  size: 28,
                                ),
                                SizedBox(height: 7,),
                                Text(
                                  '07 Nov',
                                  style: TextStyle(
                                      color: Color(0xff222B44),
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                                SizedBox(height: 4,),
                                Text(
                                  '4:30 AM',
                                  style: TextStyle(
                                    color: Color(0xff222B44),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(width: 2,),
                            VerticalDivider(
                              color: Colors.black,
                              thickness: 2,
                            ),
                            SizedBox(width: 3,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Chess tournament',
                                  style: TextStyle(
                                    color: Color(0xff222B44),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                                SizedBox(height: 18,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.location_on,
                                      color: Color(0xff222B44),
                                    ),
                                    SizedBox(width: 6,),
                                    Text(
                                      'Riyadh',
                                      style: TextStyle(
                                        color: Color(0xff222B44),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 17,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.group,
                                      color: Color(0xff222B44),
                                    ),
                                    SizedBox(width: 6,),
                                    Text(
                                      '16',
                                      style: TextStyle(
                                        color: Color(0xff222B44),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 12,),
                      Container(
                        height: 130,
                        width: 320,
                        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                        decoration: BoxDecoration(
                          color: Color(0xFFFEF9EB),
                          border: Border.all(color: Colors.black54, width: 2),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20.0),
                            topRight: Radius.circular(20.0),
                            bottomLeft: Radius.circular(20.0),
                            bottomRight: Radius.circular(20.0),
                          ),
                        ),
                        child: Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.access_time,
                                  color: Color(0xff222B44),
                                  size: 28,
                                ),
                                SizedBox(height: 7,),
                                Text(
                                  '07 Nov',
                                  style: TextStyle(
                                      color: Color(0xff222B44),
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                                SizedBox(height: 4,),
                                Text(
                                  '4:30 AM',
                                  style: TextStyle(
                                    color: Color(0xff222B44),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(width: 2,),
                            VerticalDivider(
                              color: Colors.black,
                              thickness: 2,
                            ),
                            SizedBox(width: 3,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Chess tournament',
                                  style: TextStyle(
                                    color: Color(0xff222B44),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                                SizedBox(height: 18,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.location_on,
                                      color: Color(0xff222B44),
                                    ),
                                    SizedBox(width: 6,),
                                    Text(
                                      'Riyadh',
                                      style: TextStyle(
                                        color: Color(0xff222B44),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 17,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.group,
                                      color: Color(0xff222B44),
                                    ),
                                    SizedBox(width: 6,),
                                    Text(
                                      '16',
                                      style: TextStyle(
                                        color: Color(0xff222B44),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 12,),
                      Container(
                        height: 130,
                        width: 320,
                        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                        decoration: BoxDecoration(
                          color: Color(0xFFFEF9EB),
                          border: Border.all(color: Colors.black54, width: 2),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20.0),
                            topRight: Radius.circular(20.0),
                            bottomLeft: Radius.circular(20.0),
                            bottomRight: Radius.circular(20.0),
                          ),
                        ),
                        child: Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.access_time,
                                  color: Color(0xff222B44),
                                  size: 28,
                                ),
                                SizedBox(height: 7,),
                                Text(
                                  '07 Nov',
                                  style: TextStyle(
                                      color: Color(0xff222B44),
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                                SizedBox(height: 4,),
                                Text(
                                  '4:30 AM',
                                  style: TextStyle(
                                    color: Color(0xff222B44),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(width: 2,),
                            VerticalDivider(
                              color: Colors.black,
                              thickness: 2,
                            ),
                            SizedBox(width: 3,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Chess tournament',
                                  style: TextStyle(
                                    color: Color(0xff222B44),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                                SizedBox(height: 18,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.location_on,
                                      color: Color(0xff222B44),
                                    ),
                                    SizedBox(width: 6,),
                                    Text(
                                      'Riyadh',
                                      style: TextStyle(
                                        color: Color(0xff222B44),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 17,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.group,
                                      color: Color(0xff222B44),
                                    ),
                                    SizedBox(width: 6,),
                                    Text(
                                      '16',
                                      style: TextStyle(
                                        color: Color(0xff222B44),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
