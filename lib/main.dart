import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'video_card.dart';// también importante importar el arcvhivo del card Dart

void main() {
  runApp(const MyApp()); 
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false, // Para que no nos aparezca la barrita que esta en una esquina superior de la pantalla que solo jode jasja
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  MyWidget(),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("YouTube",
        style:TextStyle(color:Colors.white) ,
        ) ,
        backgroundColor: const Color.fromARGB(255, 255, 46, 31),
        actions: [
          const Icon(Icons.search ,  //Que con la libreria que tengo pueda traer una lupita
         color:Colors.white
           ), 

           Icon(Icons.camera_front,
           color: Colors.white),

           Icon(Icons.person, 
           color: Colors.white)
        ],
      ),// Con la extensión sabremos a donde termina cada widget


 //Acá sera la columna en la cual van los videos de youtube
//En este caso lo hago en el archivo 
body:Column(children: const [ 
  VideoCard(),
   VideoCard(),

    
  
  
  ]
  )



    );
  }
}