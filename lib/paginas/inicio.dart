import 'package:flutter/material.dart';
import 'package:netflix_clone/componentes/cartel_principal.dart';
import 'package:netflix_clone/componentes/item_imagen.dart';
import 'package:netflix_clone/componentes/item_redondeado.dart';

class InicioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: <Widget>[
          CartelPrincipal(),
          this.listaHorizontal('Favoritos', ItemRedondeado(), 3),
          SizedBox(height: 20.0),
          this.listaHorizontal('Lo Nuevo', ItemImagen(), 5),
          SizedBox(height: 20.0),
          this.listaHorizontal('Tendencias', ItemImagen(), 5),
          SizedBox(height: 20.0),
          this.listaHorizontal('Mi Lista', ItemImagen(), 5),
        ],
      ),
      bottomNavigationBar: this.navInferior(),
    );
  }

  BottomNavigationBar navInferior() {
    return BottomNavigationBar(
      backgroundColor: Colors.black,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white38,
      type: BottomNavigationBarType.fixed,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text(
              'Inicio',
              style: TextStyle(fontSize: 12.0),
            )),
        BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text(
              'Buscar',
              style: TextStyle(fontSize: 12.0),
            )),
        BottomNavigationBarItem(
            icon: Icon(Icons.library_music),
            title: Text(
              'Proximamente',
              style: TextStyle(fontSize: 12.0),
            )),
        BottomNavigationBarItem(
            icon: Icon(Icons.arrow_downward),
            title: Text(
              'Descargas',
              style: TextStyle(fontSize: 12.0),
            )),
        BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz),
            title: Text(
              'Más',
              style: TextStyle(fontSize: 12.0),
            )),
      ],
    );
  }

  Widget listaHorizontal(String titulo, Widget item, int cantidad) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),
          child: Text(
            titulo,
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20.0),
          ),
        ),
        Container(
            height: 110.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: cantidad,
              itemBuilder: (context, index) {
                return item;
              },
            ))
      ],
    );
  }
}
