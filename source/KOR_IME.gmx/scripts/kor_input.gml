///kor_input()
if !keyboard_check(vk_nokey)
    time = current_time;
if (keyboard_check_pressed(vk_anykey) || keyboard_check(vk_nokey) || prev_key != keyboard_lastkey) // 연속 키
    key_time = current_time;

if keyboard_check_pressed(kor_keyHan)
{
    if (kor_mode == "ko_kr")
    {
        kor_insert(text_eng_to_hangul(kor_buffer));
        kor_buffer = "";
        kor_mode = "en_us";
    }
    else
        kor_mode = "ko_kr";
}


// 단타
for(var i = 65; i <= 90; i++)
if keyboard_check_pressed(i)
{
    kor_buffer += chr(i + !keyboard_check(vk_shift) * 32);
}

if (keyboard_check_pressed(vk_anykey) && !(keyboard_key >= 65 && keyboard_key <= 90) && string_length(keyboard_string)) // 숫자, 특수기호 입력
{
    kor_buffer += keyboard_string;
    keyboard_string = "";
}

if keyboard_check_pressed(vk_backspace)
{
    if string_length(kor_buffer)
    {
        kor_buffer = string_delete(kor_buffer, string_length(kor_buffer), 1);
    }
    else
    {
        kor_string = string_delete(kor_string, kor_cursor, 1);
        kor_cursor = max(kor_cursor - 1, 0);
    }
}
if (kor_arrow)
{
    if (keyboard_check_pressed(vk_right) || keyboard_check_pressed(vk_left))
    {
        kor_insert(text_eng_to_hangul(kor_buffer));
        kor_buffer = "";
    }
    kor_cursor += keyboard_check_pressed(vk_right) - keyboard_check_pressed(vk_left);
    kor_cursor = clamp(kor_cursor, 0, string_length(kor_string));
}

// 연속
if (current_time - key_time > kor_longpress)
{
    for(var i = 65; i <= 90; i++)
    if keyboard_check(i)
    {
        kor_buffer += chr(i + !keyboard_check(vk_shift) * 32);
    }
    
    if (keyboard_check(vk_anykey) && !(keyboard_key >= 65 && keyboard_key <= 90) && string_length(keyboard_string)) // 숫자, 특수기호 입력
    {
        kor_buffer += keyboard_string;
        keyboard_string = "";
    }
    if keyboard_check(vk_backspace)
    {
        if string_length(kor_buffer)
        {
            kor_buffer = string_delete(kor_buffer, string_length(kor_buffer), 1);
        }
        else
        {
            kor_string = string_delete(kor_string, kor_cursor, 1);
            kor_cursor = max(kor_cursor - 1, 0);
        }
    }
    if (kor_arrow)
    {
        kor_cursor += keyboard_check(vk_right) - keyboard_check(vk_left);
        kor_cursor = clamp(kor_cursor, 0, string_length(kor_string));
    }
}
keyboard_string = "";
prev_key = keyboard_lastkey;
