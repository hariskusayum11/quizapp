class UniversityQuestion {
  final int id;
  final String text;
  final List<UniversityOption> options;
  bool isLocked;
  UniversityOption? selectedWiidgetOption;
  UniversityOption? correctAnswer;
  // final int timeSeconds;

  UniversityQuestion({
    required this.text,
    required this.options,
    this.isLocked = false,
    this.selectedWiidgetOption,
    required this.id,
    required this.correctAnswer,
    //  required this.timeSeconds
  });

  UniversityQuestion copyWith() {
    return UniversityQuestion(
      id: id,
      text: text,
      options: options
          .map(
            (option) =>
                UniversityOption(text: option.text, isCorrect: option.isCorrect),
          )
          .toList(),
      isLocked: isLocked,
      selectedWiidgetOption: selectedWiidgetOption,
      correctAnswer: correctAnswer,
    );
  }
}

class UniversityOption {
  final String text;
  final bool isCorrect;

  const UniversityOption({
    required this.text,
    required this.isCorrect,
  });
}

final UniversityQuestionsList = [
  UniversityQuestion(
    text: "มหาวิทยาลัยทักษิณมีกี่วิทยาเขต?",
    options: [
      const UniversityOption(text: "1 วิทยาเขต", isCorrect: false),
      const UniversityOption(text: "2 วิทยาเขต", isCorrect: true),
      const UniversityOption(text: "3 วิทยาเขต", isCorrect: false),
      const UniversityOption(text: "4 วิทยาเขต", isCorrect: false),
    ],
    id: 0,
    correctAnswer:
        const UniversityOption(text: "2 วิทยาเขต", isCorrect: true),
  ),
 UniversityQuestion(
    text: "มหาวิทยาลัยทักษิณมีวิทยาเขตอยู่ที่จังหวัดใดบ้าง?",
    options: [
      const UniversityOption(text: "สงขลา,สตูล", isCorrect: false),
      const UniversityOption(text: "กรุงเทพ,สงขลา", isCorrect: false),
      const UniversityOption(text: "สงขลา,นครศรีธรรมราช", isCorrect: false),
      const UniversityOption(text: "สงขลา,พัทลุง", isCorrect: true),
    ],
    id: 1,
    correctAnswer:
        const UniversityOption(text: "สงขลา,พัทลุง", isCorrect: true),
  ),

  UniversityQuestion(
    text: "สีประจำมหาวิทยาลัยทักษิณคือสีอะไร?",
    options: [
      const UniversityOption(text: "เทา-ฟ้า", isCorrect: true),
      const UniversityOption(text: "ส้ม-ฟ้า", isCorrect: false),
      const UniversityOption(text: "เทา-ส้ม", isCorrect: false),
      const UniversityOption(text: "ม่วง-เหลือง", isCorrect: false),
    ],
    id: 2,
    correctAnswer:
        const UniversityOption(text: "เทา-ฟ้า", isCorrect: true),
  ),

 UniversityQuestion(
    text: "ดอกไม้ประจำมหาวิทยาลัยทักษิณคือดอกอะไร?",
    options: [
      const UniversityOption(text: "ปาริชาต", isCorrect: true),
      const UniversityOption(text: "จามจุรี", isCorrect: false),
      const UniversityOption(text: "ราชพฤกษ์", isCorrect: false),
      const UniversityOption(text: "อินทนิล", isCorrect: false),
    ],
    id: 3,
    correctAnswer:
        const UniversityOption(text: "ปาริชาต", isCorrect: true),
  ),
  // other 4
  UniversityQuestion(
    text: "อักษรย่อภาษาอังกฤษของมหาวิทยาลัยทักษิณคืออะไร?",
    options: [
      const UniversityOption(text: "MSU", isCorrect: false),
      const UniversityOption(text: "SUT", isCorrect: false),
      const UniversityOption(text: "TSU", isCorrect: true),
      const UniversityOption(text: "TU", isCorrect: false),
    ],
    id: 4,
    correctAnswer:
        const UniversityOption(text: "TSU", isCorrect: true),
  ),
  UniversityQuestion(
    text: "มหาวิทยาลัยใดที่ถือว่าเป็นมหาวิทยาลัยแม่ของมหาวิทยาลัยทักษิณ?",
    options: [
      const UniversityOption(text: "จุฬาลงกรณ์มหาวิทยาลัย", isCorrect: false),
      const UniversityOption(text: "มหาวิทยาลัยสงขลานครินทร์", isCorrect: false),
      const UniversityOption(text: "มหาวิทยาลัยมหิดล", isCorrect: false),
      const UniversityOption(text: "มหาวิทยาลัยศรีนครินทรวิโรฒ", isCorrect: true),
    ],
    id: 5,
    correctAnswer:
        const UniversityOption(text: "มหาวิทยาลัยศรีนครินทรวิโรฒ", isCorrect: true),
  ),

 UniversityQuestion(
    text: "อธิการบดีคนปัจจุบัน(พ.ศ.2567)ของมหาวิทยาลัยทักษิณมีชื่อว่าอะไร?",
    options: [
      const UniversityOption(text: "รศ.ดร.วิชัย ชำนิ", isCorrect: false),
      const UniversityOption(text: "รศ.ดร.สมเกียรติ สายธนู", isCorrect: false),
      const UniversityOption(text: "รศ.ดร.ณฐพงศ์ จิตรนิรัตน์", isCorrect: true),
      const UniversityOption(text: "ศ.ดร.เสริมศักดิ์ วิศาลาภรณ์", isCorrect: false),
    ],
    id: 6,
    correctAnswer:
        const UniversityOption(text: "รศ.ดร.ณฐพงศ์ จิตรนิรัตน์", isCorrect: true),
  ),
UniversityQuestion(
    text: "มหาวิทยาลัยทักษิณมีตราสัญลักษณ์ประจำมหาวิทยาลัยเป็นรูปอะไร?",
    options: [
      const UniversityOption(text: "ตรากราฟ", isCorrect: false),
      const UniversityOption(text: "ตำราการศึกษา 3 เล่ม", isCorrect: true),
      const UniversityOption(text: "พระเกี้ยว", isCorrect: false),
      const UniversityOption(text: "ช้างชูคบเพลิง", isCorrect: false),
    ],
    id: 7,
    correctAnswer:
        const UniversityOption(text: "รูปตำราการศึกษา 3 เล่ม", isCorrect: true),
  ),
];
