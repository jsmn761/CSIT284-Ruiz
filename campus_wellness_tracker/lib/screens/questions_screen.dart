import 'package:flutter/material.dart';
 
class QuestionsScreen extends StatefulWidget {
 const QuestionsScreen({super.key});
 
 @override
 State<QuestionsScreen> createState() {
  return _QuestionsScreenState();
 }
}
 
class _QuestionsScreenState extends State<QuestionsScreen> {
 
 var questionNumber = 0;
 var A = 0;
 var B = 0;
 var C = 0;
 var D = 0;
 var done = false;
 
 final questions = [
  {
   'question': 'What is your study method?',
   'answers': ['Mind-mapping', 'Memorizing', 'Blurting', 'Pomodoro'],
   'A': 'Mind-mapping',
   'B': 'Memorizing',
   'C': 'Blurting',
   'D': 'Pomodoro'
  },
  {
   'question': 'How many hours do you spend studying?',
   'answers': ['1 - 2 hours', '3 - 4 hours', '5 - 6 hours', 'More than 6 hours'],
   'A': '1 - 2 hours',
   'B': '3 - 4 hours',
   'C': '5 - 6 hours',
   'D': 'More than 6 hours'
  },
  {
   'question': 'What would you describe your quality of sleep',
   'answers': ['Bad', 'Neutral', 'Best', 'Cannot say'],
   'A': 'Bad',
   'B': 'Neutral',
   'C': 'Best',
   'D': 'Cannot say'
  },
  {
   'question': 'How do you spend your free time?',
   'answers': ['Hobbies', 'Doom Scrolling', 'Sleeping', 'No free time'],
   'A': 'Hobbies',
   'B': 'Doom Scrolling',
   'C': 'Sleeping',
   'D': 'No free time'
  },
  {
   'question': 'What can you say about your overall well-being?',
   'answers': ['Sad', 'Happy', 'Stressed', 'Neutral'],
   'A': 'Sad',
   'B': 'Happy',
   'C': 'Stressed',
   'D': 'Neutral'
  },
 ];
 
 void answerQuestion(String answer) {
 
  if (answer == questions[questionNumber]['A']) {
   A++;
  }

  if (answer == questions[questionNumber]['B']) {
   B++;
  }
  if (answer == questions[questionNumber]['C']) {
   C++;
  }
  if (answer == questions[questionNumber]['D']) {
   D++;
  }
 
  setState(() {
 
   if (questionNumber < questions.length - 1) {
    questionNumber++;
   } else {
    done = true;
   }
 
  });
 }
 
 void tryAgain() {
  setState(() {
   questionNumber = 0;
   done = false;
  });
 }
 
 @override
 Widget build(context) {
 
  if (done) {
   return Center(
    child: Column(
     mainAxisSize: MainAxisSize.min,
     children: [
 
      const Text(
       'Classification',
       style: TextStyle(
        color: Color(0xFF607D68),
        fontSize: 30,
        fontWeight: FontWeight.bold,
       ),
      ),
     
     
      const SizedBox(height: 15),
  
      Text(
       'Unhealthy'
       'You need to start improving your habits',
       style: const TextStyle(
        color: Color.fromARGB(255, 229, 166, 216),
        fontSize: 45,
        fontWeight: FontWeight.bold,
       ),
      ),

      Text(
       'Healthy'
       'Reccomendation: Keep maintaining your habits!',
       style: const TextStyle(
        color: Color.fromARGB(255, 134, 192, 240),
        fontSize: 45,
        fontWeight: FontWeight.bold,
       ),
      ),

      Text(
       'In the middle'
       'Reccomendation: Be careful not to slip to unhealthy habits.',
       style: const TextStyle(
        color: Color.fromRGBO(247, 25, 25, 0.658),
        fontSize: 45,
        fontWeight: FontWeight.bold,
       ),
      ),

      Text(
       'Very Unhealthy'
       'Reccomendation: You can always reach out and improve',
       style: const TextStyle(
        color: Color.fromARGB(255, 126, 221, 137),
        fontSize: 45,
        fontWeight: FontWeight.bold,
       ),
      ),
 
      const SizedBox(height: 30),
 
      OutlinedButton(
       onPressed: tryAgain,
       style: OutlinedButton.styleFrom(
        foregroundColor: const Color(0xFF607D68),
        side: const BorderSide(
         color: Color(0xFF607D68),
         width: 2,
        ),
        padding: const EdgeInsets.symmetric(
         horizontal: 35,
         vertical: 15,
        ),
       ),
       child: const Text(
        'Restart Assesment',
        style: TextStyle(
         fontSize: 20,
        ),
       ),
      ),
 
     ],
    ),
   );
  }
 
  return Center(
   child: Column(
    mainAxisSize: MainAxisSize.min,
    children: [
 
     Text(
      questions[questionNumber]['question'] as String,
      textAlign: TextAlign.center,
      style: const TextStyle(
       color: Color(0xFF607D68),
       fontSize: 25,
       fontWeight: FontWeight.bold,
      ),
     ),
 
     const SizedBox(height: 30),
 
     ...(questions[questionNumber]['answers'] as List<String>).map(
      (answer) {
       return Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: SizedBox(
         width: 250,
         child: OutlinedButton(
          onPressed: () {
           answerQuestion(answer);
          },
          child: Text(
           answer,
           style: const TextStyle(
            fontSize: 20,
           ),
          ),
         ),
        ),
       );
      },
     ),
 
    ],
   ),
  );
 }
}
 