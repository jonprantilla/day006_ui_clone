import 'package:flutter/material.dart';

class FeedItem extends StatelessWidget {

  const FeedItem({
    required this.title,
    required this.description, this.iconData,
    });

  final String title;
  final String description;
  final IconData? iconData;

  @override 
  Widget build(BuildContext context){
    return Column(
      children:[
        Container(
          padding: const EdgeInsets.all(15),
                        height: 150,
                        width: 500,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (iconData == null)
              Container(
                height: 56,
                width: 56,
                decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blue),
              )
            else
              Container(
                height: 56,
                width: 56,
                decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(255, 90, 7, 1),
                ),
              child: Icon(iconData),
            ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Text(title,
                  style: const TextStyle(
                    fontSize:18,
                    fontWeight: FontWeight.bold,
                  )
                )
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Text(description,
                  style: const TextStyle(
                    fontSize:13,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
            
          ],
        
        ),
      ),
      const SizedBox(
        height:10,
      )
      ]
    );
  }
  }
