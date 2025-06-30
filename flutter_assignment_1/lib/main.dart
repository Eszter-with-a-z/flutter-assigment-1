import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _url = Uri.parse('https://www.linkedin.com/in/eszter-kov%C3%A1cs-a40826213/');
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
                        Image.asset('images/profile.jpg'),
                        Text('Kovács Eszter',
                            style: GoogleFonts.windSong(
                                fontSize: 32,
                                fontWeight: FontWeight.bold)
                                ),
                        Text('user-centered design specialst',
                            style: TextStyle(
                                fontWeight: FontWeight.bold
                            )                     
                        ),
                        Column(
                            
                            children:[ 
                            Row(   
                                mainAxisAlignment: MainAxisAlignment.center, 
                                children: [
                                    Icon(Icons.email_rounded),
                                    Text('eszter.with.a.z@gmail.com')
                                ]
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                                Icon(Icons.phone_android_rounded),
                                Text('+46 79 355 2542')
                            ]
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                                Icon(Icons.web_rounded),
                                ElevatedButton(
                                    onPressed: _launchUrl,
                                    child: Text('LinkedIn'),
                                    )
            
                            ]
                        )
                    ])
                        
                    ]
                ),
            )
        );
    }
}
 // Tutorial: https://pub.dev/packages/url_launcher
Future<void> _launchUrl() async {
  if (!await launchUrl(_url)) {
    throw Exception('Could not launch $_url');
  }
}