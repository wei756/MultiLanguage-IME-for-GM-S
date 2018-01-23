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
    
    //case "ja_jp":
    //break;
}
