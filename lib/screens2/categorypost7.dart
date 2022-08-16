import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:share/share.dart';
import 'package:tirandaj_app/screens2/postdetail.dart';

import '../services/mycategory7.dart';
import '../services/post.dart';

class Category7Post extends StatefulWidget {
  const Category7Post({Key? key}) : super(key: key);

  @override
  State<Category7Post> createState() => _Category7PostState();
}

class _Category7PostState extends State<Category7Post> {
    //with AutomaticKeepAliveClientMixin<Category7Post>{

  MyCategory7 categorypostService = MyCategory7();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 8.0),
      child: FutureBuilder<List>(
        future: categorypostService.getCategory7Post(),
        builder: (context,snapshot){
          if(snapshot.hasData){
            if(snapshot.data?.length == 0){
              return Center(
                child: Text("0 Posts Available"),);
            }
            return ListView.builder(
                itemCount: snapshot.data?.length,
                itemBuilder: (context, i){
                  String str;
                  if(snapshot.data![i]["yoast_head_json"]["og_image"] != null) {
                    str =  snapshot.data![i]["yoast_head_json"]["og_image"][0]["url"];
                  }
                  else {
                    str = "https://tirandaj.com/wp-content/uploads/2022/01/Tirandaj-Breaking-1-768x451.jpg";
                  }
                  return Card(
                    clipBehavior: Clip.antiAlias,
                    elevation: 16,
                    shape:
                    RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                    child: ListTile(
                      title: Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 7.0),
                              child: Image.network(str),
                            ),
                          ),
                        ],
                      ),
                      subtitle: Container(
                        margin: EdgeInsets.symmetric(vertical: 7.0),
                        child: Column(
                          children: [
                            Text(snapshot.data![i]['title']['rendered'].toString().replaceAll("&#8230;", "...").replaceAll("&#8217;", "'").replaceAll("&#8216;", "'"),
                              style: GoogleFonts.gotu(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              height: 23,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 220),
                                child: IconButton(
                                  alignment: Alignment.bottomRight,
                                  onPressed: () {
                                    Share.share(snapshot.data![i]['link'], subject: snapshot.data![i]['title']['rendered'].toString().replaceAll("&#8230;", "...").replaceAll("&#8217;", "'").replaceAll("&#8216;", "'"));
                                  },
                                  icon: const Icon(Icons.share),
                                  color: Colors.red,
                                  padding: const EdgeInsets.all(1.0),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder:
                            (context)=>
                            PostDetail(data: snapshot.data?[i]),),);

                      },
                    ),
                  );

                });
          } else if (snapshot.hasError){
            return Center(
              child: Text(snapshot.error.toString()),
            );
          }
          else {
            return Center(
              child: CircularProgressIndicator(color: Colors.black),
            );
          }
        },

      ),
    );
  }

  // @override
  // // TODO: implement wantKeepAlive
  // bool get wantKeepAlive => true;
}