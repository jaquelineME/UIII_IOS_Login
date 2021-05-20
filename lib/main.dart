import 'package:flutter/material.dart';

void main() => runApp(MelendezApp());

class MelendezApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Meléndez Jaqueline',
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.cyan,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: IngresoSistema(),
    ); //Fin de MateriaApp
  } //Fin de widget
} //Fin de clase MelendezApp

class IngresoSistema extends StatefulWidget {
  @override
  _IngresoSistemaState createState() => _IngresoSistemaState();
} //Fin de clase IngresoSistema

class _IngresoSistemaState extends State<IngresoSistema> {
  bool acceso = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            semanticLabel: 'menu',
          ),
          onPressed: () {
            print('Boton Menu');
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              semanticLabel: 'search',
            ),
            onPressed: () {
              print('Search button');
            },
          ),
          IconButton(
            icon: Icon(
              Icons.tune,
              semanticLabel: 'filter',
            ),
            onPressed: () {
              print('Filter button');
            },
          ),
        ], //Fin accion widget
        title: Text("Ingreso de Meléndez"),
      ), //AppBar
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            SizedBox(height: 80.0),
            Column(
              children: <Widget>[
                Image.asset('assets/carro.jpg'),
                SizedBox(height: 16.0),
              ],
            ),
            if (!acceso)
              Column(
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      // fillColor: Colors.amber,
                      labelText: 'Nombre de Usuario',
                    ),
                  ),
                  SizedBox(height: 12.0),
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      labelText: 'Contraseña',
                    ),
                    obscureText: true,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 18.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        FlatButton(
                          child: Text('CANCELAR'),
                          onPressed: () {
                            setState(() {
                              acceso = false;
                            });
                          },
                        ), //Fin de flatButton
                        RaisedButton(
                          color: Colors.cyan,
                          child: Text(
                            'Siguiente',
                          ),
                          onPressed: () {
                            setState(() {
                              acceso = true;
                            });
                          },
                        ), //Fin de raisedButton
                      ],
                    ), //Fin de child
                  ) //Fin de padding
                ], //Fin widget[]
              ) //Fin de coluna
            else
              Center(
                child: Column(
                  children: <Widget>[
                    Text('YAY, Estoy ingresando!'),
                    RaisedButton(
                      elevation: 20.0,
                      child: Text('Cerrar Sesión'),
                      onPressed: () {
                        setState(() {
                          acceso = false;
                        });
                      },
                    )
                  ],
                ),
              )
          ], //Fin de widget[]
        ), //Fin de ListView
      ), //Fin de area segura
    ); //Fin de Scaffold
  } //Fin de widget
} //Fin de clase _IngresoSistemaState
