import 'package:flutter/material.dart';

class VideoCard extends StatelessWidget {
  const VideoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, // Añadido para alinear los hijos al inicio
        children: [
          Container(
            padding: const EdgeInsets.all(15.0),
            child: Image.asset("assets/images/miniaturaChadlb.jpg"),
          ),
          const SizedBox(height: 8.0), // Añadido para espaciar los widgets
          Row(
            children: const [ 
              CircleAvatar(
                radius: 15,
                backgroundImage: AssetImage("assets/images/profile-chadLb.jpg"), // Añadir una imagen de perfil
              ),
              SizedBox(width: 8.0), // Añadido para espaciar los widgets
              Text(
                "Chad LB Quartet - All The Things You Are...",
                style: TextStyle(fontWeight: FontWeight.bold), // Estilo del peso de la fuente 
              ),
              SizedBox(width: 8.0), // Añadido para espaciar los widgets y separarlos
              Text("Chad Lb"),
            ],
          ),
        ],



        
      ),
    );
  }
}
