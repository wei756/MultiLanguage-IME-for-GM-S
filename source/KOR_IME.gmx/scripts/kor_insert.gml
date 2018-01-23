//kor_insert(text)
var te = argument0;

if (string_length(kor_string) == 0)
{
    kor_string = te;
    kor_cursor += string_length(te);
}
else
{
    kor_string = string_insert(te, kor_string, kor_cursor + 1);
    kor_cursor += string_length(te);
}
