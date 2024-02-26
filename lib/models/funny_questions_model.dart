class FunnyQuestion {
  final int id;
  final String text;
  final List<FunnyOption> options;
  bool isLocked;
  FunnyOption? selectedWiidgetOption;
  FunnyOption correctAnswer;

  FunnyQuestion({
    required this.text,
    required this.options,
    this.isLocked = false,
    this.selectedWiidgetOption,
    required this.id,
    required this.correctAnswer,
  });

  FunnyQuestion copyWith() {
    return FunnyQuestion(
      id: id,
      text: text,
      options: options
          .map((option) =>
              FunnyOption(text: option.text, isCorrect: option.isCorrect))
          .toList(),
      isLocked: isLocked,
      selectedWiidgetOption: selectedWiidgetOption,
      correctAnswer: correctAnswer,
    );
  }
}

class FunnyOption {
  final String? text;
  final bool? isCorrect;

  const FunnyOption({
    this.text,
    this.isCorrect,
  });
}

final FunnyQuestionsList = [
  FunnyQuestion(
    text:
        "อะไรเอ่ย ...นั่งก็ห้อย ยืนก็ห้อย ร้อยทั้งร้อยเป็นของผู้ชาย?",
    options: [
      const FunnyOption(text: "เข็มขัด", isCorrect: false),
      const FunnyOption(text: "เนคไท", isCorrect: true),
      const FunnyOption(text: "กำไล", isCorrect: false),
      const FunnyOption(text: "แหวน", isCorrect: false),
    ],
    id: 0,
    correctAnswer: const FunnyOption(text: "เนคไท", isCorrect: true),
  ),
  FunnyQuestion(
    text:
        "สแควร์รู๊ท 3 ส่วน h เท่า! กับเท่าไหร่?",
    options: [
      const FunnyOption(text: "สาม", isCorrect: false),
      const FunnyOption(text: "ต้นไม้ตาย ", isCorrect: true),
      const FunnyOption(text: "สแควร์รู๊ท", isCorrect: false),
      const FunnyOption(text: "ถูกทุกข้อ", isCorrect: false),
    ],
    id: 1,
    correctAnswer: const FunnyOption(text: "ต้นไม้ตาย เพราะ 3 = three หาร h ก็เหลือ tree ต้นไม้(เพราะต้นไม้ถอดก็ตาย)", isCorrect: true),
  ),
  FunnyQuestion(
    text:
        "สมมติว่าคุณเป็นเจ้าของร้านอาหารร้านหนึ่ง ทั้งร้านมีโต๊ะอาหาร 4 โต๊ะโต๊ะหนึ่งโต๊ะสองเพิ่งสั่งอาหาร โต๊ะสามจ่ายเงินเเล้ว เเต่โต๊ะสี่ เบี้ยวคุณจะทำอย่างไร?",
    options: [
      const FunnyOption(text: "พูดดีๆ", isCorrect: false),
      const FunnyOption(text: "ไม่ให้กลับ", isCorrect: false),
      const FunnyOption(text: "จัดให้ตรง", isCorrect: true),
      const FunnyOption(text: "ให้ล้างจาน", isCorrect: false),
    ],
    id: 2,
    correctAnswer: const FunnyOption(text: "จัดให้ตรง", isCorrect: true),
  ),
  FunnyQuestion(
    text:
        "มีแก้วอยู่ 10 แก้ว แล้วเติมน้ำทุกแก้ว แล้วแก้วไหนเติมเท่าไหร่ก็ไม่เต็ม?",
    options: [
      const FunnyOption(text: "แก้วที่หก", isCorrect: true),
      const FunnyOption(text: "แก้วที่เก้า", isCorrect: false),
      const FunnyOption(text: "แก้วที่สาม", isCorrect: false),
      const FunnyOption(text: "แก้วที่ห้า", isCorrect: false),
    ],
    id: 3,
    correctAnswer: const FunnyOption(text: "แก้วที่หก", isCorrect: true),
  ),
  FunnyQuestion(
    text:
        "ถ้าโดนขวานจามใส่หน้าจะทำไง?",
    options: [
      const FunnyOption(text: "ไปโรงพยาบาล", isCorrect: false),
      const FunnyOption(text: "ทำแผล", isCorrect: false),
      const FunnyOption(text: "กินยา", isCorrect: true),
      const FunnyOption(text: "ถูกทุกข้อ", isCorrect: false),
    ],
    id: 4,
    correctAnswer: const FunnyOption(text: "กินยากันเป็นหวัด", isCorrect: true),
  ),
  FunnyQuestion(
    text:
        "ไอแซกนิวตันรู้อะไรเมื่อแอปเปิ้ลตกลงบนหัว จากที่เขานั่ง?",
    options: [
      const FunnyOption(text: "แรงโน้มถ่วง", isCorrect: false),
      const FunnyOption(text: "รู้ว่าเขาควรนั่งที่อื่น", isCorrect: true),
      const FunnyOption(text: "เจ็บหัว", isCorrect: false),
      const FunnyOption(text: "ถูกทุกข้อ", isCorrect: false),
    ],
    id: 4,
    correctAnswer: const FunnyOption(text: "รู้ว่าเขาควรนั่งที่อื่น", isCorrect: true),
  ),
  FunnyQuestion(
    text:
        "สมมติมีรถจักรยานอยู่คันนึง สมชาย นั่งหน้า สมปอง นั่งกลาง สมศักดิ์ นั่งหลัง ใครเป็นเจ้าของรถ?",
    options: [
      const FunnyOption(text: "สมชาย", isCorrect: false),
      const FunnyOption(text: "สมปอง", isCorrect: false),
      const FunnyOption(text: "สมศักดิ์", isCorrect: false),
      const FunnyOption(text: "สมมติ", isCorrect: true),
    ],
    id: 5,
    correctAnswer: const FunnyOption(text: "สมมติ", isCorrect: true),
  ),
  FunnyQuestion(
    text:
        "ชีวิตอะไรเอ่ยวิ่งไปทดเลขไป ",
    options: [
      const FunnyOption(text: "ชีวิตรันทด", isCorrect: true),
      const FunnyOption(text: "ชีวิตยากจน", isCorrect: false),
      const FunnyOption(text: "ชีวิตชีวา", isCorrect: false),
      const FunnyOption(text: "ชีวิตนี้มีแต่เลข", isCorrect: false),
    ],
    id: 6,
    correctAnswer: const FunnyOption(text: "ชีวิตรันทด", isCorrect: true),
  ),
  FunnyQuestion(
    text:
        "อะไรเอ๋ยเวลาเรายืนมันห้อย เวลาเราเดินมันแกว่ง?",
    options: [
      const FunnyOption(text: "มือ", isCorrect: false),
      const FunnyOption(text: "ขา", isCorrect: false),
      const FunnyOption(text: "แขน", isCorrect: true),
      const FunnyOption(text: "หัว", isCorrect: false),
    ],
    id: 7,
    correctAnswer: const FunnyOption(text: "แขน", isCorrect: true),
  ),
  FunnyQuestion(
    text:
        "สีอะไรดูโง่ๆ?",
    options: [
      const FunnyOption(text: "สีเทา", isCorrect: false),
      const FunnyOption(text: "ศรีสะเกต", isCorrect: false),
      const FunnyOption(text: "ศรีธัญญา", isCorrect: false),
      const FunnyOption(text: "สีหน้าคุณตอนนี้ไง", isCorrect: true),
    ],
    id: 8,
    correctAnswer: const FunnyOption(text: "สีหน้าคุณตอนนี้ไง", isCorrect: true),
  ),
  FunnyQuestion(
    text:
        "สมมุติตอนนี้คุณอายุ20ปี แล้วคุณเกิดเมื่อ5ปีก่อนตอนนี้คุณจะอายุเท่าไหร่?",
    options: [
      const FunnyOption(text: "5", isCorrect: true),
      const FunnyOption(text: "10", isCorrect: false),
      const FunnyOption(text: "15", isCorrect: false),
      const FunnyOption(text: "20", isCorrect: false),
    ],
    id: 9,
    correctAnswer: const FunnyOption(text: "5", isCorrect: true),
  ),
  FunnyQuestion(
    text:
        "“ข้างขึ้น” คือช่วงเวลาของวันคืนที่พระจันทร์สว่าง ตามวิธีนับแบบจันทรคติคือขึ้น 1 ค่ำ ถึง 15 ค่ำ แล้ว”ข้างแรม” คืออะไร?",
    options: [
      const FunnyOption(text: "ฮาร์ดดิส", isCorrect: false),
      const FunnyOption(text: "เมนบอร์ด", isCorrect: false),
      const FunnyOption(text: "การ์ดจอ", isCorrect: false),
      const FunnyOption(text: "ถูกทุกข้อ", isCorrect: true),
    ],
    id: 10,
    correctAnswer: const FunnyOption(text: "ถูกทุกข้อ เพราะข้างแรม มี เมนบอร์ด การ์ดจอ ฮาร์ดดิส", isCorrect: true),
  ),
 
];
