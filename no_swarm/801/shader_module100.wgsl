struct Struct_1 {
    a: vec2<f32>,
    b: bool,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: u32,
    d: vec4<f32>,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: Struct_2,
    d: vec3<i32>,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: f32 = 631f;

var<private> global2: array<Struct_2, 29> = array<Struct_2, 29>(Struct_2(vec4<f32>(-3169f, -1000f, 383f, 275f), Struct_1(vec2<f32>(-1000f, 1088f), true), 1u, vec4<f32>(1100f, 1530f, -311f, -259f)), Struct_2(vec4<f32>(-467f, -1282f, -704f, 1108f), Struct_1(vec2<f32>(-1000f, 1139f), false), 4294967295u, vec4<f32>(-1108f, 604f, 2300f, -294f)), Struct_2(vec4<f32>(-511f, -743f, 969f, -1067f), Struct_1(vec2<f32>(-633f, -2146f), true), 39572u, vec4<f32>(-1013f, -964f, -2007f, 1054f)), Struct_2(vec4<f32>(220f, -1423f, -190f, -126f), Struct_1(vec2<f32>(1885f, -629f), false), 65321u, vec4<f32>(1240f, 1000f, 1764f, -397f)), Struct_2(vec4<f32>(441f, -360f, -645f, 782f), Struct_1(vec2<f32>(464f, -562f), true), 0u, vec4<f32>(821f, 730f, -2121f, -1655f)), Struct_2(vec4<f32>(671f, -1220f, -859f, 2201f), Struct_1(vec2<f32>(1249f, -1134f), false), 1u, vec4<f32>(-1017f, 1000f, 1748f, 489f)), Struct_2(vec4<f32>(-1781f, 1558f, -1133f, 438f), Struct_1(vec2<f32>(-839f, 795f), true), 36152u, vec4<f32>(255f, -617f, 814f, 1000f)), Struct_2(vec4<f32>(-395f, -335f, 1145f, -944f), Struct_1(vec2<f32>(285f, -1182f), false), 1u, vec4<f32>(-1336f, -154f, 1000f, -331f)), Struct_2(vec4<f32>(-600f, -449f, 589f, -723f), Struct_1(vec2<f32>(555f, 584f), false), 1u, vec4<f32>(-598f, 848f, -146f, -571f)), Struct_2(vec4<f32>(-641f, -1000f, -418f, 461f), Struct_1(vec2<f32>(1000f, -481f), false), 15339u, vec4<f32>(501f, 351f, 392f, 539f)), Struct_2(vec4<f32>(-339f, 364f, -742f, 693f), Struct_1(vec2<f32>(2359f, -621f), true), 21156u, vec4<f32>(-1236f, -1923f, 1336f, -1586f)), Struct_2(vec4<f32>(-1889f, -1121f, 1847f, -864f), Struct_1(vec2<f32>(109f, -517f), false), 77314u, vec4<f32>(270f, -1182f, 1000f, 1436f)), Struct_2(vec4<f32>(-1266f, -1839f, -560f, 1991f), Struct_1(vec2<f32>(682f, -510f), false), 40843u, vec4<f32>(-154f, -1564f, 430f, 260f)), Struct_2(vec4<f32>(282f, -987f, -375f, -709f), Struct_1(vec2<f32>(-1030f, -619f), false), 33140u, vec4<f32>(2021f, -1945f, 2098f, 732f)), Struct_2(vec4<f32>(-991f, 948f, -951f, 532f), Struct_1(vec2<f32>(1438f, -1669f), true), 49027u, vec4<f32>(392f, -1156f, -2969f, 704f)), Struct_2(vec4<f32>(870f, -1100f, 1976f, -198f), Struct_1(vec2<f32>(555f, -800f), true), 27176u, vec4<f32>(338f, -672f, -409f, -1152f)), Struct_2(vec4<f32>(-256f, -1496f, 1621f, 703f), Struct_1(vec2<f32>(-326f, 153f), false), 0u, vec4<f32>(114f, 1393f, -1368f, 898f)), Struct_2(vec4<f32>(-1731f, -547f, -744f, 384f), Struct_1(vec2<f32>(260f, -336f), true), 7201u, vec4<f32>(-381f, 458f, -887f, 1167f)), Struct_2(vec4<f32>(-103f, 423f, 1708f, 1000f), Struct_1(vec2<f32>(1000f, -200f), false), 14120u, vec4<f32>(-710f, -504f, 596f, 704f)), Struct_2(vec4<f32>(-915f, 121f, 243f, 1337f), Struct_1(vec2<f32>(281f, 1000f), true), 0u, vec4<f32>(553f, -1000f, 1000f, 1580f)), Struct_2(vec4<f32>(561f, -458f, 221f, -468f), Struct_1(vec2<f32>(754f, -2401f), false), 4294967295u, vec4<f32>(-488f, -749f, 378f, -866f)), Struct_2(vec4<f32>(-909f, -306f, -1350f, -528f), Struct_1(vec2<f32>(-645f, -925f), false), 105901u, vec4<f32>(-335f, -347f, -425f, 811f)), Struct_2(vec4<f32>(-1000f, 189f, 143f, -127f), Struct_1(vec2<f32>(2438f, -697f), true), 1u, vec4<f32>(-123f, -1000f, -496f, -688f)), Struct_2(vec4<f32>(-970f, 2137f, -1908f, 2018f), Struct_1(vec2<f32>(953f, -993f), false), 10239u, vec4<f32>(-1000f, -152f, -220f, 192f)), Struct_2(vec4<f32>(-1000f, 724f, 1000f, -464f), Struct_1(vec2<f32>(-2348f, -169f), false), 4294967295u, vec4<f32>(-175f, 1260f, 732f, -815f)), Struct_2(vec4<f32>(959f, 223f, -821f, -419f), Struct_1(vec2<f32>(-311f, -650f), false), 0u, vec4<f32>(-472f, 1640f, -1633f, 137f)), Struct_2(vec4<f32>(-238f, -816f, -691f, 1342f), Struct_1(vec2<f32>(839f, 1000f), false), 27659u, vec4<f32>(-556f, -1000f, -194f, -610f)), Struct_2(vec4<f32>(-1135f, -1000f, -619f, 1000f), Struct_1(vec2<f32>(-1055f, 1309f), true), 0u, vec4<f32>(-1262f, -2197f, -1050f, -570f)), Struct_2(vec4<f32>(-1607f, 179f, -399f, 442f), Struct_1(vec2<f32>(358f, 791f), true), 34372u, vec4<f32>(-511f, -1452f, -495f, -309f)));

var<private> global3: Struct_2;

var<private> global4: i32;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: vec2<f32>) -> u32 {
    let var_0 = true;
    var var_1 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1548f, global0.b.a.x, 1330f))))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global0.d.x), _wgslsmith_f_op_f32(-global3.b.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_2.x, arg_2.x, true)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global3.a.zxw - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, global3.d.x, global0.d.x) * global3.d.ywz)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2675f, 159f, 1326f)))))));
    global4 = _wgslsmith_mod_i32(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(-(~u_input.b.zzw), select(u_input.b.zzx, u_input.b.zwx, select(vec3<bool>(true, arg_1.b, true), vec3<bool>(false, true, false), vec3<bool>(global0.b.b, false, global0.b.b)))), u_input.b.x), abs(-_wgslsmith_clamp_i32(~2147483647i, 57865i, 1i)));
    var var_2 = _wgslsmith_add_i32(min(~u_input.b.x, 52578i), 19547i);
    let var_3 = vec2<bool>(true, true);
    return global0.c;
}

fn func_2(arg_0: bool, arg_1: vec2<bool>) -> Struct_4 {
    global0 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1162f, -567f, _wgslsmith_f_op_f32(1342f * 1111f), 999f) * vec4<f32>(global0.b.a.x, _wgslsmith_f_op_f32(floor(766f)), _wgslsmith_f_op_f32(max(global3.a.x, global0.a.x)), _wgslsmith_f_op_f32(trunc(-1000f))))), global0.b, _wgslsmith_sub_u32(_wgslsmith_mult_u32(u_input.a.x, _wgslsmith_clamp_u32(~31489u, 4294967295u, ~u_input.c.x)), func_3(u_input.b.x, Struct_1(global3.a.zx, true), _wgslsmith_div_vec2_f32(global3.d.yw, _wgslsmith_f_op_vec2_f32(global0.d.wx + global0.a.yx)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -607f), 131f, _wgslsmith_f_op_f32(-119f + global3.b.a.x), _wgslsmith_f_op_f32(f32(-1f) * -1069f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global0.a + _wgslsmith_div_vec4_f32(vec4<f32>(global0.d.x, -953f, global0.b.a.x, global3.d.x), global0.a)) - vec4<f32>(_wgslsmith_f_op_f32(floor(global3.a.x)), _wgslsmith_f_op_f32(-338f + 331f), global3.b.a.x, _wgslsmith_f_op_f32(739f * 1000f)))));
    global4 = _wgslsmith_mult_i32(countOneBits(-u_input.b.x), firstLeadingBit(u_input.b.x));
    global1 = 632f;
    let var_0 = global3.c;
    global0 = Struct_2(global0.d, global0.b, firstLeadingBit(0u), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, global0.b.a.x, 1290f, global0.b.a.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.a.x, global3.b.a.x, 1321f, 493f)))))));
    return Struct_4(global3.b);
}

fn func_4(arg_0: Struct_4) -> vec4<f32> {
    var var_0 = arg_0;
    let var_1 = !(!vec3<bool>(global3.b.b, true, false));
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-global0.a.ww), global3.b.b);
    var_0 = arg_0;
    var var_3 = ~0i | select(~(~(-8520i)), 6949i, true || global3.b.b);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(global0.a * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global3.a * vec4<f32>(-502f, var_2.a.x, global0.b.a.x, var_2.a.x)) - vec4<f32>(-1177f, 1000f, 541f, global0.d.x))))));
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_4, arg_2: u32, arg_3: vec2<bool>) -> Struct_2 {
    global3 = Struct_2(_wgslsmith_f_op_vec4_f32(global3.d - vec4<f32>(320f, global0.a.x, 1543f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(1685f - 1132f), func_2(global0.b.b, arg_3).a.a.x))), Struct_1(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(1328f, global0.d.x) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, global0.b.a.x))), global0.b.a)), true), 0u, vec4<f32>(-700f, -1761f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_vec4_f32(func_4(Struct_4(Struct_1(global0.d.yx, global3.b.b)))).x)), func_2(true, vec2<bool>(!arg_3.x, 1i < u_input.b.x)).a.a.x));
    let var_0 = vec2<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a.a.x + _wgslsmith_f_op_f32(round(-498f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.b.a.x + -699f))) < _wgslsmith_f_op_f32(724f * arg_0.x), all(!select(select(vec3<bool>(false, arg_1.a.b, arg_1.a.b), vec3<bool>(false, true, arg_1.a.b), vec3<bool>(arg_3.x, true, global0.b.b)), select(vec3<bool>(arg_1.a.b, arg_1.a.b, arg_3.x), vec3<bool>(global3.b.b, false, arg_3.x), false), vec3<bool>(false, false, global0.b.b))));
    global2 = array<Struct_2, 29>();
    var var_1 = arg_1.a;
    var_1 = global3.b;
    return Struct_2(global0.a, Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(arg_0.xy)))), false), func_3(_wgslsmith_clamp_i32(u_input.b.x, countOneBits(i32(-1i) * -27669i), _wgslsmith_dot_vec3_i32(-u_input.b.wzx, _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, -1i), u_input.b.zxw))), arg_1.a, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-705f, arg_1.a.a.x))), -1355f)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1633f, arg_0.x, -231f, arg_1.a.a.x)) - vec4<f32>(-954f, var_1.a.x, -910f, 1271f))))));
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    global0 = func_5(_wgslsmith_f_op_vec4_f32(func_4(func_2(global0.b.b, select(!vec2<bool>(false, global3.b.b), select(vec2<bool>(arg_0.b, arg_0.b), vec2<bool>(arg_0.b, true), global0.b.b), any(vec4<bool>(global3.b.b, global0.b.b, arg_0.b, arg_0.b)))))), Struct_4(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global3.d.xz - global0.a.yw)), arg_0.b)), 4294967295u << (~global0.c % 32u), select(select(select(select(vec2<bool>(true, global0.b.b), vec2<bool>(global3.b.b, global3.b.b), true), vec2<bool>(global3.b.b, global3.b.b), !vec2<bool>(global0.b.b, arg_0.b)), vec2<bool>(true == global0.b.b, true), vec2<bool>(global3.b.b, global3.b.b | global3.b.b)), vec2<bool>(_wgslsmith_f_op_f32(global3.b.a.x - global3.b.a.x) != _wgslsmith_f_op_f32(max(arg_0.a.x, -1094f)), ~u_input.c.x >= global3.c), !select(!vec2<bool>(global0.b.b, true), select(vec2<bool>(arg_0.b, true), vec2<bool>(true, global3.b.b), true), true)));
    var var_0 = vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(select(u_input.a.x, 0u, arg_0.b), abs(0u), global0.c), vec3<u32>(~1u, 58666u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.c.x, global3.c), vec3<u32>(global0.c, global0.c, u_input.a.x)))) & ~28561u, global3.c);
    return arg_0;
}

fn func_6(arg_0: Struct_3, arg_1: i32) -> Struct_4 {
    global2 = array<Struct_2, 29>();
    global4 = abs(-91230i);
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-794f, 759f)));
    let var_1 = Struct_3(-38177i, _wgslsmith_f_op_f32(global3.a.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -210f))), func_5(vec4<f32>(_wgslsmith_f_op_f32(arg_0.c.b.a.x + _wgslsmith_f_op_f32(278f - global0.d.x)), _wgslsmith_f_op_f32(global3.a.x - _wgslsmith_f_op_f32(global3.d.x + arg_0.b)), global3.d.x, _wgslsmith_f_op_f32(abs(351f))), Struct_4(Struct_1(_wgslsmith_f_op_vec2_f32(arg_0.c.d.yz - arg_0.e.a), global0.b.b && false)), _wgslsmith_mod_u32(~_wgslsmith_sub_u32(arg_0.c.c, 0u), global0.c), vec2<bool>(all(select(vec3<bool>(false, global0.b.b, arg_0.e.b), vec3<bool>(global3.b.b, true, false), false)), arg_0.c.b.b)), arg_0.d & vec3<i32>(2147483647i, 0i, firstTrailingBit(~(-878i))), func_1(func_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global3.d + vec4<f32>(arg_0.c.a.x, global0.d.x, global3.a.x, global3.d.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(405f, global3.a.x, arg_0.e.a.x, global0.b.a.x))), Struct_4(Struct_1(vec2<f32>(arg_0.c.d.x, 699f), false)), 11436u, !vec2<bool>(global3.b.b, true)).b));
    global0 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-397f, -863f, -1814f, -1853f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(global0.a, vec4<f32>(-1480f, 1642f, global0.a.x, var_1.c.d.x))))) - _wgslsmith_f_op_vec4_f32(var_1.c.a - var_1.c.d)), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-func_1(global3.b).a.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1522f * global0.a.x), _wgslsmith_f_op_f32(-global3.a.x))), true), 1u, _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0, -1114f, global3.b.a.x, var_1.b))));
    return func_2(false, !vec2<bool>(select(true, true, true), any(vec4<bool>(var_1.e.b, global3.b.b, false, global3.b.b))));
}

fn func_7(arg_0: f32, arg_1: Struct_4) -> vec2<f32> {
    var var_0 = _wgslsmith_mod_vec2_i32(u_input.b.wx, u_input.b.yz);
    let var_1 = var_0.x;
    global0 = Struct_2(vec4<f32>(func_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global0.d * global3.d) * global0.a), func_6(Struct_3(u_input.b.x, arg_0, Struct_2(vec4<f32>(arg_0, arg_0, -515f, -1000f), global0.b, 1u, vec4<f32>(arg_0, 698f, arg_1.a.a.x, arg_1.a.a.x)), u_input.b.yyx, global3.b), -27118i), 118083u, select(select(vec2<bool>(false, global3.b.b), vec2<bool>(true, arg_1.a.b), global3.b.b), select(vec2<bool>(true, global0.b.b), vec2<bool>(true, global3.b.b), vec2<bool>(global3.b.b, global0.b.b)), true)).b.a.x, 895f, global3.a.x, _wgslsmith_f_op_f32(sign(1605f))), global0.b, global0.c, func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_1.a.a.x, global3.b.a.x, -678f)), _wgslsmith_f_op_vec4_f32(global3.d + global0.a)))), Struct_4(Struct_1(global3.d.zy, global0.b.b & false)), countOneBits(_wgslsmith_mod_u32(firstTrailingBit(u_input.c.x), firstLeadingBit(40510u))), vec2<bool>(global0.b.b, _wgslsmith_mod_i32(-2147483647i, u_input.b.x) >= ~u_input.b.x)).d);
    let var_2 = firstLeadingBit(_wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(countOneBits(u_input.b.xxz), u_input.b.yyy), vec3<i32>(1i, u_input.b.x, var_0.x << (global0.c % 32u)))) << (vec3<u32>(4294967295u, select(_wgslsmith_mod_u32(u_input.c.x ^ global0.c, 0u), _wgslsmith_mod_u32(_wgslsmith_add_u32(4294967295u, global0.c), ~global3.c), !all(vec4<bool>(true, false, arg_1.a.b, true))), global0.c) % vec3<u32>(32u));
    var var_3 = 0i;
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, -1223f));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = global3.b.a.x;
    let var_0 = _wgslsmith_sub_u32(_wgslsmith_sub_u32(global0.c, 65729u), ~4294967295u);
    var var_1 = _wgslsmith_f_op_vec2_f32(-global3.d.yy);
    global4 = u_input.b.x;
    let var_2 = select(!global0.b.b && (any(vec3<bool>(true, true, false)) == true), true, select(true, true, global3.b.b));
    let x = u_input.a;
    s_output = StorageBuffer(60377u, _wgslsmith_f_op_vec2_f32(func_7(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.x) - _wgslsmith_div_f32(-923f, -859f))), func_6(Struct_3(3150i, _wgslsmith_div_f32(-1000f, global3.a.x), Struct_2(global0.d, Struct_1(vec2<f32>(-1411f, global3.d.x), false), global0.c, global0.a), ~vec3<i32>(u_input.b.x, -1i, u_input.b.x), func_1(global3.b)), ~(u_input.b.x ^ u_input.b.x)))), _wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(u_input.b & u_input.b, ~vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, 15934i)), u_input.b));
}

