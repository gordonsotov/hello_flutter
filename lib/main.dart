import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: Container(
          child: Drawer(
            // Add a ListView to the drawer. This ensures the user can scroll
            // through the options in the drawer if there isn't enough vertical
            // space to fit everything.
            child: ListView(
              // Important: Remove any padding from the ListView.
              padding: EdgeInsets.zero,
              children: [
                const DrawerHeader(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/bg.jpg')),
                    color: Colors.white,
                  ),
                  child: null,
                ),
                ListTile(
                  leading: Icon(Icons.arrow_forward),
                  title: const Text('Item 1'),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.arrow_forward),
                  title: const Text('Item 2'),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
        ),
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(
                  Icons.menu,
                  color: Colors.black54,
                ),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              );
            },
          ),
          systemOverlayStyle:
              SystemUiOverlayStyle(statusBarColor: Colors.white),
          backgroundColor: Colors.white,
          title: Text(
            "Приложуха",
            style: TextStyle(color: Colors.black54),
          ),
          centerTitle: true,
        ),
        body: ListView(
          physics:
              BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
          children: [
            _poisk(),
            _osnova(),
            _ListMoy(),
            _ListMoy2(),
            _footer(),
            _osnova2(),
          ],
        ),
      ),
    );
  }
}

Widget _poisk() {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        border: Border.all(
          width: 1,
          color: Colors.black26,
          style: BorderStyle.solid,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            padding: EdgeInsets.all(4),
            margin: EdgeInsets.only(left: 5),
            child: Icon(
              Icons.search,
              size: 25,
              color: Colors.black87,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            'Поиск ',
            style: TextStyle(color: Colors.black54, fontSize: 15),
          ),
        ],
      ),
    ),
  );
}

Widget _osnova() {
  return Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      SizedBox(
        height: 20,
      ),
      Text(
        'Федеральна территория Сириус',
        textAlign: TextAlign.center,
        style: TextStyle(
            color: Colors.black54, fontSize: 30, fontWeight: FontWeight.bold),
      ),
      SizedBox(
        height: 10,
      ),
      Text(
        'сегодня 17 января 2021 года',
        style: TextStyle(color: Colors.black54, fontSize: 15),
      ),
      SizedBox(
        height: 20,
      ),
    ],
  );
}

Widget _osnova2() {
  return Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      SizedBox(
        height: 20,
      ),
      Text(
        'Всякий текст',
        textAlign: TextAlign.center,
        style: TextStyle(
            color: Colors.black54, fontSize: 30, fontWeight: FontWeight.bold),
      ),
      SizedBox(
        height: 10,
      ),
      Text(
        'адреспочты@майл.ру',
        style: TextStyle(color: Colors.black54, fontSize: 15),
      ),
      SizedBox(
        height: 5,
      ),
      Text(
        '2021',
        style: TextStyle(color: Colors.black54, fontSize: 15),
      ),
    ],
  );
}

Widget _ListMoy() {
  return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          Icons.wb_sunny,
          size: 60,
          color: Colors.orange,
        ),
        SizedBox(
          width: 10,
        ),
        Column(
          children: [
            Text(
              '14° F',
              style: TextStyle(fontSize: 30, color: Colors.black87),
            ),
            Text(
              'Ясная погода',
              style: TextStyle(fontSize: 20, color: Colors.black54),
            ),
          ],
        ),
      ]);
}

Widget _ListMoy2() {
  return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text(
                'Пн',
                style: TextStyle(fontSize: 15, color: Colors.black54),
              ),
              SizedBox(
                height: 5,
              ),
              Icon(
                Icons.ac_unit,
                size: 30,
                color: Colors.lightBlue,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                '-1° C',
                style: TextStyle(fontSize: 20, color: Colors.black87),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Свежаки',
                style: TextStyle(fontSize: 15, color: Colors.black54),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text(
                'Вт',
                style: TextStyle(fontSize: 15, color: Colors.black54),
              ),
              SizedBox(
                height: 5,
              ),
              Icon(
                Icons.ac_unit,
                size: 30,
                color: Colors.lightBlue,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                '-10° C',
                style: TextStyle(fontSize: 20, color: Colors.black87),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Холодно',
                style: TextStyle(fontSize: 15, color: Colors.black54),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text(
                'Ср',
                style: TextStyle(fontSize: 15, color: Colors.black54),
              ),
              SizedBox(
                height: 5,
              ),
              Icon(
                Icons.ac_unit,
                size: 30,
                color: Colors.lightBlue,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                '-23° C',
                style: TextStyle(fontSize: 20, color: Colors.black87),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Ебануться',
                style: TextStyle(fontSize: 15, color: Colors.black54),
              ),
            ],
          ),
        ),
      ]);
}

Widget _footer() {
  return Container(
    height: 100,
    //width: 300,
    child: ListView(
      physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.brown[50],
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
            border: Border.all(
              width: 1,
              color: Colors.black87,
              style: BorderStyle.solid,
            ),
          ),
          margin: EdgeInsets.all(5),
          padding: EdgeInsets.all(5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Понедельник',
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '+8',
                    style: TextStyle(fontSize: 30),
                  ),
                  Icon(
                    Icons.thermostat,
                    size: 30,
                    color: Colors.lightBlue,
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.brown[50],
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
            border: Border.all(
              width: 1,
              color: Colors.black87,
              style: BorderStyle.solid,
            ),
          ),
          margin: EdgeInsets.all(5),
          padding: EdgeInsets.all(5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Вторник',
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '+10',
                    style: TextStyle(fontSize: 30),
                  ),
                  Icon(
                    Icons.storm,
                    size: 30,
                    color: Colors.lightBlue,
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.brown[50],
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
            border: Border.all(
              width: 1,
              color: Colors.black87,
              style: BorderStyle.solid,
            ),
          ),
          margin: EdgeInsets.all(5),
          padding: EdgeInsets.all(5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Среда',
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '-16',
                    style: TextStyle(fontSize: 30),
                  ),
                  Icon(
                    Icons.ac_unit,
                    size: 30,
                    color: Colors.lightBlue,
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.brown[50],
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
            border: Border.all(
              width: 1,
              color: Colors.black87,
              style: BorderStyle.solid,
            ),
          ),
          margin: EdgeInsets.all(5),
          padding: EdgeInsets.all(5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Четверг',
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '+16',
                    style: TextStyle(fontSize: 30),
                  ),
                  Icon(
                    Icons.nights_stay,
                    size: 30,
                    color: Colors.lightBlue,
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.brown[50],
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
            border: Border.all(
              width: 1,
              color: Colors.black87,
              style: BorderStyle.solid,
            ),
          ),
          margin: EdgeInsets.all(5),
          padding: EdgeInsets.all(5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Пятница',
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '+10',
                    style: TextStyle(fontSize: 30),
                  ),
                  Icon(
                    Icons.air,
                    size: 30,
                    color: Colors.lightBlue,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
