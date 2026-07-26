1. HTML (HyperText Markup Language)
  => 웹 페이지의 구조와 의미를 정의하는 마크업 언어

※ 마크업 (Markup): 문서의 핵심 알맹이(텍스트)에 "이 부분은 제목이다", "이 부분은 본문이다"라고 태그를 붙여 구조를 지시하는 메타 정보

역할
	1-1) 웹 문서의 뼈대(구조)를 형성
	1-2) 텍스트, 이미지, 링크, 비디오, 버튼, 입력창 등의 요소를 화면에 배치
	1-3) <p>, <h1>, <div>, <a>, <img> 등의 태그(Tag)를 사용하여 각 데이터의 의미와 구성을 지시
		ex) <태그명> </태그명>

2. CSS (Cascading Style Sheets)
   => HTML로 작성된 문서의 디자인과 레이아웃(시각적 표현)을 정의하는 스타일 시트 언어

※ Cascading의 의미 : 여러 스타일 규칙이 겹쳤을 때, 우선순위와 소스의 선언 순서에 따라 최종적으로 적용되는 방식을 의미

인라인 스타일 (Inline) : HTML 태그의 `style` 속성으로 CSS 코드를 직접 작성하는 방식
				ex) <button style="color:red;">삭제</button>

내부 스타일 (Internal) : HTML 문서의 `<head>` 태그 내에 `<style>` 태그를 추가하여 해당 문서의 스타일을 한곳에 모아 정의하는 방식
ex)	<head>
		<style>
	  		* { font-family: sans-serif; }
			h3 { color: maroon; background-color: yellow; }
		</style>
	</head>

외부 스타일 (External) : CSS 코드를 별도의 `.css` 파일로 분리하여 저장하고, HTML 문서의 `<head>` 태그 안에서 `<link>` 태그를 이용해 연결하는 방식
ex)
<head>
	<link href="default.css" rel="stylesheet" />
</head>

역할
	2-1) 웹 페이지의 시각적 스타일링을 담당
	2-2) 색상, 폰트, 크기, 간격, 배경, 배치 위치 등을 지정
	2-3) 화면 크기(PC, 태블릿, 모바일)에 맞춰 레이아웃을 변형하는 반응형 웹 디자인을 구현
	2-4) 단순한 시각적 전환 효과(Transition)나 애니메이션(Animation)을 수행

3. JavaScript (JS)
  => 웹 페이지에 동적인 기능을 추가하는 프로그래밍 언어입니다.
	웹 브라우저에서 가장 널리 사용되는 인터프리터 방식의 객체 지향 프로그래밍 언어로,
	ECMA(European Computer Manufacturers Association) 스크립트 표준을 준수

ex)       <script type="text/javascript">
 			 // 자바스크립트 소스코드 작성 영역</script>

역할
	3-1) 웹 페이지의 동작 및 상호작용(Interaction)을 제어
	3-2) 사용자 입력 검증, 클릭 이벤트 처리, 팝업 창 제어 등을 수행
	3-3) HTML 요소나 CSS 스타일을 실시간으로 변경하거나 생성


Flex : 1차원 레이아웃 시스템: 가로(Row) 또는 세로(Column) 중 단 하나의 축을 기준으로 요소들을 배치
특징
  - 요소의 내용물(Content) 크기에 맞춰 유연하게 수축하거나 늘어남
  - 한 줄(또는 한 열) 안에서 요소 간의 간격 균등 분배, 정렬(중앙 정렬, 양 끝 정렬 등)을 처리하기에 최적화되어 있음
  - 줄바꿈(flex-wrap: wrap)을 사용할 수 있지만, 줄바꿈된 요소들은 이전 줄의 위치에 영향을 받지 않고 독자적으로 정렬 됨

Grid : 2차원 레이아웃 시스템: 가로(Row)와 세로(Column) 두 개의 축을 동시에 제어하여 격자(Grid) 구조를 만듦
특징
  - 행과 열을 미리 명확하게 정의해 두고, 그 격자 칸(Cell) 안에 요소들을 배치
  - 요소가 여러 행과 열에 걸쳐 차지하도록 영역(grid-column, grid-row, grid-template-areas)을 자유롭게 할당할 수 있음
  - 복잡한 행과 열의 위치 맞춤이 필요한 구조에서 CSS 코드를 단순화 함

차이점
Flexbox는 1차원(가로 또는 세로 중 한 방향) 레이아웃으로, 콘텐츠 크기에 맞춰 요소들을 한 줄로 정렬하고 간격을 배분할 때 적합하고, 반면 Grid는 2차원(가로와 세로 동시) 레이아웃으로, 행과 열이 교차하는 격자 틀을 먼저 만든 뒤 요소의 위치와 크기를 정밀하게 배치할 때 사용
