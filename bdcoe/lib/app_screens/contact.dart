import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:ui';
const URL= "http://www.bdcoe.co.in/";

class Contact extends StatelessWidget{


   Future launchURL(String url) async {
     if (await canLaunch(url)){
       await launch(url, forceSafariVC: true,forceWebView: true);
     }

   }
  final titleBar = Color(0xFFEA7773);
      final homeBg = Color(0xFFF5BCBA);
      

  @override
  Widget build(BuildContext context) {
   
   return Scaffold(
     backgroundColor: homeBg,
      appBar: AppBar(title: Text("Contact",
      style: TextStyle(color: Colors.white70,),),
      backgroundColor: titleBar,
      leading: IconButton(icon: Icon(Icons.phone), 
         onPressed: (){
          
          
         })),
    /* drawer: Drawer(
        child: Column(
          children:<Widget>[
                UserAccountsDrawerHeader(
               
                accountName: Text(
                  "BIG Data"
                ),
                accountEmail: Text(
                  "bdcoe.akgec@gmail.com"
                ),
                currentAccountPicture: CircleAvatar(
                  child: Text(
                    "BD"
                  ),
                  backgroundColor: Colors.blueGrey
                ),
                otherAccountsPictures: <Widget>[
                  CircleAvatar(
                  child: Text(
                    "A"
                  ),
                  ),
                ],
                onDetailsPressed: (){

                  
                },
                ),
                ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                onTap: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context){
       return Home();
     }));
                },selected: true,
                ),
                ListTile(
                  leading: Icon(Icons.group_work),
                title: Text("About US"),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
       return About();
     }));
                },selected: true,
                
                ),
                ListTile(
                  leading: Icon(Icons.people),
                title: Text("Our Team"),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
       return Team();
     }));
                },selected: true,
                ),
                ListTile(
                  leading: Icon(Icons.phone),
                title: Text("Contact"),
                onTap: ( ){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
       return Contact();
     }));
                  
                },selected: true,
                ),


          ]
        ),
      ),
*/      body: SingleChildScrollView(
        child:
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Container(
            color: homeBg,
            child: Column(
              children: [
                   Padding(
                     padding: const EdgeInsets.all(0.0),
                     child: Container(
                       width:600,
                       height:600,
                         child:     
                    FittedBox(
                      fit:BoxFit.fill,
                      child: ( Bigdatateam())),
                      decoration: BoxDecoration(
                        
    color: titleBar,
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(10),
        topRight: Radius.circular(10),
        bottomLeft: Radius.circular(10),
        bottomRight: Radius.circular(10)
    ),
    boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.5),
        
        blurRadius: 50,
                      // color: homeBg,
                       //child:
             
                  
                    ),] ))),
                 SizedBox(height: 1.0),

                Card( color: titleBar,
                              child: Row(children: [
                   Icon(
                     Icons.contact_mail),
                   SizedBox(width: 20.0),
                   
                   Container(
                     color: titleBar,
                     child: Expanded(
                       child: Center(
                         child: Card(color: titleBar,
                            shadowColor: Colors.black54,
                            elevation: 50.0,
                                                               child: Center(
                                                                 child: Text("contact@bdcoe.co.in",
                         style: TextStyle(
                          
                           fontSize: 20.0,
                           color: Colors.white70,
                         ),
                         ),
                                                               ),
                         ),
                       ),
                       ),
                   ),



                  ],),
                ) , 
                 SizedBox(height: 10.0),
                Card(
                   color:titleBar,
                                child: Row(
                     mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                   Icon(Icons.contact_phone,color: Colors.pinkAccent[900]),
                   SizedBox(width: 20.0),
              
                   Center(
                     child: Card(color: titleBar,
                           shadowColor: Colors.black54,
                           elevation: 50.0,
                                          child: Center(
                                            child: Text("bdcoe.co.in",
                       style: TextStyle(
                         fontSize: 20.0,
                         color: Colors.white70,
                       ),),
                                          ),
                     ),
                   )
                  ]),
                ),
                  
                  Center(
                    child: Card(
                      color: titleBar,
                      elevation: 50.0,
                      shadowColor: Colors.black54,
                      child:
                      Center(
                        child: Text(
                          "Have a nice day!!"
                          ,style: TextStyle(
                            fontFamily: "Raleway-Bold.ttf",
                            fontSize: 20.0,
                            color: Colors.white70,
                            
                          ),
                        ),
                      ),
                    ),
                  ),


            ],),
          ),
        )
      )
      
   );
  }
 
}

class Bigdatateam extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
     AssetImage bigDatateam = new AssetImage('lib/images/big-data.jpg');
     Image image= Image(image: bigDatateam,width: 600.0 ,height: 600.0,);
     return Padding(
       padding: const EdgeInsets.all(12.0),
       child: Container(

         child: image ,),
     );
  }
  }