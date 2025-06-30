import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


void main() {
    runApp(MyApp());
}

class MyApp extends StatelessWidget {
    const MyApp({super.key});
    @override
    Widget build(BuildContext context){
        return MaterialApp(
            title: 'Personal Card',
            home:  const LayoutPage()
        );
    }
}

class LayoutPage extends StatelessWidget{
    const LayoutPage({super.key});
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: const Text(
                    'Personal Card',
                    style: TextStyle(
                        color:Colors.white ),),
                leading:const Icon(
                    Icons.waving_hand,
                    color: Colors.white
                    ),
                backgroundColor: Colors.deepPurple,
            ),
            body: Center(
                child:Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:[
                        Text('Kovács Eszter',
                            style: GoogleFonts.windSong(
                                fontSize: 32,
                                fontWeight: FontWeight.bold)
                                ),
                        Text('user-centered design specialst',
                            style: TextStyle(
                                fontWeight: FontWeight.bold
                            ),
                        )
                    ]
                ),
            )
        );
    }
}