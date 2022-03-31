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
      _executar() async {
        String url = "https://www.yogapoint.com/mantras/devi/devi6.mp3";
            int resultado = await audioPlayer.play(url);
            if(resultado == 1){
              //sucesso
            }

      }

      @override
      Widget build(BuildContext context) {

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
             _executar();
           },
           child: Icon(Icons.play_arrow),
         ),
        ),
        );


      }
      }

