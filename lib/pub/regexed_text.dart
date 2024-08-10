import 'package:flutter/material.dart';
import 'package:location_example/Widgets/Main_Drawer.dart';
import 'package:regexed_text/regexed_text.dart';

class RegexedTextScreen extends StatefulWidget {
  const RegexedTextScreen({super.key});
  @override
  State<RegexedTextScreen> createState() {
    return _RegexedTextScreenState();
  }
}

class _RegexedTextScreenState extends State<RegexedTextScreen> {
  String longTextExample = """
Hello @Rdutta, I found this interesting website that you might like: https://www.example.com. It has a lot of useful resources. Also, check out www.another-example.com for more related content. By the way, I came across @Rdutta profile, and it seems she has similar interests. You can connect with her. Lastly, don't forget to visit example.com for the latest updates.

You can reach out to me at john.doe@example.com. I'm always open to discussing new ideas. Also, did you check out the latest trend on social media? The hashtag #example is trending right now!

By the way, I found this phone number +1-123-456-7890 in my old contacts. I think it belongs to our mutual friend. And, don't forget our meeting on 12/31/2022. Looking forward to it!
""";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RegexedText example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: RegexedText(
          longTextExample,
          patterns: [
            usernamePattern,
            urlPattern,
            emailPattern,
            hashtagPattern,
            phoneNumberPattern,
            datePattern,
          ],
          normalStyle: const TextStyle(color: Colors.black),
          regexedStyle: (pattern) {
            if (pattern == usernamePattern) {
              return const TextStyle(
                color: Color.fromARGB(255, 244, 184, 54),
                fontWeight: FontWeight.w600,
              );
            }

            if (pattern == hashtagPattern) {
              return const TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.w600,
              );
            }

            if (pattern == datePattern) {
              return const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
              );
            }

            return const TextStyle(
              color: Colors.blue,
              decoration: TextDecoration.underline,
            );
          },
          onTap: (text, pattern) {
            print(text);
            print(pattern);

            if (pattern == urlPattern) {
              // Launch [text] with url_launcher or something
            }
          },
        ),
      ),
      drawer: const MainDrawer(),
    );
  }
}
