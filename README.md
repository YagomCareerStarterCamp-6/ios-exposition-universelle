## 만국박람회 프로젝트 저장소
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

## 실행 화면(기능 설명)

### 메인화면
> ExpositionPost  Json 파일 의 데이터들을 위해 ExpositionPostEntity 타입을 생성하여 데이터로 받아주었고 두개의 StackView 통해서 보여주었습니다


### 한국 출품작 리스트
> EntryEntity Json 파일의 데이터들을 위해 EntryEntity 타입을 생성하여 배열로 데이터를 받아주었고 해당 부분을 TableView를 통해서 리스트를 보여주었습니다.  


# 배경 
> JSON 포멧의 데이터와 매칭할 모델 타입을 구현

- Contents.json
```json
{
  "images" : [
    {
      "filename" : "bangjja~universal@1x.png",
      "idiom" : "universal",
      "scale" : "1x"
    },
    {
      "filename" : "bangjja~universal@2x.png",
      "idiom" : "universal",
      "scale" : "2x"
    },
    {
      "filename" : "bangjja~universal@3x.png",
      "idiom" : "universal",
      "scale" : "3x"
    }
  ],
  
  "info" : {
    "author" : "xcode",
    "version" : 1
  }
}
```
- items.json 

```json
[
	{
		"name":"직지심체요절",
		"image_name":"jikji",
		"short_desc":"백운화상 경한(景閑)이 1372년에 초록한 불교 서적",
		"desc":"《'백운화상초록불조직지심체요절》(白雲和尙抄錄佛祖直指心體要節)은 백운화상 경한(景閑)이 1372년에 초록한 불교 서적이다. 간단히 직지심체요절(直指心體要節) 또는 직지(直指, JUKJI)라고 부르기도 한다.\n\n1372년(공민왕 21)에 백운화상 경한이 임제종 18대 법손 석옥청공(石屋淸珙) 화상(和尙)으로부터 받아 온 《불조직지심체요절》을 증보하여 상·하 2권으로 엮은 것이다. 백운화상이 입적하고 3년 뒤인 1377년에 청주 흥덕사(興德寺)에서 금속활자로 찍어 낸 것이 초인본(初印本)이다. 이는 현존하는 금속활자로 인쇄된 책 중 가장 오래된 것이다. 금속활자본은 현재 하권만이 전해지고, 프랑스 국립도서관에 소장되어 있다. 고간본(古刊本)으로는 1378년 백운화상이 입적한 여주 취암사(鷲巖寺)에서 간행한 목판본이 있다. 목판본은 1992년 4월 20일 보물 제1132호로 지정되었고, 현재 한국학중앙연구원 장서각과 국립중앙도서관에 상하권 1책이 각각 소장되어 있다.\n\n중심 주제인 직지심체(直指心體)는 ‘직지인심견성성불(直指人心見性成佛)’이라는 오도(悟道)의 명구에서 따온 것이다. 그 뜻은 사람이 마음을 바르게 가졌을 때 그 심성이 곧 부처의 마음임을 깨닫게 된다는 뜻이다. 사람의 본성은 그 자체가 본시 청정하므로 선지식(善知識)의 도움에 의하여 자기 마음 속에서 그 심성이 자정(自淨)함을 깨닫고 늘 자수(自修)·자행(自行)하면 곧 불성(佛性)을 체득하여 자기 자신이 바로 법신(法身)이 되며, 자기 마음이 바로 불심이 된다는 요지이다.\n\n정식 명칭은 ‘백운화상초록불조직지심체요절’(白雲和尙抄錄佛祖直指心體要節)이며, 간략 서명은 ‘불조직지심체’(佛祖直指心體)이다. 판심제(版心題)는 직지(直指) 또는 심요(心要)이다. 간단히 '직지심체요절(直指心體要節)', '직지(直指)'로 불리며, 영어권에도 'Jikji'로 통용된다.\n\n흔히 직지심경(直指心經)으로도 불리는데, 불서(佛書) 중 직지는 경(經)이 아니라 요절(要節)이기 때문에 이는 잘못된 표현이다."
	},
```

# 작업내용

1. Codable을 채택하여 JSON 데이터와 매칭할 모델 타입 구현

2. 스네이크 케이스 또는 축약형인 JSON 키 값을 스위프트의 네이밍에 맞게 변환
```swift=
extension EntryEntity {
    enum CodingKeys: String, CodingKey {
        case name
        case imageName = "image_name"
        case shortDescription = "short_desc"
        case description
    }
}
```
- CodingKey 타입을 채택한 enum을 사용하여 JSON 키 값에 대칭

# 리뷰 노트 

1. Json 파일을 서버를 통해 파싱 받는 것이 아니라 strings file로 json 파일을 생성하여 파싱하는 방식일까요?/ 파일들 디렉토리를 프로젝트 내에 넣어서 경로를 읽어오는 방식일까요? 

2. Content.json 파일을 파싱할 필요가 있을까요? image 파일들을 Assets에 넣고 해당 이름들을 ImageView에 올리기만 하면 되는 것 아닌가요? 
