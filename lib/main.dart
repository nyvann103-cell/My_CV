import 'package:flutter/material.dart';

void main() {
  runApp(const LyVannyCVApp());
}

class LyVannyCVApp extends StatelessWidget {
  const LyVannyCVApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CV - Ly Vanny',
      theme: ThemeData(
        // Using a professional blue seed color based on the CV theme
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF2196F3)),
        useMaterial3: true,
      ),
      home: const LyVannyPage(),
    );
  }
}

class LyVannyPage extends StatelessWidget {
  const LyVannyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          // LEFT SIDEBAR: Personal Details & Skills
          Container(
            width: 300,
            color: const Color.fromARGB(
              255,
              26,
              35,
              126,
            ), // Darker blue for sidebar
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // PROFILE IMAGE
                  Center(
                    child: Container(
                      padding: const EdgeInsets.all(4),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: const CircleAvatar(
                        radius: 75,
                        backgroundColor: Colors.grey,
                        // Update this path to your actual local asset image
                        backgroundImage: AssetImage('assets/vanny_profile.png'),
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),

                  _sidebarSectionTitle("CONTACT"),
                  _sidebarInfoText("📞 +855-763-413-151"),
                  _sidebarInfoText("✉️ nyvann103@gmail.com"),
                  _sidebarInfoText("📍 Toul Kork 1, Phum 10,\nPhnom Penh"),

                  const SizedBox(height: 30),
                  _sidebarSectionTitle("TECH/SOFT SKILLS"),
                  _sidebarInfoText("• Responsibility"),
                  _sidebarInfoText("• Teamwork"),
                  _sidebarInfoText("• Time Management"),
                  _sidebarInfoText("• Critical Thinking"),
                  _sidebarInfoText("• Effective Communication"),

                  const SizedBox(height: 30),
                  _sidebarSectionTitle("LANGUAGE"),
                  _sidebarInfoText("• Khmer (Fluent)"),
                  _sidebarInfoText("• English (Medium)"),
                  _sidebarInfoText("• French (Basic)"),

                  const SizedBox(height: 30),
                  _sidebarSectionTitle("PROFILE DETAILS"),
                  _sidebarInfoText("• Nationality: Cambodia"),
                  _sidebarInfoText("• Gender: Female"),
                  _sidebarInfoText("• Status: Single"),
                ],
              ),
            ),
          ),

          // MAIN CONTENT
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "LY VANNY",
                    style: TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF1A43BF),
                    ),
                  ),
                  const Text(
                    "TELECOMMUNICATION & NETWORK ENGINEERING STUDENT",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Divider(height: 50, thickness: 1.5),
                  _mainSectionTitle("PERSONAL STATEMENT"),
                  _mainBodyText(
                    "I am a Year 3 student at the Institute of Technology of Cambodia with a passion for software development, microcontrollers, sensors, and networking. I am a highly motivated quick learner, eager to apply theoretical knowledge to practical engineering challenges.",
                  ),
                  _mainSectionTitle("WORK EXPERIENCE & PROJECTS"),
                  _experienceItem(
                    "2025",
                    "Hotel Reservation System",
                    "Team Project - ITC",
                  ),
                  _experienceItem(
                    "2025",
                    "Mini Project (Java FXML)",
                    "Software Development - ITC",
                  ),
                  _experienceItem(
                    "2025",
                    "10 Option Console Program",
                    "C++ Development - ETEC Center",
                  ),
                  _experienceItem(
                    "2023-2025",
                    "Soup Shop Operations",
                    "Service, Cashier & Management",
                  ),
                  _experienceItem(
                    "Nov 2023",
                    "Junior Research Student",
                    "Higher Education Improvement Project (HELP)",
                  ),
                  _mainSectionTitle("EDUCATION"),
                  _educationItem(
                    "2022-Present",
                    "Institute of Technology of Cambodia (ITC)",
                    "Engineering in Telecommunication and Network",
                  ),
                  _educationItem(
                    "2017-2022",
                    "Grat Prey Sondeak High School",
                    "High School Graduation",
                  ),
                  _educationItem("2011-2016", "Sophy Oudom", "Primary School"),
                  _mainSectionTitle("VOLUNTEER & COMPETITION"),
                  _experienceItem(
                    "April 2025",
                    "Angkor Sangran Volunteer",
                    "Red Cross Youth Network & First Aid",
                  ),
                  _experienceItem(
                    "2021",
                    "21st Century Youth Creative",
                    "Joint Competition Participant",
                  ),
                  _mainSectionTitle("REFERENCES"),
                  _referenceItem(
                    "Dr. SRENG Sokchenda",
                    "Head of Dept. of Telecommunication and Network Engineering",
                    "+855 512 401 910",
                    "sokchenda@itc.edu.kh",
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // UI Helpers
  Widget _sidebarSectionTitle(String title) {
    return Text(
      title,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _sidebarInfoText(String text) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Text(
        text,
        style: const TextStyle(color: Colors.white70, fontSize: 14),
      ),
    );
  }

  Widget _mainSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(top: 30.0, bottom: 10.0),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: Color(0xFF1A43BF),
        ),
      ),
    );
  }

  Widget _mainBodyText(String text) =>
      Text(text, style: const TextStyle(fontSize: 16, height: 1.5));

  Widget _experienceItem(String date, String title, String location) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            date,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black54,
            ),
          ),
          Text(
            title,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Text(location, style: const TextStyle(color: Colors.black87)),
        ],
      ),
    );
  }

  Widget _educationItem(String date, String school, String detail) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "$date: $school",
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Text(
            detail,
            style: const TextStyle(fontSize: 14, color: Colors.black87),
          ),
        ],
      ),
    );
  }

  Widget _referenceItem(String name, String role, String phone, String email) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
          Text(role, style: const TextStyle(fontStyle: FontStyle.italic)),
          if (phone.isNotEmpty) Text("Phone: $phone"),
          Text("Email: $email"),
        ],
      ),
    );
  }
}
