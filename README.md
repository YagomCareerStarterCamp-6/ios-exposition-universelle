## 🚌 만국박람회
>파리 만국 박람회 1900 의 한국의 출품작을 볼수있는 '만국박람회'앱 프로젝트입니다.
 
<div align="center">
    <img src="https://img.shields.io/badge/swift-5.7-F05138.svg?style=flat&logo=Swift">
    <img src="https://img.shields.io/badge/14.0-000000.svg?style=flat&logo=iOS">
    <img src="https://img.shields.io/badge/Xcode-13.4.1-white.svg?style=flat&logo=XCode">
    <img src="https://img.shields.io/badge/UIKit-white.svg?style=flat&logo=UIKit">
</div>


<br>

## 🫂 팀 소개
> derrick과 백곰이 함께 만국박람회라는 토이 프로젝트를 진행하였습니다.

|[BaekGom - 며느리](https://github.com/Baek-Gom-95)|[Derrickkim - 시어머니](https://github.com/derrickkim0109)|
|:--------:|:--------:|
|<img src="https://i.imgur.com/Ea3cELm.jpg" width=200>|<img src="https://avatars.githubusercontent.com/u/59466342?v=4" width=200>|
|Autolayout<br>Custom View<br>Unit Test<br>Table View|Autolayout<br>인스턴스 캡슐화, 은닉화처리<br>Error 처리<br>JSON 데이터를 위한 타입 구현<br>테이블뷰 구현<br>Custom View 생성<br>디렉토리별 분리<br>프로젝트 기능 MVC로 분리<br>PR 틀작성<br>Unit Test<br>|

<br>


## 타임라인

### Week 1
> 2022.06.13 ~ 2022.06.17

- 2022-06-13(월) - STEP_01 PR
  - Json 별 모델 타입 구현, UIImage 변환 구현
  - STEP1 Pull Request

- 2022-06-14(화) - STEP1 Merged
  - Json 파일 프로젝트에 추가, Json 파싱 기능 구현

- 2022-06-15(수)
  - 메인화면 구현, 한국 출품작 리스트 화면 생성

- 2022-06-16(목)
  - 한국 출품작 리스트 구현, 접근제어자 추가, Support Files들 폴더별로 구분

- 2022-06-17(금)
  - 상세화면 구현, Json Error 처리, Autolayout 수정, README 작성

### Week 2
> 2022.06.20 ~ 2022.06.24

- 2022-06-20(월) - STEP_02 PR & Merged
    - 접근제어자 수정
    - TableViewCell identifier 설정
- 2022-06-21(화)
    - Orientaion 설정
- 2022-06-22(수)
    - Notch 유무에 따른 Autolayout 기능 구현
- 2022-06-23(목) - STEP_03 PR
    - Dynamic Type 설정 
- 2022-06-24(금) - STEP_03 Merged
    - Alert 기능 수정, README 작성

## 실행 화면(기능 설명)

### 메인화면
> ExpositionPost  Json 파일 의 데이터들을 위해 ExpositionPostEntity 타입을 생성하여 데이터로 받아주었고 두개의 StackView 통해서 보여주었습니다


### 한국 출품작 리스트
> EntryEntity Json 파일의 데이터들을 위해 EntryEntity 타입을 생성하여 배열로 데이터를 받아주었고 해당 부분을 TableView를 통해서 리스트를 보여주었습니다.  

### 상세화면 
> 이전 TableView에서 Json 파일로 불러온 데이터를 넘겨 받아서 해당 작품의 내용을 보여줍니다.

|메인화면|한국 출품작 리스트|상세화면|
|:-:|:-:|:-:|
|<img src="https://i.imgur.com/JPkvrrN.gif">|<img src="https://i.imgur.com/DCCZnyb.gif">|![thirdScreen](https://user-images.githubusercontent.com/59466342/174215016-d71a490b-f294-42a4-8a74-513d3d279985.gif)|
|메인화면입니다 <br> "한국의 출품작 보러가기"<br>버튼 클릭시 다음화면으로 넘어 갑니다.| 한국의 출품작을 <br> 리스트로 나타내고 있습니다.<br> 작품 리스트 클릭시 상세보기 화면으로 전환 됩니다.|각 출품작의 <br>이미지와 상세설명이 있습니다.<br> 작품 설명 길이에 따라 스크롤 가능합니다|

<br>

## 🗂 폴더 구조
> Application : `AppDelegate`, `SceneDelegate` <br>
> Resources : Assets, LaunchScreen, Info.plist <br>
> Model : JSON 호출, JSON 데이터에 필요한 타입, Error 타입 <br>
> View : `ExpositionPostView`,`ExpositionTableViewCell`,`ExpositionDetailView` <br>
> Controller : `ExpositionPostViewController`, `ExpositionTableViewController`, `ExpositionDetailViewController` <br>

```swift 
Expo1900
├── Application
│   ├── AppDelegate
│   └── SceneDelegate
├── Resources 
│   ├── Assets
│   ├── LaunchScreen
│   └── Info.plist
├── Extensions 
│   ├── Int+Extensions
│   ├── UILabel+Extensions
│   └── UIViewController+Extensions
│
├── Model
│   ├── ExpositionPostEntity
│   ├── EntryEntity
│   ├── ExpositionPost
│   ├── JSON ├── JsonError
│   │        ├── JSONFile
│   │        └── JsonParser
│   │  
│   └── ReuseIdentifying
├── View
│   ├── ExpositionPostView
│   ├── ExpositionTableViewCell
│   └── ExpositionDetailView
├── Controller
│   ├── ExpositionPostViewController
│   ├── ExpositionTableViewController
│   └── ExpositionDetailViewController
│
└── ExpositionTest
    └── ExpositionTest
```

<br>

## 트러블 슈팅

1. strings file로 json 파일을 생성하여 파싱하는 방식 / Assets에 넣어서 파싱하는 방식
    - string file 경로 찾는법을 찾지못해 Asset 방식으로 해결하였습니다.

2. 메인화면 Horizontaol 스택 뷰에 버튼사이에 이미지들이 있는 뷰에서 이미지들을 조금 더 중앙으로 모으고 싶었으나 해결하지 못함
    - empty stack을 2개 생성하여 왼쪽/오른쪽에 한개씩 넣어서 해결하였습니다.

3. 각 공통점이 있는 파일을 폴더별로 구분하여 두기 위해 고민하였고
    - Support file들을 Application과 Resources를 통해 구분하였습니다. 

4. Main 스토리 보드를 제거하고 메인화면을 .white로 설정하지 않으면 black 컬러로 화면이 설정.
    - white로 화면 컬러를 지정해서 해결했습니다

5. JSON의 프로퍼티 네이밍이 스네이크 기법을 따르고 있는 경우 
    - Swift내에서는 카멜 기법으로 네이밍 한 후 해당 네이밍의 enum CodingKeys를 구현하여 스네이크 네이밍 선언

6. Json Data에서 들어오는 String 타입 imageName는 View에서 UIImage타입으로 사용되어야 하는 상황 -> Model을 넘어 View에서 타입변경해야하는 사소한 문제
    - JSON Data를 받는 타입에서 UIImage를 반환하는 Computed Property를 선언

7. UIView Element가 ViewController 너무 많이 있던 문제
    - 각 Scene별로 View 파일을 만들어서 해당 파일에 UIView 관련 된것만 작성

8. UIView의 Element들이 뷰에서 차지하고 있는 크기를 파악하기 위해 backgroundColor를 줘야하는 번거로운 문제
    - Debug View hierarchy를 통해 각 UI Element의 크기 파악 

9. isActive = true로 너무 많이 선언 되어 있던 부분
    - NSLayoutConstraint.activate 안에 매개변수 [NSLayoutConstraint] 로 해결

10. 코드로 UI 구현을 위해 설정 해야하는 부분들 
    - Main Stroyboard 제거, Info.plist 설정 제거, SceneDelegate 내에 rootViewController 설정 

11. 가로화면을 중에 첫번째 화면으로 돌아갔을때 세로고정 화면이 되지 않는 문제점
    - UIInterfaceOrientation.portrait.rawValue 를 UIDevice.current.setValue 의 값으로 넣어줘서 세로고정화면 셋팅
    
12. Notch가 있는 디바이스와 없는 디바이스 에서 Autolayout이 다르게 적용되는것
    - 첫 화면에서 다음 페이지로 넘어가는 버튼의 bottom부분이 notch가 존재하는 경우 safeArea가 존재해 34만큼의 간격 존재하지만 notch가 없는경우 bottom이 0이라 버튼이 있는 View는 바닥과 딱 달라 붙음. 크기 문제가 되지 않으나 통일성을 주고싶어 설정함 
    - 두 번째 페이지 테이블 뷰의 셀의 라인 부분이 짤려 나옴. 이 부분도 위와 동일한 설정으로 해결하였습니다.

13. JSON Parsing 처리에서 발생할 수 있는 Error들을 UI로 처리하기 위해 Alert를 만들었습니다. 
    - 해당 Alert는 title, message, alertAction을 파라미터로 받는 public한 메서드를 호출하여서 생성됩니다. 해당 메서드는 UIViewController Extensions에서 구현하였습니다. 
    
14. AppDelegate에서 Orientation의 설정을 위해 뷰 컨트롤러에서 상태 값을 받기 위한 프로퍼티를 생성하였습니다. 
    - 또한 해당 상태 값을 처리하기 위해 UIViewController Extensions을 따로 만들어 delegate.isActivatedOnlyPortrait = isActivated로 상태 값을 받을 수 있는 함수를 생성하였습니다. 

15. Dynamic Type, LineBreakMode, LineBreakStrategy
    - UILabel 속성 설정에서 adjustsFontForContentSizeCategory = true 추가
    - .lineBreakStrategy = .hangulWordPriority 한글 우선 순위 추가
    - .lineBreakMode = .byCharWrapping char단위로 LineBreak 추가

16. ReuseIdentifying 프로토콜을 만들어서 TableViewCell이 채택하였습니다.
    - 해당 프로토콜을 채택하면 TableViewCell의 타입 이름을 identifier로 받아서 간편하게 사용할 수 있습니다.
    
17. font title
    - setTitle 함수로 Label 글자중 강조되어야할 부분이 있으면 처리해주는 기능 구현

## 참고 링크

[automaticdimension - TableView](https://developer.apple.com/documentation/uikit/uitableview/1614961-automaticdimension)

[prepareForReuse() - TableView](https://developer.apple.com/documentation/uikit/uitableviewcell/1623223-prepareforreuse)

[dequeueReusableCell(withIdentifier:) - TableView](https://developer.apple.com/documentation/uikit/uitableview/1614891-dequeuereusablecell)

[prepareForReuse() - TableView](https://developer.apple.com/documentation/uikit/uitableviewcell/1623223-prepareforreuse)

[Filling a Table with Data - TableView](https://developer.apple.com/documentation/uikit/views_and_controls/table_views/filling_a_table_with_data)

[unavailable - Keyword](https://www.jessesquires.com/blog/2020/05/20/marking-unused-required-initializers-as-unavailable/)

[Methods](https://docs.swift.org/swift-book/LanguageGuide/Methods.html)

[The Basics](https://docs.swift.org/swift-book/LanguageGuide/TheBasics.html)

[Methods](https://www.notion.so/Methods-b52ed9c34167446c9e87429fa5c96223#d6fda47aef7e4935b9c71667ea1eeb7c)

[TableView](https://mini-min-dev.tistory.com/20)

[TableView](https://shark-sea.kr/entry/iOS-TableView-Code%EB%A1%9C-%EA%B5%AC%ED%98%84%ED%95%98%EA%B8%B0)

[StackView](https://worldseawater.tistory.com/92)

[ScrollView](https://jubakong.medium.com/swift-ios-scrollview%EB%A5%BC-%EC%8D%A8%EB%B3%B4%EC%9E%90-2-82bc2569c972)

[Linebreak](https://archijude.tistory.com/340)

[lineBrakeStrategy](https://developer.apple.com/documentation/uikit/nsparagraphstyle/3667463-linebreakstrategy)

[lineBreakMode](https://developer.apple.com/documentation/uikit/uilabel/1620525-linebreakmode)

[max() - Method](https://developer.apple.com/documentation/swift/max(_:_:))

[Orientation](https://karzin.tistory.com/192)

[DynamicType](https://velog.io/@minni/Dynamic-Type-egjn26z5)
