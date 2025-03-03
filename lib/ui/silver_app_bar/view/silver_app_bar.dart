import 'package:flutter/material.dart';

class SilverAppBar extends CustomScrollView {
  const SilverAppBar({super.key});

   @override
    Widget build(BuildContext context) {
     final theme = Theme.of(context);

     return SliverAppBar(
       snap: true,
       floating: true,
       pinned: true,
       backgroundColor: Color.fromARGB(255, 12, 12, 12),
       surfaceTintColor: Colors.blueAccent,
       title: Center(
         child: Text(
           'Author\'s route' ,
           style: theme.textTheme.bodyLarge,
         ),
       ),
       bottom: PreferredSize(
         preferredSize: const Size.fromHeight(80),
         child: Center(
           child: Container(
             width: 350,
             height: 60,
             margin: EdgeInsets.all(10),
             padding: EdgeInsets.all(12),
             decoration: BoxDecoration(
                 color: Color.fromARGB(255, 177, 177, 177),
                 borderRadius: BorderRadius.circular(16)),
             child: Row(
               children: [
                 Icon(Icons.search_rounded, size: 40,),
                 SizedBox(width: 16,),
                 Expanded(
                   child: TextField(
                     style: TextStyle(color: Colors.black),
                     decoration: InputDecoration(hintText: 'search route'),
                   ),
                 ),
               ],
             ),
           ),
         ),
       ),
     );
   }
}