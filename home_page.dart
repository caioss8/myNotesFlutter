import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:ola_mundo/app_controler.dart';
// ignore: unused_import
import 'package:ola_mundo/data/dummy_user.dart';
// ignore: unused_import
import 'package:ola_mundo/models/recados.dart';
import 'package:ola_mundo/provider/recados.dart';
import 'package:ola_mundo/recados_widget.dart';
import 'package:provider/provider.dart';


class HomePage extends StatefulWidget{
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}



class HomePageState extends State<HomePage>{
  int counter = 0;
  bool isdarttheme = false;

  @override
  Widget build(BuildContext context) {
    final recados = Provider.of<RecadosProvider>(context);

    return Scaffold(
    
      drawer: Drawer(
        child: Column(

          children: [
            UserAccountsDrawerHeader(
            currentAccountPicture: 
            ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Image.network(
                'https://scontent.fcgh17-1.fna.fbcdn.net/v/t1.0-9/80796328_2740705472683685_3125483744664748032_o.jpg?_nc_cat=108&ccb=1-3&_nc_sid=84a396&_nc_eui2=AeHtnCGrE394SiDWL7ERZd_4zvfbUJScx7DO99tQlJzHsNHk800mGdXhM8TVKYDO8PVRNU274Dd-dLK6aHekFO54&_nc_ohc=3H1zr6bxkQYAX-0xNme&_nc_oc=AQkYy9qU9xSy5ht3PdEMQjQn79_m3-EQJvxMB00kQParoWeoqWhyYjDnPBz--k4J14k&_nc_ht=scontent.fcgh17-1.fna&oh=1d5c813b62fd1f5b8905dab8d2514b2e&oe=60737EF3'),
            ),
            accountName: Text('Caio Souza'), accountEmail: Text('caio.souza.silva@gmail.com')),
            SizedBox(height: 20,),
            ListTile(
              
              leading: Icon(Icons.home),
              title: Text('Inicio'),
              subtitle: Text('Tela de incio'),
              onTap: (){
                print('home');
              }
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Logout'),
              subtitle: Text('Alterar Conta'),
              onTap: (){
                Navigator.of(context).pushReplacementNamed('/');
              }
            )
        ],
        
        ),
      ),
      appBar: AppBar(
        title: Text('Minhas Anotações', 
        style: TextStyle(color: Colors.black, fontSize: 19)),
        actions: <Widget>[
          IconButton(
          icon: Icon(Icons.add),
          onPressed: () {
            Navigator.of(context).pushNamed('/form',);
          }
          ),
        ]
      ),
      

    
      body: ListView.builder(
        itemCount: recados.count,
        itemBuilder: (context, index) => ListRecados(recados.byIndex(index)),
        
        ),

      
            
          
         );

      
        

        //floatingActionButton: FloatingActionButton(
        //child: Icon(Icons.add),
        //onPressed: () { 
          // setState(() {
            //  counter++;
          //  });
      // },),
    
          }

   
  }
  
