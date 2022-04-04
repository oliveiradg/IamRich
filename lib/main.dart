// ignore_for_file: unused_field

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';



void main () =>

  runApp(MaterialApp(
    home: HomePage(),

  ));

    class HomePage extends StatefulWidget {
      @override
      _HomePageState createState() => _HomePageState();
    }

    class _HomePageState extends State<HomePage> {
      AudioPlayer audioPlayer = AudioPlayer();
       AudioCache player = AudioCache();




      @override
      Widget build(BuildContext context) {

        final player = AudioCache();

        return SafeArea(child: Scaffold(
          backgroundColor: Colors.blueGrey,
          appBar: AppBar(
            backgroundColor: Colors.blueGrey[900],
            title: const Text('I am Rich'),
            centerTitle: true,
          ),
          body: const Center(child: Image(
            image: AssetImage(
                "image/diamond.png"),
          ),
          ),

         floatingActionButton: FloatingActionButton(
           backgroundColor: Colors.blueGrey[900],
           onPressed: (){
             player.play('devi.mp3');
           },
           child: const Icon(Icons.play_arrow),
         ),
        ),
        );


      }
      }

