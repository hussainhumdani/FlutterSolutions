import 'package:flutter/material.dart';
import 'package:get_context_in_initstate/color_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => ColorProvider(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Get Context in initState',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        accentColor: Colors.indigo,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Color color;
  bool isColorLoading = true;

  ///Soution No1

  // @override
  // void didChangeDependencies() {
  //   if (isColorLoading) {
  //     color = Theme.of(context).accentColor;
  //     isColorLoading = false;
  //   }
  //   super.didChangeDependencies();
  // }

  //Solution No 2
  @override
  void initState() {
    Future.delayed(Duration.zero).then((value) {
      color = Provider.of<ColorProvider>(context, listen: false).getColor();
      //color = Theme.of(context).accentColor;
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Use Context in initState'),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          color: color,
          child: Center(
            child: Text(
              'Check Color',
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
                //fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
