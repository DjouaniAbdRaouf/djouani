// ignore_for_file: non_constant_identifier_names

class ProjectModel {
  final String project;
  final String description;

  ProjectModel(this.project, this.description);

  static List<String> ImagesForWeb = [
    "eval_et.png",
    "index_prof.png",
    "login.png",
    "Capture d’écran 2020-10-20 224721.png",
    "about_us.png",
    "absence.png",
    "1.jpg",
    "2 (2).jpg",
    "3.jpg",
    "notifyrisk1.jpg",
    "notifyrisk2.jpg",
    "notifyrisk3.jpg",
    "notifyrisk4.jpg",
    "ad3ya310788113_619250533017317_3698520744610469179_n.jpg",
    "ad3ya79459156500585_8117179937475894676_n.jpg",
    "ad3ya3.jpg",
    "ad3ya4.jpg",
    "ad3ya5.jpg",
    "ad3ya6.jpg"
  ];

  // static List<String> ImageMobile = [
  //   "1.jpg",
  //   "2 (2).jpg",
  //   "3.jpg",
  //   "notifyrisk1.jpg",
  //   "notifyrisk2.jpg",
  //   "notifyrisk3.jpg",
  //   "notifyrisk4.jpg",
  //   "ad3ya310788113_619250533017317_3698520744610469179_n.jpg",
  //   "ad3ya79459156500585_8117179937475894676_n.jpg",
  //   "ad3ya3.jpg",
  //   "ad3ya4.jpg",
  //   "ad3ya5.jpg",
  //   "ad3ya6.jpg"
  // ];

  static List<ProjectModel> MyProject = [
    ProjectModel(
        "Risk Management In smart city using IOT And mobile Application",
        "NotifyRisk is a System for risk management for alert people and send a notification with the exact localisation to the civil protection and take the necessary actions to avoid big damages, using flutter , firebase and arduino (IOT)"),
    ProjectModel("Platfrom E-learning for continuous assessment of students ",
        "Platform for university for continuous assessment of students,tutorials , practical work and exams it calculates students mark automatically , the student can see their mark with personal account using PHP , JQuery Ajax , html , css , Bootstrap"),
    ProjectModel("Ad3yati for prayer Times and Qibla Direction",
        "Ad3yati it is an application destined to the muslims people contains Qibla Direction , PrayerTimes using the localisation also the supplications and remembrances"),
    ProjectModel("News Applicaion for Android and IOS",
        "AppNews it's an appliction for news filtring by country adn category using NewsApi contains also all websites and sources by WebView it's available in Ios and Android"),
    ProjectModel("GestPharma for financial management for pharmacy",
        "GestPharma it's a management software for Pharmacy contains all information about Factures , vendor , payment , check and many informations about financial side also employee and Salary using Firebase And Flutter"),
  ];
}
