import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:ola_mundo/data/dummy_user.dart';
import 'package:ola_mundo/models/recados.dart';


class RecadosProvider with ChangeNotifier {
  
final Map<String, Recados> _items = {...DUMMY_RECADOS};

  List<Recados> get all {
    return [..._items.values];
  }

  int get count {
    return _items.length;
  }

  Recados byIndex(int index){
    return _items.values.elementAt(index);
  }

  void put(Recados recados) {
    if(recados == null){
      return;
    }
  
  if(recados.id != null && recados.id.trim().isNotEmpty && _items.containsKey(recados.id)){
    _items.update(recados.id, (_) => Recados(
      id: recados.id,
      titulo: recados.titulo,
      descricao: recados.descricao
      ));
      notifyListeners();
  }else{
    final id = Random().nextDouble().toString();
    _items.putIfAbsent('1000', () => Recados(
      id: id,
      titulo: recados.titulo,
      descricao: recados.descricao,
    ));
    notifyListeners();
  }
    
  }

  void remove(Recados recados){
        if(recados != null && recados.id != null){
      _items.remove(recados.id);
      notifyListeners();
    }
  }
  

}