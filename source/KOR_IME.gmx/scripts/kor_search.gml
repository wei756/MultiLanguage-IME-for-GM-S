///kor_search(type, text)
var _t = argument0, _s = argument1;

for(var _i = array_length_2d(_han, _t) - 1; _i >= 0; _i--)
{
    if (_han[_t, _i] == string_copy(_s, 1, kor_leng(_t, _i)))
        return _i;
}
return -1;
