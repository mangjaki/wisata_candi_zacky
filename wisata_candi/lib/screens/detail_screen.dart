import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:wisata_candi/data/candi_data.dart';
import 'package:wisata_candi/models/candi.dart';

class DetailScreen extends StatelessWidget {
  final dynamic candi;

  const DetailScreen({super.key,required this.candi});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              // image utama
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    candi.imageAsset,
                    width: double.infinity,
                    height: 300,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              // tombol back kustom
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.deepPurple[100]?.withOpacity(0.8),
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_back,
                    ),
                  ),
                ),
              )
            ],
          ),
          // Detail Info
          Padding(
            padding: const  EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 16,),
                // Info Atas (nama candi dan tombol favorit)
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      candi.name,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),


                    IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border))
                  ],
                ),
                // Info tengah (lokasi, dibangun tipe)
                SizedBox(height: 16,),
                Row(children: [
                  Icon(Icons.place, color: Colors.red,),
                  SizedBox(width: 8,),
                  SizedBox(width: 70,
                    child: Text('Lokasi', style: TextStyle(
                      fontWeight: FontWeight.bold),),),
                  Text(': ${candi.location}',),
                ],),
                Row(children: [
                  Icon(Icons.calendar_month, color: Colors.blue,),
                  SizedBox(width: 8,),
                  SizedBox(width: 70,
                    child: Text('Dibangun', style: TextStyle(
                        fontWeight: FontWeight.bold),),),
                  Text(': ${candi.built}'),
                ],),
                Row(children: [
                  Icon(Icons.house, color: Colors.green,),
                  SizedBox(width: 8,),
                  SizedBox(width: 70,
                    child: Text('Tipe', style: TextStyle(
                        fontWeight: FontWeight.bold),),),
                  Text(': ${candi.type}'),
                ],),
                SizedBox(height: 16,),
                Divider(color: Colors.deepPurple.shade100,),
                SizedBox(height: 16,),
                // Info bawah (deskripsi)
              ],
            ),
          ),
          // DetailGallery
          Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Divider(color: Colors.deepPurple.shade100,),
                  Text('Galeri', style: TextStyle(
                    fontSize: 16, fontWeight: FontWeight.bold,
                  ),),
                  SizedBox(height: 10,),
                  SizedBox(
                    height: 100,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: candi.imageUrls.length,
                      itemBuilder: (context, index){
                        return Padding(
                            padding: EdgeInsets.only(left: 8),
                          child: GestureDetector(
                            onTap: () {},
                            child: Container(
                              decoration: BoxDecoration(),
                              child: ClipRRect(
                                child: CachedNetworkImage(
                                  imageUrl: candi.imageUrl[index]),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 4,),
                  Text('Tap untuk Memperbesar', style: TextStyle(
                    fontSize: 12, color: Colors.black54,
                  ),),
                ],
              ),
          )
        ],
      )
    );
  }
}