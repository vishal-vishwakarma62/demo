import 'package:flutter/material.dart';
class place_order1 extends StatefulWidget {
  const place_order1({super.key});

  @override
  State<place_order1> createState() => _place_order1State();
}

class _place_order1State extends State<place_order1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(28),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Stack(
                      children: [Image.asset('assets/frame.png',),
                        Padding(
                          padding: const EdgeInsets.only(left: 50),
                          child: Text('Sydney Central...',style: TextStyle(fontSize: 18),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 50,top: 20),
                          child: Text('123 Peaceful Street,..'),
                        ),Padding(
                          padding: const EdgeInsets.only(left: 250),
                          child: CircleAvatar(
                            radius: 22,
                            backgroundColor: Colors.white,
                            child: Icon(Icons.search,color: Colors.indigo,),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 300),
                          child: Image.asset('assets/frame2.png',),
                        ),
                      ]),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Image.asset('assets/frame1.png',),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15,right: 160),
                    child: Text('Nearby Mosques',style: TextStyle(fontSize: 20,color: Colors.black),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Container(
                      height: 380,
                      width: 320,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        border: Border.all(color: Colors.black12)
                      ),
                      child:Column(
                        children: [
                          ListView.builder(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: 3,
                              itemBuilder: (context, index) {
                              return Container(
                                margin: EdgeInsets.only(top: 15),
                                child: ListTile(
                                  leading: Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Image.asset(imagename[index]),
                                  ),
                                  title: Padding(
                                    padding: const EdgeInsets.only(),
                                    child: Text('Al- Aqsa Mosque, Jerusalem',style: TextStyle(fontSize: 14),),
                                  ),
                                  subtitle: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('2 Km Away from your location'),
                                      Text('Fajr 05:00 AM',style: TextStyle(color:Colors.blueAccent),),
                                      Divider(height: 20,)
                                    ],
                                  ),
                                  trailing: Icon(Icons.arrow_forward_ios_outlined),

                                ),

                              );

                              },),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment:MainAxisAlignment.center ,
                            children: [
                              Text('More nearby mosques'),
                              Icon(Icons.keyboard_arrow_down_outlined,size: 20,)
                            ],
                          )
                        ],
                      ) ,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Divider(height: 20,thickness: 2,),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Image.asset('assets/frame3.png',),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15,right: 160),
                    child: Text('Nearby Mosques',style: TextStyle(fontSize: 20,color: Colors.black),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Container(
                      height: 380,
                      width: 320,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          border: Border.all(color: Colors.black12)
                      ),
                      child:ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.only(top: 15),
                            child: ListTile(
                              leading: Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Image.asset(imagename[index]),
                              ),
                              title: Padding(
                                padding: const EdgeInsets.only(),
                                child: Text('Al- Aqsa Mosque, Jerusalem',style: TextStyle(fontSize: 14),),
                              ),
                              subtitle: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('2 Km Away from your location'),
                                  Text('Fajr 05:00 AM',style: TextStyle(color:Colors.blueAccent),),
                                  Divider(height: 20,)
                                ],
                              ),
                              trailing: Icon(Icons.arrow_forward_ios_outlined),
          
                            ),
          
                          );
          
                        },) ,
                    ),
                  )
                ],
              ),
            ),
          ),
        )
      ),
    );
  }
}
var imagename = ['assets/line.png','assets/line1.png','assets/line3.png'];
