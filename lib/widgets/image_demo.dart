import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';
class ImageDemo extends StatelessWidget {
  const ImageDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView(
      padding: const EdgeInsets.all(18),
      children: [
        const Text('Cached Network Image'),
        CachedNetworkImage(
          imageUrl: "https://burst.shopifycdn.com/photos/fog-on-dark-waters-edge.jpg?width=373&format=pjpg&exif=0&iptc=0",
          placeholder: (context, url) => const SizedBox(
            width: 50,
              height: 50,
              child: Center(child: CircularProgressIndicator())),//download loat ny tae chain အဝိုင်းလေးလည်နေတာကိုပြောတာ
          errorWidget: (context, url, error) => const Icon(Icons.error),//error pyit yin pya tae hr
        ),
        const Text('Image from network'),
        // Card(child: Image.network('https://images.pexels.com/photos/2567011/pexels-photo-2567011.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1')),
        // Card(child: Image.network('https://images.pexels.com/photos/1198802/pexels-photo-1198802.jpeg?auto=compress&cs=tinysrgb&w=400')),
        Card(child: FadeInImage.memoryNetwork(
            placeholder: kTransparentImage,
            image:'https://images.pexels.com/photos/1198802/pexels-photo-1198802.jpeg?auto=compress&cs=tinysrgb&w=400' )),
        const Text('Image from assets'),
        Card(child: Image.asset('assets/images/bird.jpeg')),
        const Text('GIF from assets'),
        Card(child: Image.asset('assets/images/bird.gif')),

      ],
    );
  }
}
