import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:ola_mundo/home_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

String usuario = '';
String password = '';

class _LoginPageState extends State<LoginPage> {


  Widget _body(){
    return 
    ListView( 
      children:[ SingleChildScrollView(
        child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
                    
      children:[ Container(
        height: 220,
        width: 220,
        child: Image.asset('assets/images/logotipo.png')
        ),
        Container(height: 20,),
        
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Card(
            child: Column(children: [
              TextField(
          onChanged: (text){
          usuario = text;
          },
          decoration: InputDecoration(
          labelText: 'Usuario',
          border: OutlineInputBorder(),
          ),
          ),

          Container(height: 10,),
                            
           TextField(
              onChanged: (text){
              password = text;
          },
            obscureText: true,
            decoration: InputDecoration(
            labelText: 'Password',
            border: OutlineInputBorder(),
          ),
          ),
          Container(height: 10,),
         // ignore: deprecated_member_use
        RaisedButton(
        color: Colors.lightBlue,
        onPressed:() {
         if(usuario == 'caio' && password == '123'){
         Navigator.of(context).pushReplacementNamed('/home');
          }else{
            print('login invalido');
          }
               },
         child: Text('Entrar'),
                                          
         ),
            ],),),
        ),
                                           
        

                                           
          ],
           ),
          ),
         ), 
        ),
            ],
          );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _body(),
        ],
      )
            
      );
            
  }
}