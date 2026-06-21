1. 클래스 기초 개념 정리
   
  - 클래스와 객체의 정의

   * 클래스란; 
	 추상화 과정을 통해 객체의 특성(데이터와 기능)을 정의해 놓은 설계도 혹은 틀
    -> 추상화란 프로그램에 필요한 공통점을 추출하고, 불필요한 특성은 제거하는 과정
 
   * 객체 지향 언어(OOP)
    -> 각각의 객체로 이루어져 있으며, 발생하는 모든 사건들은 객체 간의 상호작용을 컴퓨터 프로그래밍으로 옮겨 놓은 것

  - 클래스 구성 요소
   1) 필드(=변수) : 객체가 가지고 있는 특징이나 상태를 저장하는 변수
     
      ex) 학생 클래스
  
    class Student {
      String name;    // 필드
      int age;        // 필드
    }
   2) 생성자 : 객체가 생성될 때 (new 연산자를 만날 때) 딱 한 번만 호출되는 특별한 메소드
      ⁂ 규칙 -> 반환형(리턴타입)이 존재하지 않음(void)도 쓰지 않음
             -> 생성자명은 반드시 클래스명과 대소문자까지 똑같아야 한다.
      
      ex1) 기본 생성자
    
    class Student {
        String name;

    Student() {
        name = "임광희";
      }
    }

   ------사용----------
    Student s = new Student();

    System.out.println(s.name);

      ex2) 매개변수 생성자 -> 객체 생성과 동시에 값을 전달받는 생성자
    class Student {

    int no;

    Student(int no) {
        this.no = no;
    }

}
  생성자의 오버로딩
   -> 매개변수의 개수나 타입을 다르게 하여 생성자를 여러 개 만드는 것
 
   3) 매소드 : 특정 작업을 수행하도록 이름을 붙여 놓은 코드의 묶음이다.
      ⁙ 매소드를 사용하는 이유
        -> 코드 재사용
        -> 가독성 향상
        -> 유지보수 용이
        -> 메소드 오버로딩 : 같은 이름의 메소드를 여러 개 만드는 것(매개변수 개수,타입,순서가 달라야 함)
      ex) 
      class Calculator {

    int sum(int a, int b) {
        return a + b;
    }

    int sum(int a, int b, int c) {  // 매개변수 개수가 다름
        return a + b + c;
    }

    double sum(double a, double b) {  // 매개변수 타입이 다름
        return a + b;
    }

}

전체 예시

class Student {

    // 1. 필드
    String name;
    int age;

    // 2. 생성자
    Student(String name, int age) {
        this.name = name;
        this.age = age;
    }

    // 3. 메소드
    void introduce() {
        System.out.println("이름 : " + name);
        System.out.println("나이 : " + age);
    }
}

public class Main {

    public static void main(String[] args) {

        // 객체 생성
        Student s = new Student("홍길동", 20);

        // 메소드 호출
        s.introduce();
    }
}

this란;
  -> 현재 생성된 객체 자신을 가리키는 키워드
    주로 필드(멤버 변수)와 매개변수의 이름이 같을 때 둘을 구분하기 위해 사용한다.
  ex) 
class Student {

    int no;    // 필드(객체의 학번)

    Student(int no) {   // 매개변수
        this.no = no;
    }

}
