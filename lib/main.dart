import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Widget Tree')),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                // First Row: small box, spacer, expanded amber, spacer, small box
                buildRow(),

                const SizedBox(height: 24.0),

                // Nested Row with a Column inside
                const NewWidget(),

                const SizedBox(height: 24.0),
                const Divider(),

                const SizedBox(height: 24.0),

                // CircleAvatar area with Stack of layered boxes
                const NewWidget2(),

                const SizedBox(height: 24.0),
                const Divider(),
                const SizedBox(height: 12.0),

                // ⭐ Your info in the middle ⭐
                const Center(
                  child: Text(
                    'Wajahat Ali Khan\nSAP ID: 55431\nSection: BSCS 5-1',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent,
                    ),
                  ),
                ),

                const SizedBox(height: 24.0),
                const Divider(),
                const SizedBox(height: 12.0),

                const Text(
                  'End of the Line',
                  style: TextStyle(fontSize: 18.0),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row buildRow() {
    return Row(
      children: <Widget>[
        Container(color: Colors.yellow, height: 40.0, width: 40.0),
        const SizedBox(width: 16.0),
        Expanded(
          child: Container(
            height: 40.0,
            color: Colors.amber,
            alignment: Alignment.center,
            child: const Text('Expanded'),
          ),
        ),
        const SizedBox(width: 16.0),
        Container(color: Colors.brown, height: 40.0, width: 40.0),
      ],
    );
  }
}

class NewWidget2 extends StatelessWidget {
  const NewWidget2({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        CircleAvatar(
          backgroundColor: Colors.lightGreen,
          radius: 60.0,
          child: SizedBox(
            width: 120,
            height: 120,
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Positioned(
                  width: 100,
                  height: 100,
                  child: Container(color: Colors.yellow),
                ),
                Positioned(
                  width: 60,
                  height: 60,
                  child: Container(color: Colors.amber),
                ),
                Positioned(
                  width: 40,
                  height: 40,
                  child: Container(color: Colors.brown),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(color: Colors.yellow, height: 60.0, width: 60.0),
            const SizedBox(height: 16.0),
            Container(color: Colors.amber, height: 40.0, width: 40.0),
            const SizedBox(height: 16.0),
            Container(color: Colors.brown, height: 20.0, width: 20.0),
          ],
        ),
      ],
    );
  }
}
