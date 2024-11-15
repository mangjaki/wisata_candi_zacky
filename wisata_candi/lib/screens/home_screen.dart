import 'package:flutter/material.dart';
import 'package:wisata_candi/data/candi_data.dart';
import 'package:wisata_candi/models/candi.dart';
import 'package:wisata_candi/widgets/item_card.dart';


 class HomeScreen extends StatefulWidget {
   const HomeScreen({super.key});

   @override
   State<HomeScreen> createState() => _HomeScreenState();
 }

 class _HomeScreenState extends State<HomeScreen> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       // TODO: 1 BUAT appbar dengan judul wisata candi
       appBar: AppBar(
         title: const Text('Wisata Candi'),
       ),
       // TODO: 2 BUAT body dengan GridView.builder
       body: GridView.builder(
         gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
           crossAxisCount: 2
         ),
         padding: const EdgeInsets.all(8),
         itemCount: candiList.length,
         itemBuilder: (_,index){
           // TODO: 3 BUAT Itemcard sebagai return value dari GridView.builder
           Candi candi = candiList[index];
           return ItemCard(candi: candi);
         },
       ));
   }
 }
