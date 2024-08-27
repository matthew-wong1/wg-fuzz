struct Struct_1 {
    a: vec2<f32>,
    b: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec4<f32>,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_2,
    c: f32,
    d: Struct_2,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_2, 22> = array<Struct_2, 22>(Struct_2(vec4<f32>(491f, 332f, -1051f, 827f), vec4<f32>(-506f, 983f, -1175f, -159f), i32(-2147483648), Struct_1(vec2<f32>(161f, -472f), 853f)), Struct_2(vec4<f32>(-407f, -756f, 2052f, -2292f), vec4<f32>(-149f, 124f, 1000f, 1204f), -2634i, Struct_1(vec2<f32>(-1049f, 857f), -1370f)), Struct_2(vec4<f32>(130f, -1199f, -1930f, 1898f), vec4<f32>(1000f, 1010f, 718f, -1000f), -1i, Struct_1(vec2<f32>(-468f, 2680f), -122f)), Struct_2(vec4<f32>(-1483f, -797f, 2673f, -1816f), vec4<f32>(821f, -811f, 735f, 748f), 1i, Struct_1(vec2<f32>(-722f, -248f), -334f)), Struct_2(vec4<f32>(642f, -1149f, 648f, 270f), vec4<f32>(-611f, 717f, -1082f, -455f), -11895i, Struct_1(vec2<f32>(142f, 1046f), -1250f)), Struct_2(vec4<f32>(796f, -970f, -538f, 1613f), vec4<f32>(1540f, 1296f, -1686f, -389f), 1i, Struct_1(vec2<f32>(1882f, 158f), -425f)), Struct_2(vec4<f32>(1199f, -940f, 510f, 1000f), vec4<f32>(294f, 826f, -135f, 421f), -3738i, Struct_1(vec2<f32>(1000f, -1553f), -750f)), Struct_2(vec4<f32>(353f, 703f, 344f, 667f), vec4<f32>(1383f, 772f, 945f, 1241f), 2147483647i, Struct_1(vec2<f32>(690f, -812f), 603f)), Struct_2(vec4<f32>(-443f, -361f, -433f, -825f), vec4<f32>(367f, 423f, -646f, 303f), -54480i, Struct_1(vec2<f32>(-1000f, -1505f), -641f)), Struct_2(vec4<f32>(-727f, -1292f, -1277f, 1286f), vec4<f32>(175f, 1565f, -664f, 2076f), 0i, Struct_1(vec2<f32>(-1705f, 1458f), 1187f)), Struct_2(vec4<f32>(744f, 821f, -344f, 1175f), vec4<f32>(931f, 1000f, 1760f, -403f), -40142i, Struct_1(vec2<f32>(1000f, 1716f), 638f)), Struct_2(vec4<f32>(-919f, 533f, -979f, 112f), vec4<f32>(463f, -860f, -138f, -171f), i32(-2147483648), Struct_1(vec2<f32>(109f, 930f), 987f)), Struct_2(vec4<f32>(951f, 1023f, -604f, -624f), vec4<f32>(274f, 772f, -961f, 1000f), 22431i, Struct_1(vec2<f32>(164f, -297f), -532f)), Struct_2(vec4<f32>(1583f, 164f, -1672f, -832f), vec4<f32>(-472f, -1718f, -1504f, 862f), -15805i, Struct_1(vec2<f32>(-493f, 341f), -772f)), Struct_2(vec4<f32>(-320f, -1011f, 392f, -596f), vec4<f32>(-1110f, 171f, -210f, 206f), -47124i, Struct_1(vec2<f32>(-1000f, 865f), -1099f)), Struct_2(vec4<f32>(-2579f, -293f, 1799f, 132f), vec4<f32>(1226f, -1017f, -672f, -3848f), -20367i, Struct_1(vec2<f32>(-1372f, -577f), 291f)), Struct_2(vec4<f32>(-956f, -801f, -507f, 2032f), vec4<f32>(-122f, 235f, -685f, -143f), -7918i, Struct_1(vec2<f32>(580f, -317f), -460f)), Struct_2(vec4<f32>(1617f, -891f, -1000f, 1000f), vec4<f32>(-2360f, 634f, 543f, 1353f), -1i, Struct_1(vec2<f32>(1793f, -1000f), 1958f)), Struct_2(vec4<f32>(549f, 229f, 133f, -184f), vec4<f32>(-459f, 1000f, -744f, -641f), 1i, Struct_1(vec2<f32>(549f, -1211f), 166f)), Struct_2(vec4<f32>(-348f, 863f, -335f, -754f), vec4<f32>(1000f, 589f, -458f, 973f), 0i, Struct_1(vec2<f32>(1845f, -1212f), 1000f)), Struct_2(vec4<f32>(311f, -1305f, -448f, -456f), vec4<f32>(365f, 430f, -1000f, -1674f), -14819i, Struct_1(vec2<f32>(1057f, -914f), 567f)), Struct_2(vec4<f32>(-977f, 1178f, 518f, -361f), vec4<f32>(498f, 1690f, -818f, -1011f), -20346i, Struct_1(vec2<f32>(-924f, -1206f), 350f)));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> f32 {
    let var_0 = Struct_3(vec2<u32>(u_input.a, 0u), global1[_wgslsmith_index_u32(~110802u, 22u)], -447f, global1[_wgslsmith_index_u32(4294967295u, 22u)], global1[_wgslsmith_index_u32(~select(~_wgslsmith_mult_u32(0u, 48686u), ~u_input.a, false), 22u)]);
    var var_1 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(sign(var_0.e.b.wzw)))) * var_0.b.b.wyx), vec3<f32>(_wgslsmith_f_op_f32(287f * -146f), _wgslsmith_f_op_f32(abs(var_0.e.a.x)), -1000f)));
    var_1 = _wgslsmith_f_op_vec3_f32(var_0.e.a.yyz - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-var_0.d.b.xzy), vec3<f32>(_wgslsmith_f_op_f32(select(var_0.c, 370f, true)), -713f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.x)))))));
    let var_2 = _wgslsmith_clamp_u32(var_0.a.x, 44116u, firstTrailingBit(_wgslsmith_mod_u32(0u, firstTrailingBit(u_input.a))));
    let var_3 = ~abs(var_0.a);
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -399f)), all(vec4<bool>(true, true, true, true))))));
}

fn func_4(arg_0: Struct_3, arg_1: f32, arg_2: Struct_2, arg_3: Struct_3) -> i32 {
    let var_0 = global1[_wgslsmith_index_u32(~firstLeadingBit(arg_3.a.x & 1u), 22u)];
    var var_1 = arg_0;
    let var_2 = arg_0;
    global1 = array<Struct_2, 22>();
    let var_3 = abs(vec3<i32>(_wgslsmith_add_i32(_wgslsmith_add_i32(i32(-1i) * -7753i, arg_2.c), (arg_3.b.c | 2147483647i) >> (var_2.a.x % 32u)), -40806i, abs(min(1i, 1i))));
    return -var_0.c;
}

fn func_2(arg_0: bool) -> Struct_1 {
    let var_0 = func_4(Struct_3(min(~vec2<u32>(27508u, 0u), ~reverseBits(vec2<u32>(27256u, u_input.a))), Struct_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-425f, -1320f, 176f, -888f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(323f, -1009f, 1175f, 2133f)), !vec4<bool>(arg_0, false, false, false))), vec4<f32>(_wgslsmith_f_op_f32(func_3()), 373f, -1557f, _wgslsmith_f_op_f32(ceil(1715f))), -u_input.b << (~1u % 32u), Struct_1(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, -160f), vec2<f32>(-556f, 955f), false)), -719f)), -1000f, Struct_2(vec4<f32>(_wgslsmith_f_op_f32(max(-1000f, -2103f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), 415f, _wgslsmith_div_f32(-874f, 1000f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1042f, -300f, -732f, 1202f))) * vec4<f32>(-1016f, -617f, -397f, 1662f)), u_input.b, Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1623f, -1000f) + vec2<f32>(-165f, -841f)), 2328f)), Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1589f, 1000f, -360f, 1203f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), 1i, Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1356f, 1663f)), 809f))), 1157f, global1[_wgslsmith_index_u32(u_input.a, 22u)], Struct_3(~firstLeadingBit(vec2<u32>(1u, 33123u)), global1[_wgslsmith_index_u32(~(u_input.a >> (abs(1u) % 32u)), 22u)], -2113f, global1[_wgslsmith_index_u32(u_input.a, 22u)], Struct_2(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-960f, -106f, -287f, 402f) - vec4<f32>(1120f, -990f, -955f, -967f)), vec4<f32>(1211f, 769f, -126f, 516f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-134f, 1000f, 1761f, -503f))), -2147483647i, Struct_1(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-648f, -713f))), _wgslsmith_f_op_f32(673f + -1497f)))));
    var var_1 = abs(_wgslsmith_sub_vec4_i32(~_wgslsmith_add_vec4_i32(-vec4<i32>(var_0, var_0, u_input.b, 15917i), vec4<i32>(1i, 1i, var_0, u_input.b)), select(vec4<i32>(abs(96098i), -u_input.b, -var_0, var_0), -_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, u_input.b, 4260i, var_0), vec4<i32>(var_0, 0i, -19731i, -4575i)), any(select(vec2<bool>(arg_0, false), vec2<bool>(true, true), vec2<bool>(arg_0, false))))));
    var_1 = ~vec4<i32>(~(-17112i), -829i, u_input.b << (_wgslsmith_sub_u32(min(44219u, 4294967295u), 1u) % 32u), countOneBits(_wgslsmith_add_i32(var_1.x, u_input.b)) & firstTrailingBit(~(-2147483647i)));
    global1 = array<Struct_2, 22>();
    var var_2 = reverseBits(~12858i);
    return Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(2065f + -373f), 552f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(243f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1133f, -432f)), all(select(select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, false), vec2<bool>(arg_0, arg_0)), vec2<bool>(true, true), false)))));
}

fn func_1(arg_0: vec4<f32>) -> i32 {
    global1 = array<Struct_2, 22>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-arg_0.ywx))));
    var var_1 = _wgslsmith_clamp_i32(-3140i, -1247i, 19384i & u_input.b);
    let var_2 = func_2(select(true, any(vec3<bool>(false, true, true)), any(select(vec2<bool>(true, true), vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false))))));
    let var_3 = _wgslsmith_mult_vec4_i32(-(~vec4<i32>(1i, _wgslsmith_div_i32(u_input.b, u_input.b), _wgslsmith_clamp_i32(-5862i, u_input.b, 38758i), ~0i)), ~(~vec4<i32>(select(u_input.b, -22099i, true), u_input.b, _wgslsmith_mod_i32(u_input.b, 2147483647i), ~u_input.b)));
    return var_3.x;
}

fn func_5(arg_0: f32, arg_1: vec3<i32>) -> vec2<u32> {
    global1 = array<Struct_2, 22>();
    global1 = array<Struct_2, 22>();
    var var_0 = min(u_input.b, 74630i);
    let var_1 = -1000f;
    var var_2 = global1[_wgslsmith_index_u32(u_input.a, 22u)];
    return vec2<u32>(1u, 0u & u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_sub_u32(u_input.a, _wgslsmith_sub_u32(_wgslsmith_div_u32(u_input.a, _wgslsmith_add_u32(u_input.a, u_input.a)), 0u));
    let var_1 = ~func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-490f))), vec3<i32>(_wgslsmith_sub_i32(-u_input.b, func_1(vec4<f32>(1000f, 190f, -558f, 921f))), ~(u_input.b << (u_input.a % 32u)), 3000i));
    var var_2 = _wgslsmith_div_u32(func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-749f + 775f))) + 1f), (reverseBits(vec3<i32>(-1i, u_input.b, 1i)) << (~vec3<u32>(4294967295u, 1u, var_1.x) % vec3<u32>(32u))) >> (_wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(var_1.x, 1u, 1u), vec3<u32>(u_input.a, var_1.x, u_input.a)), vec3<u32>(5239u, 25572u, u_input.a) << (vec3<u32>(59559u, u_input.a, 4294967295u) % vec3<u32>(32u))) % vec3<u32>(32u))).x, _wgslsmith_dot_vec4_u32(vec4<u32>(47170u, var_1.x ^ _wgslsmith_add_u32(1u, var_1.x), ~1u, max(abs(1u), u_input.a)), ~abs(abs(vec4<u32>(24812u, 4294967295u, var_1.x, 18962u)))));
    let var_3 = Struct_1(func_2(false).a, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-200f)) + 115f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-308f, 312f))))));
    var_0 = ~u_input.a;
    let var_4 = global1[_wgslsmith_index_u32(u_input.a, 22u)];
    let var_5 = false;
    var var_6 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_3.a.x, var_3.a.x), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_4.b.ww), _wgslsmith_f_op_vec2_f32(-var_4.a.xz), vec2<bool>(true, true))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-var_4.a.wx))) - vec2<f32>(_wgslsmith_f_op_f32(-var_4.a.x), _wgslsmith_f_op_f32(var_3.a.x * -905f))))));
    let x = u_input.a;
    s_output = StorageBuffer(~(abs(var_1) >> (~vec2<u32>(32337u, var_1.x) % vec2<u32>(32u))));
}

