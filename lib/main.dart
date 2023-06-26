import 'package:darktheme/provider/theme_changer_provider.dart';
import 'package:darktheme/screen/favourite/darktheme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => ThemeChanger()),
        ],
        child:Builder(builder: (BuildContext context){

          final themeChanger = Provider.of<ThemeChanger>(context);
          return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Flutter Demo',
              themeMode:themeChanger.themeMode ,
              theme: ThemeData(
                brightness: Brightness.light,
                primarySwatch: Colors.red,
              ),
              darkTheme:ThemeData(
                brightness: Brightness.dark,
                primarySwatch: Colors.yellow,
                primaryColor: Colors.yellow,
                appBarTheme: AppBarTheme(
                  backgroundColor: Colors.teal
                )

              ) ,
              home:   const DarkThemeScreen()
          );

        },
        )

    );

  }
}