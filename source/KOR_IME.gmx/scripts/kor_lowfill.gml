///kor_lowfill(text)
//lower filler
//한글에서 쓰이지 않는 문자를 필터링합니다.(Shift+ㄴ, Shift+ㅏ 등등...)
var _result = argument0;

for(var _i = 0; _i < array_length_1d(_nohan); _i++)
{
    _result = string_replace_all(_result, _nohan[_i], string_lower(_nohan[_i]));
}
return _result;
