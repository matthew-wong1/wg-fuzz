struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: Struct_2,
    e: vec4<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_5 {
    a: Struct_1,
    b: bool,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(vec3<bool>(true, false, false), false, true), Struct_1(vec3<bool>(true, true, true), false, true), Struct_1(vec3<bool>(false, true, true), false, false), Struct_1(vec3<bool>(false, true, true), true, false), Struct_1(vec3<bool>(false, true, true), false, true), Struct_1(vec3<bool>(true, false, true), true, true), Struct_1(vec3<bool>(true, false, false), false, false), Struct_1(vec3<bool>(true, false, true), false, true), Struct_1(vec3<bool>(true, false, true), true, true), Struct_1(vec3<bool>(false, false, false), true, false), Struct_1(vec3<bool>(true, true, true), false, true), Struct_1(vec3<bool>(false, true, false), false, true), Struct_1(vec3<bool>(false, true, false), true, true), Struct_1(vec3<bool>(true, true, true), false, false), Struct_1(vec3<bool>(false, false, false), false, false), Struct_1(vec3<bool>(false, false, true), false, false), Struct_1(vec3<bool>(true, true, true), false, false), Struct_1(vec3<bool>(true, true, false), false, true), Struct_1(vec3<bool>(true, false, true), true, false), Struct_1(vec3<bool>(true, true, false), false, true), Struct_1(vec3<bool>(true, true, true), false, true), Struct_1(vec3<bool>(false, true, false), false, true), Struct_1(vec3<bool>(true, false, true), false, false), Struct_1(vec3<bool>(false, true, false), false, false));

var<private> global2: array<Struct_4, 15> = array<Struct_4, 15>(Struct_4(Struct_3(Struct_1(vec3<bool>(true, false, false), true, true), Struct_1(vec3<bool>(false, true, true), true, true), false, Struct_2(Struct_1(vec3<bool>(true, true, true), false, false), vec3<f32>(935f, -1375f, -1495f), Struct_1(vec3<bool>(false, true, false), true, true), Struct_1(vec3<bool>(true, true, false), false, true), Struct_1(vec3<bool>(true, false, true), true, false)), vec4<bool>(false, false, false, true)), Struct_3(Struct_1(vec3<bool>(true, true, true), true, false), Struct_1(vec3<bool>(false, false, true), true, true), false, Struct_2(Struct_1(vec3<bool>(true, true, true), true, true), vec3<f32>(-456f, 187f, 964f), Struct_1(vec3<bool>(true, true, true), true, true), Struct_1(vec3<bool>(true, false, true), true, false), Struct_1(vec3<bool>(false, true, false), true, false)), vec4<bool>(false, false, false, false)), Struct_2(Struct_1(vec3<bool>(true, true, false), true, false), vec3<f32>(-1467f, -991f, -862f), Struct_1(vec3<bool>(false, true, true), true, true), Struct_1(vec3<bool>(true, true, false), true, true), Struct_1(vec3<bool>(true, true, true), false, true)), Struct_2(Struct_1(vec3<bool>(false, true, false), false, false), vec3<f32>(910f, -1797f, -588f), Struct_1(vec3<bool>(false, true, false), false, false), Struct_1(vec3<bool>(false, true, true), false, true), Struct_1(vec3<bool>(false, true, true), false, false))), Struct_4(Struct_3(Struct_1(vec3<bool>(false, false, true), true, false), Struct_1(vec3<bool>(true, true, true), false, true), true, Struct_2(Struct_1(vec3<bool>(true, false, true), false, true), vec3<f32>(261f, 181f, -448f), Struct_1(vec3<bool>(true, true, true), true, true), Struct_1(vec3<bool>(false, true, true), false, false), Struct_1(vec3<bool>(true, true, false), true, false)), vec4<bool>(false, false, true, false)), Struct_3(Struct_1(vec3<bool>(false, true, true), false, true), Struct_1(vec3<bool>(true, true, false), false, false), true, Struct_2(Struct_1(vec3<bool>(true, false, true), true, false), vec3<f32>(992f, 1632f, 609f), Struct_1(vec3<bool>(false, true, true), false, false), Struct_1(vec3<bool>(false, true, true), false, false), Struct_1(vec3<bool>(false, false, false), false, false)), vec4<bool>(true, true, false, false)), Struct_2(Struct_1(vec3<bool>(true, false, true), false, false), vec3<f32>(996f, -1078f, -518f), Struct_1(vec3<bool>(false, true, true), true, false), Struct_1(vec3<bool>(false, false, false), true, true), Struct_1(vec3<bool>(false, true, true), true, false)), Struct_2(Struct_1(vec3<bool>(true, false, true), true, true), vec3<f32>(179f, 456f, 533f), Struct_1(vec3<bool>(false, true, true), true, false), Struct_1(vec3<bool>(true, false, true), true, true), Struct_1(vec3<bool>(true, false, false), false, true))), Struct_4(Struct_3(Struct_1(vec3<bool>(false, true, true), true, false), Struct_1(vec3<bool>(true, false, true), true, true), false, Struct_2(Struct_1(vec3<bool>(false, true, true), true, false), vec3<f32>(451f, 333f, -405f), Struct_1(vec3<bool>(false, false, false), false, true), Struct_1(vec3<bool>(true, true, false), true, false), Struct_1(vec3<bool>(false, false, true), false, false)), vec4<bool>(false, false, true, false)), Struct_3(Struct_1(vec3<bool>(false, false, true), false, false), Struct_1(vec3<bool>(true, false, false), true, false), true, Struct_2(Struct_1(vec3<bool>(false, false, true), false, false), vec3<f32>(1020f, -607f, 830f), Struct_1(vec3<bool>(true, false, true), false, true), Struct_1(vec3<bool>(false, false, true), false, false), Struct_1(vec3<bool>(false, false, true), false, false)), vec4<bool>(false, false, false, true)), Struct_2(Struct_1(vec3<bool>(false, true, true), false, false), vec3<f32>(-163f, -164f, -297f), Struct_1(vec3<bool>(false, true, true), false, true), Struct_1(vec3<bool>(true, true, true), true, false), Struct_1(vec3<bool>(true, false, false), true, false)), Struct_2(Struct_1(vec3<bool>(true, false, true), false, true), vec3<f32>(1754f, -159f, 225f), Struct_1(vec3<bool>(true, false, true), true, true), Struct_1(vec3<bool>(false, true, true), false, false), Struct_1(vec3<bool>(false, true, false), true, false))), Struct_4(Struct_3(Struct_1(vec3<bool>(false, false, false), true, false), Struct_1(vec3<bool>(false, true, false), false, false), false, Struct_2(Struct_1(vec3<bool>(false, false, false), true, false), vec3<f32>(1083f, -941f, -321f), Struct_1(vec3<bool>(false, true, true), false, false), Struct_1(vec3<bool>(true, true, true), true, false), Struct_1(vec3<bool>(true, true, false), true, false)), vec4<bool>(true, false, true, false)), Struct_3(Struct_1(vec3<bool>(true, true, false), true, true), Struct_1(vec3<bool>(true, true, false), false, false), false, Struct_2(Struct_1(vec3<bool>(true, true, true), false, false), vec3<f32>(516f, 783f, 1000f), Struct_1(vec3<bool>(false, false, false), true, true), Struct_1(vec3<bool>(true, true, false), false, true), Struct_1(vec3<bool>(true, true, true), true, true)), vec4<bool>(true, false, true, false)), Struct_2(Struct_1(vec3<bool>(false, true, false), false, false), vec3<f32>(397f, 899f, 1083f), Struct_1(vec3<bool>(false, false, true), false, true), Struct_1(vec3<bool>(true, false, false), true, false), Struct_1(vec3<bool>(false, false, false), false, true)), Struct_2(Struct_1(vec3<bool>(false, false, false), false, false), vec3<f32>(-1166f, 573f, 1110f), Struct_1(vec3<bool>(true, true, true), false, false), Struct_1(vec3<bool>(false, true, true), false, true), Struct_1(vec3<bool>(false, true, false), false, false))), Struct_4(Struct_3(Struct_1(vec3<bool>(false, false, false), true, false), Struct_1(vec3<bool>(true, true, false), false, false), false, Struct_2(Struct_1(vec3<bool>(false, false, true), false, true), vec3<f32>(-1842f, 1000f, 978f), Struct_1(vec3<bool>(true, false, true), true, false), Struct_1(vec3<bool>(true, true, true), true, false), Struct_1(vec3<bool>(false, true, true), false, false)), vec4<bool>(false, true, false, true)), Struct_3(Struct_1(vec3<bool>(true, true, false), true, false), Struct_1(vec3<bool>(false, false, true), true, false), true, Struct_2(Struct_1(vec3<bool>(true, true, false), false, true), vec3<f32>(-609f, 715f, -1121f), Struct_1(vec3<bool>(true, true, false), false, false), Struct_1(vec3<bool>(true, false, true), false, false), Struct_1(vec3<bool>(true, false, false), true, false)), vec4<bool>(true, true, true, false)), Struct_2(Struct_1(vec3<bool>(true, false, true), true, true), vec3<f32>(317f, 457f, 1057f), Struct_1(vec3<bool>(false, true, false), false, true), Struct_1(vec3<bool>(false, false, false), false, true), Struct_1(vec3<bool>(true, true, true), true, true)), Struct_2(Struct_1(vec3<bool>(false, true, true), false, true), vec3<f32>(-2201f, 873f, 1553f), Struct_1(vec3<bool>(true, true, false), true, true), Struct_1(vec3<bool>(true, false, true), true, true), Struct_1(vec3<bool>(false, false, false), false, false))), Struct_4(Struct_3(Struct_1(vec3<bool>(true, true, false), false, true), Struct_1(vec3<bool>(true, false, true), false, false), true, Struct_2(Struct_1(vec3<bool>(false, false, true), false, false), vec3<f32>(-141f, 363f, -1318f), Struct_1(vec3<bool>(true, false, false), true, true), Struct_1(vec3<bool>(false, true, false), true, true), Struct_1(vec3<bool>(true, false, false), true, true)), vec4<bool>(true, false, false, true)), Struct_3(Struct_1(vec3<bool>(false, true, false), false, true), Struct_1(vec3<bool>(true, false, false), true, true), false, Struct_2(Struct_1(vec3<bool>(false, true, false), true, true), vec3<f32>(599f, 1405f, 1000f), Struct_1(vec3<bool>(true, true, false), true, false), Struct_1(vec3<bool>(true, true, false), true, false), Struct_1(vec3<bool>(false, true, false), false, true)), vec4<bool>(true, false, true, false)), Struct_2(Struct_1(vec3<bool>(true, true, true), false, true), vec3<f32>(-1337f, -297f, -1164f), Struct_1(vec3<bool>(true, true, false), false, false), Struct_1(vec3<bool>(false, true, true), false, false), Struct_1(vec3<bool>(false, true, false), false, false)), Struct_2(Struct_1(vec3<bool>(true, true, false), true, false), vec3<f32>(2077f, -1979f, -401f), Struct_1(vec3<bool>(true, true, false), false, false), Struct_1(vec3<bool>(false, true, true), false, true), Struct_1(vec3<bool>(false, false, false), true, true))), Struct_4(Struct_3(Struct_1(vec3<bool>(true, false, true), false, false), Struct_1(vec3<bool>(true, true, false), true, false), true, Struct_2(Struct_1(vec3<bool>(true, false, false), false, false), vec3<f32>(-759f, 1046f, 1507f), Struct_1(vec3<bool>(false, false, false), true, false), Struct_1(vec3<bool>(true, false, false), false, false), Struct_1(vec3<bool>(false, true, false), true, false)), vec4<bool>(true, true, false, false)), Struct_3(Struct_1(vec3<bool>(false, false, true), false, false), Struct_1(vec3<bool>(true, true, true), true, true), true, Struct_2(Struct_1(vec3<bool>(true, false, true), true, true), vec3<f32>(-749f, -449f, -642f), Struct_1(vec3<bool>(false, true, false), false, true), Struct_1(vec3<bool>(true, false, true), true, true), Struct_1(vec3<bool>(false, false, true), false, false)), vec4<bool>(true, false, false, false)), Struct_2(Struct_1(vec3<bool>(true, false, true), false, true), vec3<f32>(-2264f, -396f, -205f), Struct_1(vec3<bool>(true, true, false), false, true), Struct_1(vec3<bool>(false, true, false), false, false), Struct_1(vec3<bool>(false, false, false), false, true)), Struct_2(Struct_1(vec3<bool>(true, true, true), false, true), vec3<f32>(-1000f, 1590f, -629f), Struct_1(vec3<bool>(true, true, true), false, true), Struct_1(vec3<bool>(false, false, false), false, false), Struct_1(vec3<bool>(false, false, false), false, true))), Struct_4(Struct_3(Struct_1(vec3<bool>(false, true, false), false, false), Struct_1(vec3<bool>(true, true, true), false, false), true, Struct_2(Struct_1(vec3<bool>(false, false, true), true, false), vec3<f32>(-955f, 277f, 577f), Struct_1(vec3<bool>(false, true, true), true, false), Struct_1(vec3<bool>(false, false, false), false, false), Struct_1(vec3<bool>(true, true, true), true, true)), vec4<bool>(true, false, true, false)), Struct_3(Struct_1(vec3<bool>(true, false, true), false, true), Struct_1(vec3<bool>(false, false, false), true, true), true, Struct_2(Struct_1(vec3<bool>(true, true, false), true, false), vec3<f32>(797f, 726f, 257f), Struct_1(vec3<bool>(true, false, true), false, false), Struct_1(vec3<bool>(false, false, true), false, false), Struct_1(vec3<bool>(false, true, false), false, false)), vec4<bool>(false, true, true, true)), Struct_2(Struct_1(vec3<bool>(false, false, false), true, true), vec3<f32>(523f, -1000f, -318f), Struct_1(vec3<bool>(true, false, false), true, true), Struct_1(vec3<bool>(false, false, false), true, true), Struct_1(vec3<bool>(false, true, true), true, true)), Struct_2(Struct_1(vec3<bool>(true, false, true), true, true), vec3<f32>(-651f, 1162f, 150f), Struct_1(vec3<bool>(true, true, true), true, true), Struct_1(vec3<bool>(false, true, true), false, false), Struct_1(vec3<bool>(true, false, true), false, true))), Struct_4(Struct_3(Struct_1(vec3<bool>(false, true, true), true, false), Struct_1(vec3<bool>(true, true, true), true, false), true, Struct_2(Struct_1(vec3<bool>(true, false, false), true, true), vec3<f32>(327f, 693f, -362f), Struct_1(vec3<bool>(false, false, false), false, true), Struct_1(vec3<bool>(false, true, true), false, true), Struct_1(vec3<bool>(true, true, false), true, true)), vec4<bool>(false, false, true, false)), Struct_3(Struct_1(vec3<bool>(false, true, true), true, false), Struct_1(vec3<bool>(false, false, false), false, false), true, Struct_2(Struct_1(vec3<bool>(false, false, true), true, true), vec3<f32>(-1623f, 1000f, -559f), Struct_1(vec3<bool>(true, false, false), false, true), Struct_1(vec3<bool>(true, true, false), false, false), Struct_1(vec3<bool>(false, false, false), true, false)), vec4<bool>(true, false, true, true)), Struct_2(Struct_1(vec3<bool>(false, false, true), true, false), vec3<f32>(-1124f, -692f, -1000f), Struct_1(vec3<bool>(true, true, true), false, false), Struct_1(vec3<bool>(false, true, true), false, true), Struct_1(vec3<bool>(false, true, false), false, true)), Struct_2(Struct_1(vec3<bool>(true, true, true), true, false), vec3<f32>(1397f, -101f, 542f), Struct_1(vec3<bool>(true, true, true), false, false), Struct_1(vec3<bool>(true, false, true), true, true), Struct_1(vec3<bool>(true, false, true), true, false))), Struct_4(Struct_3(Struct_1(vec3<bool>(true, false, true), true, false), Struct_1(vec3<bool>(false, false, false), false, true), true, Struct_2(Struct_1(vec3<bool>(false, true, false), false, true), vec3<f32>(1466f, 971f, -271f), Struct_1(vec3<bool>(true, true, false), true, false), Struct_1(vec3<bool>(true, true, true), false, false), Struct_1(vec3<bool>(true, true, false), true, true)), vec4<bool>(true, true, false, false)), Struct_3(Struct_1(vec3<bool>(true, true, true), false, true), Struct_1(vec3<bool>(true, false, true), false, false), false, Struct_2(Struct_1(vec3<bool>(true, false, true), false, true), vec3<f32>(-675f, -1548f, 1221f), Struct_1(vec3<bool>(true, false, false), true, true), Struct_1(vec3<bool>(false, true, true), true, false), Struct_1(vec3<bool>(true, true, false), true, true)), vec4<bool>(true, true, true, true)), Struct_2(Struct_1(vec3<bool>(false, false, false), false, false), vec3<f32>(1498f, 1069f, 2138f), Struct_1(vec3<bool>(false, true, true), false, false), Struct_1(vec3<bool>(false, false, true), false, true), Struct_1(vec3<bool>(false, true, false), true, true)), Struct_2(Struct_1(vec3<bool>(false, false, true), true, true), vec3<f32>(-119f, 442f, -112f), Struct_1(vec3<bool>(false, false, true), false, false), Struct_1(vec3<bool>(true, false, false), false, true), Struct_1(vec3<bool>(true, false, false), false, true))), Struct_4(Struct_3(Struct_1(vec3<bool>(true, true, false), false, true), Struct_1(vec3<bool>(true, false, false), false, false), true, Struct_2(Struct_1(vec3<bool>(false, false, false), false, false), vec3<f32>(487f, 976f, 1388f), Struct_1(vec3<bool>(true, true, true), false, true), Struct_1(vec3<bool>(false, true, true), false, true), Struct_1(vec3<bool>(true, true, false), true, true)), vec4<bool>(false, true, false, false)), Struct_3(Struct_1(vec3<bool>(false, true, true), true, false), Struct_1(vec3<bool>(false, false, true), false, false), true, Struct_2(Struct_1(vec3<bool>(true, true, false), false, true), vec3<f32>(1316f, -695f, 736f), Struct_1(vec3<bool>(true, false, false), true, true), Struct_1(vec3<bool>(true, true, true), false, true), Struct_1(vec3<bool>(true, false, true), false, true)), vec4<bool>(false, true, true, false)), Struct_2(Struct_1(vec3<bool>(true, true, true), false, false), vec3<f32>(151f, 1000f, -1106f), Struct_1(vec3<bool>(false, true, false), true, true), Struct_1(vec3<bool>(true, false, false), false, true), Struct_1(vec3<bool>(false, false, true), false, true)), Struct_2(Struct_1(vec3<bool>(false, true, false), false, true), vec3<f32>(1323f, 572f, -184f), Struct_1(vec3<bool>(true, true, false), true, true), Struct_1(vec3<bool>(true, true, true), true, true), Struct_1(vec3<bool>(false, false, true), true, false))), Struct_4(Struct_3(Struct_1(vec3<bool>(true, false, true), false, false), Struct_1(vec3<bool>(true, false, true), true, true), false, Struct_2(Struct_1(vec3<bool>(true, false, false), false, true), vec3<f32>(141f, -1641f, -2483f), Struct_1(vec3<bool>(false, true, true), true, true), Struct_1(vec3<bool>(true, false, true), false, true), Struct_1(vec3<bool>(false, false, true), false, false)), vec4<bool>(true, true, false, true)), Struct_3(Struct_1(vec3<bool>(false, true, true), false, true), Struct_1(vec3<bool>(true, false, false), true, true), false, Struct_2(Struct_1(vec3<bool>(false, true, false), true, false), vec3<f32>(779f, 581f, -1969f), Struct_1(vec3<bool>(true, true, false), false, true), Struct_1(vec3<bool>(false, true, true), false, false), Struct_1(vec3<bool>(true, false, true), true, false)), vec4<bool>(true, true, true, false)), Struct_2(Struct_1(vec3<bool>(true, false, false), false, true), vec3<f32>(663f, 1190f, 498f), Struct_1(vec3<bool>(false, true, true), true, false), Struct_1(vec3<bool>(false, true, true), false, true), Struct_1(vec3<bool>(true, true, false), true, true)), Struct_2(Struct_1(vec3<bool>(false, false, true), true, true), vec3<f32>(607f, 2042f, -2001f), Struct_1(vec3<bool>(true, false, true), false, false), Struct_1(vec3<bool>(false, true, false), true, true), Struct_1(vec3<bool>(false, false, false), false, false))), Struct_4(Struct_3(Struct_1(vec3<bool>(false, false, true), false, true), Struct_1(vec3<bool>(false, false, false), false, false), false, Struct_2(Struct_1(vec3<bool>(true, false, false), false, true), vec3<f32>(321f, -1110f, -1151f), Struct_1(vec3<bool>(true, true, true), false, false), Struct_1(vec3<bool>(true, true, false), false, true), Struct_1(vec3<bool>(true, true, false), true, true)), vec4<bool>(true, true, true, false)), Struct_3(Struct_1(vec3<bool>(false, true, false), true, true), Struct_1(vec3<bool>(false, true, false), false, true), true, Struct_2(Struct_1(vec3<bool>(true, false, false), true, true), vec3<f32>(-519f, 171f, -2155f), Struct_1(vec3<bool>(false, true, true), false, true), Struct_1(vec3<bool>(true, false, true), false, false), Struct_1(vec3<bool>(true, false, true), true, true)), vec4<bool>(false, false, true, false)), Struct_2(Struct_1(vec3<bool>(false, true, false), false, true), vec3<f32>(370f, 318f, -888f), Struct_1(vec3<bool>(false, false, true), false, false), Struct_1(vec3<bool>(true, false, false), false, false), Struct_1(vec3<bool>(false, true, true), true, true)), Struct_2(Struct_1(vec3<bool>(false, true, false), true, true), vec3<f32>(757f, 711f, -799f), Struct_1(vec3<bool>(false, false, false), false, true), Struct_1(vec3<bool>(true, true, false), false, true), Struct_1(vec3<bool>(true, true, false), true, true))), Struct_4(Struct_3(Struct_1(vec3<bool>(true, false, false), true, false), Struct_1(vec3<bool>(true, false, false), false, false), false, Struct_2(Struct_1(vec3<bool>(true, false, true), true, false), vec3<f32>(928f, 1428f, -1092f), Struct_1(vec3<bool>(false, true, false), true, false), Struct_1(vec3<bool>(false, true, true), false, true), Struct_1(vec3<bool>(false, true, false), false, false)), vec4<bool>(true, true, false, false)), Struct_3(Struct_1(vec3<bool>(true, true, false), false, false), Struct_1(vec3<bool>(true, false, true), false, false), false, Struct_2(Struct_1(vec3<bool>(true, false, true), false, true), vec3<f32>(-549f, 761f, 158f), Struct_1(vec3<bool>(false, false, false), true, false), Struct_1(vec3<bool>(false, false, false), true, true), Struct_1(vec3<bool>(true, true, false), true, false)), vec4<bool>(false, false, false, true)), Struct_2(Struct_1(vec3<bool>(true, true, true), false, true), vec3<f32>(-321f, 741f, 1787f), Struct_1(vec3<bool>(false, true, false), true, true), Struct_1(vec3<bool>(true, true, true), false, true), Struct_1(vec3<bool>(false, false, true), false, false)), Struct_2(Struct_1(vec3<bool>(true, true, false), false, false), vec3<f32>(230f, 443f, -674f), Struct_1(vec3<bool>(false, true, true), true, true), Struct_1(vec3<bool>(true, false, true), false, false), Struct_1(vec3<bool>(true, false, true), false, true))), Struct_4(Struct_3(Struct_1(vec3<bool>(false, false, true), true, true), Struct_1(vec3<bool>(false, false, true), true, true), false, Struct_2(Struct_1(vec3<bool>(true, false, true), false, true), vec3<f32>(1299f, -1777f, 972f), Struct_1(vec3<bool>(false, false, false), true, true), Struct_1(vec3<bool>(false, true, false), true, false), Struct_1(vec3<bool>(true, false, false), true, false)), vec4<bool>(false, false, false, true)), Struct_3(Struct_1(vec3<bool>(true, false, true), false, true), Struct_1(vec3<bool>(true, false, false), true, true), false, Struct_2(Struct_1(vec3<bool>(false, false, true), true, true), vec3<f32>(153f, -1000f, 2287f), Struct_1(vec3<bool>(true, false, true), true, false), Struct_1(vec3<bool>(true, true, true), true, false), Struct_1(vec3<bool>(true, true, true), true, false)), vec4<bool>(false, true, true, true)), Struct_2(Struct_1(vec3<bool>(true, false, false), false, true), vec3<f32>(-629f, -471f, -667f), Struct_1(vec3<bool>(false, false, false), true, true), Struct_1(vec3<bool>(false, false, false), true, true), Struct_1(vec3<bool>(true, true, true), true, true)), Struct_2(Struct_1(vec3<bool>(true, true, false), true, true), vec3<f32>(-377f, -1369f, 837f), Struct_1(vec3<bool>(true, false, true), false, true), Struct_1(vec3<bool>(false, true, true), false, true), Struct_1(vec3<bool>(true, false, true), false, true))));

var<private> global3: vec4<u32> = vec4<u32>(13437u, 0u, 1u, 4294967295u);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> u32 {
    let var_0 = -1000f;
    let var_1 = true;
    let var_2 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0, -1000f, var_0, _wgslsmith_f_op_f32(max(var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + var_0) + _wgslsmith_div_f32(610f, var_0)))))));
    let var_3 = false;
    let var_4 = true;
    return 18655u;
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: Struct_1, arg_3: i32) -> u32 {
    var var_0 = _wgslsmith_mult_i32(47137i, -((u_input.a | max(u_input.a, 3256i)) & _wgslsmith_sub_i32(abs(-89058i), max(-15142i, 17406i))));
    global2 = array<Struct_4, 15>();
    var var_1 = _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, arg_1, arg_1, func_3()), firstTrailingBit(~(~vec4<u32>(global3.x, arg_1, arg_0, 1u)))) ^ _wgslsmith_mult_u32(func_3(), 25905u);
    global3 = countOneBits(~_wgslsmith_clamp_vec4_u32(~vec4<u32>(arg_1, 54438u, 0u, 4294967295u), firstTrailingBit(vec4<u32>(global3.x, 56421u, 0u, 1069u)), _wgslsmith_div_vec4_u32(vec4<u32>(arg_1, 0u, 5146u, 24362u), vec4<u32>(global3.x, global3.x, arg_1, arg_1))) >> (~max(~vec4<u32>(arg_0, 0u, 4660u, global3.x), vec4<u32>(0u, global3.x, 50529u, 5993u)) % vec4<u32>(32u)));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-446f, _wgslsmith_f_op_f32(-162f + 479f), _wgslsmith_f_op_f32(min(555f, 1462f))) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-375f, 657f, 964f) + vec3<f32>(258f, 636f, -171f))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(938f, -350f, -595f) - vec3<f32>(335f, -434f, 1500f)) + vec3<f32>(-2054f, -724f, -1162f)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, 768f, 187f), vec3<f32>(401f, -2304f, -404f), vec3<bool>(true, true, false))))), arg_2.a)))) + vec3<f32>(-120f, _wgslsmith_f_op_f32(f32(-1f) * -490f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(-562f))))))));
    return global3.x;
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: u32, arg_3: vec4<bool>) -> f32 {
    global3 = vec4<u32>(~global3.x, _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, _wgslsmith_div_u32(global3.x, arg_2), func_2(global3.x, 4294967295u, Struct_1(arg_3.yww, false, false), u_input.a), _wgslsmith_mod_u32(global3.x, 0u)), vec4<u32>(global3.x, ~(~arg_2), 10595u, arg_2)), arg_2, reverseBits(_wgslsmith_mod_u32(1u, ~1u)));
    return _wgslsmith_f_op_f32(select(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-595f, 1f)))), any(vec3<bool>(arg_3.x, arg_1.b & (arg_3.x || false), !arg_3.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-681f, -1256f, 443f, -1000f))) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec2<i32>(u_input.a, u_input.a), global1[_wgslsmith_index_u32(1u, 24u)], global3.x, vec4<bool>(false, false, false, false))) + -172f), -650f, _wgslsmith_f_op_f32(step(1287f, -1242f)), -1056f)));
    var var_1 = select(abs(_wgslsmith_add_vec4_u32(~vec4<u32>(global3.x, 28642u, global3.x, 55165u), max(vec4<u32>(global3.x, global3.x, global3.x, global3.x), vec4<u32>(global3.x, global3.x, 59119u, 1u)))) >> ((~(~vec4<u32>(global3.x, global3.x, global3.x, global3.x)) & min(vec4<u32>(global3.x, 1u, 4402u, global3.x), ~vec4<u32>(24442u, global3.x, global3.x, global3.x))) % vec4<u32>(32u)), ~vec4<u32>(22569u >> (min(global3.x, global3.x) % 32u), _wgslsmith_add_u32(min(global3.x, 55018u), global3.x), global3.x, global3.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.x))) - -884f) <= -334f);
    var var_2 = vec2<bool>(all(vec4<bool>(!(u_input.a == 1i), true, true, !any(vec3<bool>(true, true, true)))), firstTrailingBit(30556u) >= 4294967295u);
    let var_3 = Struct_3(Struct_1(select(select(select(vec3<bool>(var_2.x, var_2.x, var_2.x), vec3<bool>(false, var_2.x, false), vec3<bool>(var_2.x, true, true)), select(vec3<bool>(false, var_2.x, var_2.x), vec3<bool>(true, var_2.x, var_2.x), vec3<bool>(var_2.x, true, var_2.x)), var_2.x), vec3<bool>(all(vec2<bool>(false, true)), !var_2.x, u_input.a < 25291i), !select(vec3<bool>(false, var_2.x, true), vec3<bool>(var_2.x, var_2.x, var_2.x), false)), false, true), global1[_wgslsmith_index_u32(11552u, 24u)], all(select(vec3<bool>(false, any(vec4<bool>(var_2.x, false, var_2.x, false)), var_2.x), !(!vec3<bool>(var_2.x, false, true)), true)), Struct_2(Struct_1(!(!vec3<bool>(var_2.x, var_2.x, false)), _wgslsmith_f_op_f32(var_0.x - var_0.x) != _wgslsmith_f_op_f32(ceil(var_0.x)), true | all(vec3<bool>(var_2.x, var_2.x, false))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-var_0.xzy), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.yww) * var_0.zxz), !(!var_2.x))), global1[_wgslsmith_index_u32(541u, 24u)], Struct_1(vec3<bool>(false, var_0.x <= 992f, var_2.x && false), true, true), global1[_wgslsmith_index_u32(func_2(max(56691u | global3.x, global3.x << (0u % 32u)), 4294967295u, global1[_wgslsmith_index_u32(global3.x | _wgslsmith_add_u32(var_1.x, 1u), 24u)], ~0i), 24u)]), select(vec4<bool>(var_2.x, var_2.x, u_input.a <= abs(u_input.a), select(var_2.x, true, false)), select(select(vec4<bool>(true, var_2.x, var_2.x, var_2.x), select(vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x), vec4<bool>(var_2.x, var_2.x, false, true), false), any(vec2<bool>(false, var_2.x))), !vec4<bool>(true, var_2.x, var_2.x, var_2.x), vec4<bool>(var_2.x, true && var_2.x, all(vec3<bool>(false, var_2.x, var_2.x)), var_0.x >= var_0.x)), select(select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, var_2.x, false, var_2.x), vec4<bool>(true, var_2.x, var_2.x, var_2.x)), !vec4<bool>(false, var_2.x, false, true), any(vec3<bool>(true, false, var_2.x))), vec4<bool>(1u == var_1.x, any(vec3<bool>(var_2.x, false, true)), all(vec4<bool>(var_2.x, var_2.x, true, var_2.x)), var_2.x), all(vec2<bool>(var_2.x, true)))));
    let var_4 = select(var_3.a.a.yx, var_3.d.e.a.xz, true && var_2.x);
    var var_5 = 0i;
    let var_6 = global1[_wgslsmith_index_u32(29854u, 24u)];
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a);
}

