import 'package:flutter/material.dart';
import 'package:ola_mundo/models/recados.dart';
import 'package:ola_mundo/provider/recados.dart';

import 'package:provider/provider.dart';


class UserForm extends StatelessWidget {
  final _form = GlobalKey<FormState>();

  final Map<String, String> _formData = {};



  @override
  Widget build(BuildContext context) {
    final Recados recados = ModalRoute.of(context).settings.arguments;

print(recados);

    return Scaffold(
      appBar: AppBar(
        title: Text('Anote Seu Recado'),
        actions: <Widget>[
          IconButton(

            icon: Icon(Icons.save), 

            onPressed: () {
              final isValid = _form.currentState.validate();
              if(isValid){
              _form.currentState.save();
              Navigator.of(context).pop();
              Provider.of<RecadosProvider>(context, listen: false).put(Recados(
                id: _formData['id'],
                titulo: _formData['titulo'],
                descricao: _formData['descrição'],
              ),
              );
              }}
            
          )
        ],
      ),
      body: Padding(padding: EdgeInsets.all(10),
      child: Form(
        key: _form,
        child: Column(
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(labelText: 'Titulo'),
              onSaved: (value) => _formData['titulo'] = value,

            ),
            TextFormField(
              
              decoration: InputDecoration(labelText: 'Descrição'),
              onSaved: (value) => _formData['descrição'] = value,
            ),
          ]
        
        ),
      ),
      ),
      
    );
  }
}