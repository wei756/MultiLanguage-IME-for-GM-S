# MultiLanguage-IME-for-GM-S
MultiLanguage IME for GM:S 1.4 by MK

![WOWW](https://github.com/w4ei756fg/MultiLanguage-IME-for-GM-S/blob/master/screenshot1.PNG)

----

# What's this?
로마자 이외의 문자를 게임메이커 프로젝트 내에서 입력하는 ```keyboard_string``` 변수를 대체하는 스크립트를 추가합니다.

-그외의 기능 

:```keyboard_string```을 ```kor_string```로 대체합니다.</br>
:화살표 키로 커서 이동이 가능합니다.</br>
:커서를 이동하여 문장 중간에 글자를 입력할 수 있습니다.</br>


-지원 자판

한글(Hangul) - 두벌식 표준<p>
영어(English) - US 배열 쿼티



It can make non-english character input in a gamemaker project.

:Replace ```keyboard_string``` with ```kor_string``` that can input non-english character<p>
:Scorll with arrow keys<p>
:Insert a text in the middle of the string<p>


-Supported character system

Korean(Hangul) - 2beol-sik standard<p>
English(US) - Qwerty





# Quick references

사용할 때 영어가 입력되는 상태로 놓으세요.
<p>
<변수>

```kor_string``` : keyboard_string을 대체합니다. 입력한 값이 여기에 저장됩니다.

```kor_cursor``` : kor_string에서 커서 위치를 나타냅니다.

```kor_arrow``` : 1이면 화살표키로 커서를 움직일 수 있고, 0이면 움직이지 않습니다.

```kor_buffer``` : 현재 조합중인 한글을 임시저장합니다. (보통 입력할 때 깜박이는 부분)

실제로 출력값을 뽑아낼 때는 kor_string + text_eng_to_hangul(kor_buffer)을 사용해야 합니다.

```kor_mode``` : 현재 입력 언어를 저장합니다.

```kor_longpress``` : 키보드를 길게 눌렀을 때 반복입력되는 딜레이를 설정합니다.(단위:ms, 기본값 500ms)

```kor_keyHan``` : 한영 전환용 키를 지정합니다. (기본값: vk_control)
<p>
<함수>

```ime_init()``` : 입력기 사용을 위한 변수 등을 초기화합니다. Create 이벤트에 넣습니다.

```kor_init()``` : 한글 입력을 위한 변수를 초기화합니다. Create 이벤트에 넣습니다.

```kor_gen()``` : 현재 입력 언어에 따라 맞는 스크립트로 스위치하는 기능을 합니다. Step 이벤트에 넣습니다.

```kor_insert(text)``` : 현재 입력 위치에 text를 삽입합니다.

```ime/kor_input()``` : 한글/영문 입력, 화살표 키 인식, 한영키(Ctrl키)를 인식하는 스크립트입니다. Step 이벤트에서 kor_gen() 위에 넣습니다. 

```ime/ime_hangul_2()``` : 두벌식 한글 입력을 처리합니다. 이걸 수정해 다른 자판(세벌식 등)이나 외국어 입력기능을 추가할 수 있습니다.

```ime/ime_english_qwerty()``` : 쿼티 방식의 영문 입력을 처리합니다;정확히는 keyboard_string의 값을 그대로 넘겨줍니다.

```text_eng_to_hangul(text)``` : 영문으로 된 text를 한글로 변환하여 반환합니다.


Set your windows ime to QWERTY.
