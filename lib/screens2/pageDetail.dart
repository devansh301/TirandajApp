import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PageDetail extends StatelessWidget {
  final data;
  const PageDetail({Key? key, required this.data}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var title_list = ["About Us","Privacy Policy","Contect Us","Rate Us"];
    var desc = ["About Us TIRANDAJ is a leading company in Hindi online space.\nLaunched in 2021, TIRANDAJ.COM is the fastest growing Hindi news website in India, and focuses on delivering around the clock Local, national and international news and analysis, business, sports, technology entertainment, lifestyle and astrology.\nTo create a journalistic impact that acts as the foundation of an Informed and Happy Society, by providing unbiased, unaltered information that makes them capable of forming opinions and act on them.These are the pillars that not only define us and the way we do things, but also shape our future-forward business processes.\n\nIn today’s rampant me-too-ism, Janta Se Rishta is, perhaps, the only Hindi news website that is perceived as “courageous” and “different.”",
      "Tirandaj News built the Tirandaj app as a Free app.The app is developed by Devansh Rawat. This SERVICE is provided by Tirandaj News at no cost and is intended for use as is.\nThis page is used to inform visitors regarding our policies with the collection, use, and disclosure of Personal Information if anyone decided to use our Service.\nIf you choose to use our Service, then you agree to the collection and use of information in relation to this policy. The Personal Information that we collect is used for providing and improving the Service. We will not use or share your information with anyone except as described in this Privacy Policy.\nThe terms used in this Privacy Policy have the same meanings as in our Terms and Conditions, which are accessible at Tirandaj unless otherwise defined in this Privacy Policy.\nInformation Collection and Use\nFor a better experience, while using our Service, we may require you to provide us with certain personally identifiable information. The information that we request will be retained by us and used as described in this privacy policy.\nThe app does use third-party services that may collect information used to identify you.\nLink to the privacy policy of third-party service providers used by the app\nGoogle Play Services\nGoogle Analytics for Firebase\nFirebase Crashlytics\nLog Data\nWe want to inform you that whenever you use our Service, in a case of an error in the app we collect data and information (through third-party products) on your phone called Log Data. This Log Data may include information such as your device Internet Protocol (“IP”) address, device name, operating system version, the configuration of the app when utilizing our Service, the time and date of your use of the Service, and other statistics.\nCookies\nCookies are files with a small amount of data that are commonly used as anonymous unique identifiers. These are sent to your browser from the websites that you visit and are stored on your device's internal memory.\nThis Service does not use these “cookies” explicitly. However, the app may use third-party code and libraries that use “cookies” to collect information and improve their services. You have the option to either accept or refuse these cookies and know when a cookie is being sent to your device. If you choose to refuse our cookies, you may not be able to use some portions of this Service.\nService Providers\nWe may employ third-party companies and individuals due to the following reasons:\nTo facilitate our Service;\nTo provide the Service on our behalf;\nTo perform Service-related services; or\nTo assist us in analyzing how our Service is used.\nWe want to inform users of this Service that these third parties have access to their Personal Information. The reason is to perform the tasks assigned to them on our behalf. However, they are obligated not to disclose or use the information for any other purpose.\nSecurity\nWe value your trust in providing us your Personal Information, thus we are striving to use commercially acceptable means of protecting it. But remember that no method of transmission over the internet, or method of electronic storage is 100% secure and reliable, and we cannot guarantee its absolute security.\nLinks to Other Sites\nThis Service may contain links to other sites. If you click on a third-party link, you will be directed to that site. Note that these external sites are not operated by us. Therefore, we strongly advise you to review the Privacy Policy of these websites. We have no control over and assume no responsibility for the content, privacy policies, or practices of any third-party sites or services.\nChildren’s Privacy\nThese Services do not address anyone under the age of 13. We do not knowingly collect personally identifiable information from children under 13 years of age. In the case we discover that a child under 13 has provided us with personal information, we immediately delete this from our servers. If you are a parent or guardian and you are aware that your child has provided us with personal information, please contact us so that we will be able to do the necessary actions.\nChanges to This Privacy Policy\nWe may update our Privacy Policy from time to time. Thus, you are advised to review this page periodically for any changes. We will notify you of any changes by posting the new Privacy Policy on this page.\nThis policy is effective as of 2022-08-09\nContact Us\nIf you have any questions or suggestions about our Privacy Policy, do not hesitate to contact us at tirandaj.com@gmail.com.\nThis privacy policy page was created at privacypolicytemplate.net and modified/generated by App Privacy Policy Generator",
      "Contact With Us\nGENERAL QUERIES:\nEmail: tirandaj.com@gmail.com\nMobile: +91 7000595043\n\nADVERTISE WITH US\n\Email: tirandaj.com@gmail.com\nMobile: +91 7000595043",];
    return Scaffold(
      appBar: AppBar(
        title: Text(title_list[data],style: TextStyle(fontSize: 22),),
        backgroundColor: Colors.black,
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: <Widget>[
          Center(
            child: Container(
              margin: EdgeInsets.only(bottom: 10,top: 10, right: 25),
              // ),
              child: Image.asset("assets/images/tirandaj.png",scale: 10,),

            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Text(desc[data],
              style: GoogleFonts.gotu(fontSize: 18),
            ),
          )
        ],
      ),
    );
  }
}

