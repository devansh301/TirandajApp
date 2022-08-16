import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:html/parser.dart' show parse;
import 'package:share/share.dart';

class PostDetail extends StatelessWidget {
  final data;
  const PostDetail({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String str;
    if(data["yoast_head_json"]["og_image"] != null) {
      str =  data["yoast_head_json"]["og_image"][0]["url"];
    }
    else {
      str = "https://tirandaj.com/wp-content/uploads/2022/01/Tirandaj-Breaking-1-768x451.jpg";
    }
    var htmlData = data['content']['rendered'];
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tirandaj"),
        backgroundColor: Colors.black,
        actions: [
          Padding(padding: const EdgeInsets.all(16),
          child: IconButton(
            icon: const Icon(Icons.share),
            onPressed: (){
              Share.share(data['link']);
            },
          ),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: <Widget>[
          // FittedBox(
          //   fit: BoxFit.fitHeight,
          //   child: Image.network('')
          //   //Image.asset("assets/milestone.gif"),
          // ),
          FittedBox(
            fit: BoxFit.fitHeight,
            child: Image.asset("assets/images/milestoneacademy.png"),
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.only(bottom: 10,top: 10),
              child: Text(
                data['title']['rendered'].toString().toString().replaceAll("&#8230;", "...").replaceAll("&#8217;", "'").replaceAll("&#8216;", "'"),
                style: GoogleFonts.sahitya(fontSize: 23,fontWeight: FontWeight.bold),
              ),
            ),
          ),
          // FittedBox(
          //   fit: BoxFit.fitHeight,
          //   child: Image.asset("assets/sangamdairy.png"),
          // ),
           const SizedBox(height: 5,),
          Image.network( str),
          const SizedBox(height: 5,),
          FittedBox(
            fit: BoxFit.fitHeight,
            child: Image.asset("assets/sparsh.png"),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            // child: Text(_parseHtmlString(data['content']['rendered']),
            //   style: TextStyle(fontSize: 18),
            // ),
            child: HtmlWidget(
                htmlData,textStyle: GoogleFonts.gotu()
            ),
          ),
          FittedBox(
            fit: BoxFit.fitHeight,
            child: Image.asset("assets/sangamdairy.png"),
          ),
          Container(
            padding: const EdgeInsets.only(bottom: 4,left: 4),
            child: const Text('© All Rights Reserved by WWW.TIRANDAJ.COM\nDeveloped By: Devansh Rawat',style: TextStyle(fontSize: 12)),
          )
        ],
      ),
    );
  }

  //here goes the function
  // String _parseHtmlString(String htmlString) {
  //   final document = parse(htmlString);
  //   final String parsedString = parse(document.body?.text).documentElement!.text;
  //
  //   return parsedString;
  // }
}