import 'package:flutter/material.dart';
import 'package:ola_mundo/models/recados.dart';

class ListRecados extends StatelessWidget {

final Recados recados;

const ListRecados(this.recados);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(recados.titulo),
      subtitle: Text(recados.descricao),
      trailing: Container(
        width: 100,
              child: Row(children: <Widget>[
          IconButton(
          icon: Icon(Icons.edit), 
          color: Colors.blueGrey,
          onPressed: () {
            Navigator.of(context).pushNamed('/form', arguments: recados);
          }
          ),
          IconButton(
          icon: Icon(Icons.delete,),
          color: Colors.red,
          onPressed: () {}
          ),
        ],
        ),
      ),
    );
  }
}