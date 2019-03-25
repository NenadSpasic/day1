import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '30 Day Chalenge of Layouts -- Day 1',
      home: Scaffold(
        appBar: AppBar(
          title: Text('30 Day Chalenge of Layouts -- Day 1'),
        ),
        body: ListView(
          children: <Widget>[
            Image.network(
              'https://upload.wikimedia.org/wikipedia/commons/thumb/7/71/ZavojskoJezeroNov2012-01.JPG/250px-ZavojskoJezeroNov2012-01.JPG',
              fit: BoxFit.fitWidth,
            ),
            titleSection,
            textSection,
          ],
        ),
      ),
    );
  }
}

Widget titleSection = Container(
  padding: const EdgeInsets.all(32),
  child: Row(
    children: [
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(bottom: 8),
              child: Text(
                'Zavojsko jezero',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),
              ),
            ),
            Text(
              'Stara planina, Pirot',
              style: TextStyle(
                color: Colors.grey[500],
                fontSize: 16.0,
              ),
            ),
          ],
        ),
      ),
      Icon(
        Icons.star,
        color: Colors.red[800],
      ),
      Text('102'),
    ],
  ),
);

Widget textSection = Container(
  padding: const EdgeInsets.all(32),
  child: Text(
    'Завојско језеро налази се у југоисточном делу Србије, око 17 km северно од Пирота. Налази се на Старој планини, у делу званом Висок, на средњем делу тока реке Височице.  '
        'Притоке Завојског језера су Височица, Гостушка река и Белска река, док је једина отока језера Височица'
        'Завојско језеро је урвинско језеро настало колувијалним процесом и, заједно са Јовачким језерима, представља једини феномен такве врсте на територији Србије'
        'Природна брана настала је после обилних падавина у зиму 1963. године. Падине Старе планине почеле су да клизе и приликом тога велике количине земље преградиле су реку ',
    softWrap: true,
    textAlign: TextAlign.left,
    style: TextStyle(
      fontFamily: 'Muli',
      fontSize: 20.0,
      color: Colors.black87,
      fontWeight: FontWeight.w400,
    ),
  ),
);
