import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TweetWidget extends StatefulWidget {
  @override
  State<TweetWidget> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<TweetWidget> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  Widget _buildTweet1() {
    return Stack(
      children: <Widget>[
        Padding(
         padding: EdgeInsets.only(left: 16.0, right: 16.0),
         child:Row(
           crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            CircleAvatar(
              radius: 28,
              backgroundImage: NetworkImage(
                  "https://pbs.twimg.com/profile_images/1509880369436364803/vAq7YCE9_400x400.jpg"),
            ),
            SizedBox(width: 8),
            Expanded(
              child:Column(
              children: <Widget>[
                 Row(
                   children: const <Widget>[
                     Text("National Geographic", style: TextStyle(fontWeight: FontWeight.bold),),
                     Expanded(child: Text("              @NatGeo",overflow: TextOverflow.ellipsis,),),
                     Text("· 4h", style: TextStyle(color: Colors.grey),),
                     Icon( Icons.expand_more, ),
                   ],
                 ),

                     Text("A European jackal dives at a Eurasian magpie who got too close to the jackal's recent catch in this photo by Your Shot photographer Sergey Zlatkov",),
                     Image.network("https://scontent-yyz1-1.xx.fbcdn.net/v/t31.18172-8/20785906_10155658476888336_5964895693043993309_o.jpg?_nc_cat=103&ccb=1-7&_nc_sid=9267fe&_nc_ohc=zYjClxpebREAX-ivKuL&_nc_ht=scontent-yyz1-1.xx&oh=00_AT_qrtGIrZSK8wvc8Kj5JHFW6yTg3toQLuxgzwYJ81Q09Q&oe=63752B81"),
                RichText(
                  text: const TextSpan(
                    children: [
                      WidgetSpan(
                        child: Icon(Icons.chat_bubble_outline,  size: 14),
                      ),
                      TextSpan(
                        text: "26",
                      ),
                    ],
                  ),
                ),
                RichText(
                  text: const TextSpan(
                    children: [
                      WidgetSpan(
                        child: Icon(Icons.repeat,  size: 14),
                      ),
                      TextSpan(
                        text: "309",
                      ),
                    ],
                  ),
                ),
                RichText(
                  text: const TextSpan(
                    children: [
                      WidgetSpan(
                        child: Icon(Icons.favorite_border,  size: 14),
                      ),
                      TextSpan(
                        text: "1600",
                      ),
                    ],
                  ),
                ),
                RichText(
                  text: const TextSpan(
                    children: [
                      WidgetSpan(
                        child: Icon(Icons.bookmark_border,  size: 14),
                      ),
                    ],
                  ),
                ),
              ],
            ),)

          ],
        ),

        ),
      ],
    );
  }



  Widget _buildTweet2() {
    return Stack(
      children: <Widget>[
      Padding(
        padding: EdgeInsets.only(left: 16.0, right: 16.0),
        child:Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            CircleAvatar(
              radius: 28,
              backgroundImage: NetworkImage(
                  "https://pbs.twimg.com/profile_images/1321163587679784960/0ZxKlEKB_400x400.jpg"),
            ),
            SizedBox(width: 8),
            Expanded(child:Column(
              children: <Widget>[
                Row(
                  children: const <Widget>[
                    Text("NASA", style: TextStyle(fontWeight: FontWeight.bold),),
                    Expanded(child: Text("              @NASA  ",overflow: TextOverflow.ellipsis,),),
                    Text("· 4h  ", style: TextStyle(color: Colors.grey),),
                    Icon( Icons.expand_more, ),
                  ],
                ),
                Text("Named for the mythological Greek Moon goddess and twin of Apollo, #Artemis will carry humanity back to the Moon — this time, for good — before we launch to Mars and to the unexplored beyond. Get the latest updates and more, straight to your inbox: https://go.nasa.gov/2M4UJH9",),
                Image.network("https://pbs.twimg.com/media/EBt4NrYWsAEtjk5?format=jpg&name=medium")

              ],
            ),)
          ],
        ),
      ), ],
    );
  }


  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text('Lab03 and 04'),
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(height:30),
          _buildTweet1(),
          SizedBox(height:40),
          _buildTweet2()
        ],
      ),

    );
  }
}
