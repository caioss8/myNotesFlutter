import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:ola_mundo/data/dummy_user.dart';
import 'package:ola_mundo/login_page.dart';
// ignore: unused_import
import 'package:ola_mundo/models/recados.dart';
import 'package:ola_mundo/provider/recados.dart';
import 'package:provider/provider.dart';

import 'form/user_form.dart';
import 'home_page.dart';

class AppWidget extends StatelessWidget{

   
  @override
  Widget build(BuildContext context) {
      return ChangeNotifierProvider(
          create: (context) => RecadosProvider(),
          child: MaterialApp(
              theme: ThemeData(
              primarySwatch: Colors.grey,
              ),
            initialRoute: '/', 
            routes: {
              '/': (context) => LoginPage(),
              '/home': (context) => HomePage(),
              '/form': (context) => UserForm(),
              
            }, 
            ),
          );
          
          
        }
      }
 
 