///ime_init()

//입력기 공통 변수
kor_string = "";            // keyboard_string과 같은 기능
kor_cursor = 0;             // kor_buffer에서 처리가 끝난 문자가 kor_string에 삽입되는 위치
kor_arrow = 1;              // 0일 경우 kor_cursor를 kor_string의 길이에 고정, 1일 경우 화살표키로 kor_cursor를 조정 가능
kor_buffer = "";            // 현재 처리중인 문자열. 처리가 끝난 문자열은 kor_string의 kor_cursor위치에 삽입
kor_mode = "ko_kr";         // 입력기 언어
kor_longpress = 500;        // 길게 누르기 시간

// 커서 깜빡임
time = current_time;

// 연속 키 처리
key_time = current_time; 
prev_key = keyboard_lastkey;
