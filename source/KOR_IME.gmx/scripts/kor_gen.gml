///kor_gen()

//kor_buffer = keyboard_string; // 키보드 입력


switch(kor_mode)
{
    case "ko_kr": // 한글(Hangul)
        switch(kor_bul)
        {
            case "2": // 두벌식 표준
                kor_buffer = kor_lowfill(kor_buffer);
                ime_hangul_2();
            break;
            
            case "390": // 세벌식 390
            break;
        }
    break;
    
    case "en_us":
        ime_english_qwerty();
    break;
    
    case "ja_jp":
    break;
}


/*

var _input=argument0, _output=0, _outputbuffer, __cho=0, __jung=0, __jong=0, __result="", __a=0;//임시변수 선언

kor_init();//한글 초성, 중성, 종성 배열 정의
//kor_gen(eng_input) 영문을 한글로 변환

//
//ㄱ 1
//가 2
//간 3
//갆 4
//간하 5
var i;
for(i=0;i<=string_length(_input);i++){//글자 처음부터 끝까지 스캔
  switch(i){
    case 0://첫글자일경우
      var q;
      for(q=0;q<=18;q++;){
        if(ko_cho[q]=string_copy(string(_input),i,string_length(ko_cho[q]))){
          
          }
        }
      break
      
    case string_length(_input)://끝일경우
      break
      
    default://중간일경우
      break
    }
  }
*/
