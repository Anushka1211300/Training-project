


//import 'package:bdcoe/app_screens/home.dart';
//import 'package:flutter/foundation.dart';
import 'package:bdcoe/app_screens/nav.dart';
import 'package:flutter/material.dart';
//import 'package:bdcoe/app_screens/Animation/FadeAnimation.dart';
import 'package:firebase_auth/firebase_auth.dart';




class LoginPage extends StatefulWidget {
  @override
   _LoginPageState createState() => _LoginPageState();
}
class _LoginPageState extends State<LoginPage> {
  final titleBar = Color(0xFFEA7773);
      final homeBg = Color(0xFFF5BCBA);
      final button = Color(0xFFEA7773);
  final formKey = GlobalKey<FormState>();
   int _selectedIndex=0;
   /*List<Widget> _widgetOptions= <Widget>[
    

    Home(),
      
   Team(),
 
   About(),
  
   Contact(),
   
   ];

*/
    void _onItemTap(int index){
      setState(() {
        _selectedIndex= index;
      });
 }

  // ignore: unused_field
  String _password;
  // ignore: unused_field
  String _email;
 /*  bool validdateandsave(){
final form =formKey.currentState;
if(form.validate()){
   form.save();
   return true;
}
return false;
}*/
   

  /* void validdateandsubmit() async {
      if (validdateandsave() ){
        try{
        // ignore: deprecated_member_use
        FirebaseUser user= (await FirebaseAuth.instance.signInWithEmailAndPassword(email:  _email, password: _password)) as FirebaseUser;
         print('Sign in: ${user.uid}');
        }
        catch (e){
          print('error $e');
        }
      }
   }*/
   @override
  // ignore: unused_element
  Widget build(BuildContext context) {
    Size size= MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: homeBg,
       appBar: AppBar(title: Text("Login Page",
       style: TextStyle(color: Colors.white70),),
       backgroundColor: titleBar,
       leading: IconButton(icon: Icon(Icons.table_chart), 
         onPressed: (){
         },
       ),
       ),
        
     
      
        bottomNavigationBar:BottomNavigationBar(
         items: [BottomNavigationBarItem( icon: Icon( Icons.person),
           title: Text('Login page '),
           backgroundColor: homeBg,),
           BottomNavigationBarItem( icon: Icon( Icons.home),
           title: Text(': Welcome Page to the app '),
           backgroundColor: homeBg,),
           
           
           ],
           currentIndex: _selectedIndex,
   onTap: _onItemTap,
        ),
     
       body: SingleChildScrollView(
      
      	  child: Container(
          width: double.infinity,
          height:size.height,
	       /* child: Column(
	          children: <Widget>[
	            Container(
	             //height: 400,
	              decoration: BoxDecoration(
	                image: DecorationImage(
	                  image: AssetImage('assets/images/loginbg.jpg'),
	                  fit: BoxFit.fill
	                )
	              ),
	              child: Stack(
	                children: <Widget>[
	                  Positioned(
	                    left: 30,
	                    width: 80,
	                    height: 200,
	                    child: FadeAnimation(1, Container(
	                      decoration: BoxDecoration(
	                        image: DecorationImage(
	                          image: AssetImage('assets/images/light-1.png')
	                        )
	                      ),
	                    )),
	                  ),
	                  Positioned(
	                    left: 40,
	                    width: 80,
	                    height: 50,
	                    child: FadeAnimation(1.3, Container(
	                      decoration: BoxDecoration(
	                        image: DecorationImage(
	                          image: AssetImage('assets/images/light-2.png')
	                        )
	                      ),
	                    )),
	                  ),
	                  Positioned(
	                    right: 40,
	                    top: 40,
	                    width: 80,
	                    height: 50,
	                    child: FadeAnimation(1.5, Container(
	                      decoration: BoxDecoration(
	                        image: DecorationImage(
	                          image: AssetImage('assets/images/design.png')
	                        )
	                      ),
	                    )),
	                  ),
	                  Positioned(
	                    child: FadeAnimation(1.6, Container(
	                      margin: EdgeInsets.only(top: 50),
	                      child: Center(
	                        child: Text("Login", style: TextStyle(color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),),
	                      ),
	                    )),
	                  )
	                ],
	              ),
	            ),
	            Padding(
	              padding: EdgeInsets.all(30.0),
	              child: Column(
	                children: <Widget>[
	                  FadeAnimation(1.8, Container(
	                    padding: EdgeInsets.all(5),
	                    decoration: BoxDecoration(
	                      color: Colors.white,
	                      borderRadius: BorderRadius.circular(10),
	                      boxShadow: [
	                        BoxShadow(
	                          color: Color.fromRGBO(143, 148, 251, .2),
	                          blurRadius: 20.0,
	                          offset: Offset(0, 10)
	                        )
	                      ]
	                    ),
	                    child: Column(
	                      children: <Widget>[
	                        Container(
	                          padding: EdgeInsets.all(8.0),
	                          decoration: BoxDecoration(
	                            border: Border(bottom: BorderSide(color: Colors.grey[100]))
	                          ),
	                          child: TextFormField(
                              onSaved: (value) => _email = value,
                              keyboardType: TextInputType.emailAddress,
	                            decoration: InputDecoration(
	                              border: InputBorder.none,
                               
	                              hintText: "Email or Phone number",
	                              hintStyle: TextStyle(color: Colors.grey[400])
	                            ),
	                          ),
	                        ),
                          
	                        Container(
	                          padding: EdgeInsets.all(8.0),
	                          child: TextFormField(
                               onSaved: (value) => _password = value, 
                              obscureText: true,
	                            decoration: InputDecoration(
	                              border: InputBorder.none,
	                              hintText: "Password",
	                              hintStyle: TextStyle(color: Colors.grey[400])
	                            ),
	                          ),
	                        )
	                      ],
	                    ),
	                  )),
	                  SizedBox(height: 30,),
	                  FadeAnimation(2, Container(
                      
	                    height: 50,
	                    decoration: BoxDecoration(
	                      borderRadius: BorderRadius.circular(10),
	                      gradient: LinearGradient(
	                        colors: [
	                          Color.fromRGBO(143, 148, 251, 1),
	                          Color.fromRGBO(143, 148, 251, .6),
	                        ]
	                      )
	                    ),
	                    child: RaisedButton(
                       
                        onPressed: (){
                          
                            Nav();
                            
                        },
                         child: Center(
	                        child: Text("Login", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                    ),
	                    ),
	                  )),
	                  SizedBox(height: 70,),
	                  FadeAnimation(1.5, Text("Forgot Password?", style: TextStyle(color: Color.fromRGBO(143, 148, 251, 1)),)),
	                   
                     
	                  
                  ],
	              ),
	            ),
	        
            ],
	        ),*/
	      padding: EdgeInsets.all(12.0),
        child: new Form(
          key: formKey,
          child:
        new Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [


          Center(
            child: new TextFormField(
             
               // ignore: missing_return
               validator: (input){ 
                 if(input.isEmpty ){
                      return 'Please type an email';
               }},
               onSaved: (input)=> _email = input,
                decoration: InputDecoration(labelText: "Email"),
            ),
          ),
          Center(
            child: new TextFormField(
             // ignore: missing_return
             validator: (input){ 
                 if(input.length<8 ){
                      return 'Please type a Password of atleat 8 characters';
               }},
               onSaved: (input)=> _password = input,
                decoration: InputDecoration(labelText: "Password"),
                obscureText: true,
                cursorColor: Colors.white70,
        ),
          ),
        new RaisedButton( onPressed: login,
        color: button,
        child: Text(
          "Login",
          style:TextStyle(
            fontSize:25.0,
          )
        )),
        ],)
        
        ,)
        
        
        
        
        ),
      	),

    
    );
  }
  Future<void> login() async{
    final formState = formKey.currentState;
      if(formState.validate()){
        formState.save();
        try{

         // ignore: unused_local_variable
         UserCredential  user = await (FirebaseAuth.instance.signInWithEmailAndPassword(email: _email , password: _password));
         Navigator.push(context, MaterialPageRoute(builder: (context){
           return Nav();
         }));
        }catch(e){
        print(e);
        }

       
      }
  }

  
  }

 
  
  

