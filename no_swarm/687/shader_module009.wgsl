struct Struct_1 {
    a: vec4<f32>,
    b: vec2<i32>,
    c: f32,
    d: vec3<f32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: u32,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: vec2<u32>;

var<private> global2: array<Struct_1, 26>;

var<private> global3: array<Struct_2, 30> = array<Struct_2, 30>(Struct_2(Struct_1(vec4<f32>(-1511f, 1000f, -426f, -1014f), vec2<i32>(-1i, -11605i), 639f, vec3<f32>(-1000f, -2923f, 1000f), vec2<bool>(true, false)), false), Struct_2(Struct_1(vec4<f32>(728f, 1295f, 465f, 288f), vec2<i32>(62810i, 24913i), -1500f, vec3<f32>(-481f, -1000f, 2126f), vec2<bool>(true, false)), true), Struct_2(Struct_1(vec4<f32>(331f, -216f, 1000f, -1887f), vec2<i32>(-1i, 0i), -1225f, vec3<f32>(-879f, 258f, 1451f), vec2<bool>(true, false)), false), Struct_2(Struct_1(vec4<f32>(914f, 1534f, 822f, 1312f), vec2<i32>(70642i, 24268i), -789f, vec3<f32>(804f, -979f, -997f), vec2<bool>(false, false)), false), Struct_2(Struct_1(vec4<f32>(-170f, -808f, -438f, -2367f), vec2<i32>(1i, 2147483647i), 1020f, vec3<f32>(191f, 773f, -431f), vec2<bool>(false, false)), true), Struct_2(Struct_1(vec4<f32>(430f, -837f, -493f, 382f), vec2<i32>(21514i, -1i), 364f, vec3<f32>(376f, -110f, 1000f), vec2<bool>(true, true)), false), Struct_2(Struct_1(vec4<f32>(-819f, 619f, -888f, -426f), vec2<i32>(0i, 17409i), -383f, vec3<f32>(557f, 1808f, 286f), vec2<bool>(true, false)), true), Struct_2(Struct_1(vec4<f32>(-1896f, -1240f, -1000f, 1156f), vec2<i32>(-16032i, 1i), 1541f, vec3<f32>(-519f, -1169f, -442f), vec2<bool>(true, false)), true), Struct_2(Struct_1(vec4<f32>(641f, 887f, -2057f, 358f), vec2<i32>(19530i, -1i), 901f, vec3<f32>(-754f, -898f, 748f), vec2<bool>(false, true)), false), Struct_2(Struct_1(vec4<f32>(751f, -803f, -381f, 1000f), vec2<i32>(-30044i, -15674i), 680f, vec3<f32>(848f, 1623f, -165f), vec2<bool>(false, false)), true), Struct_2(Struct_1(vec4<f32>(-354f, 748f, 1045f, 189f), vec2<i32>(51434i, 2147483647i), 581f, vec3<f32>(606f, -1000f, -272f), vec2<bool>(false, false)), true), Struct_2(Struct_1(vec4<f32>(1298f, -948f, 751f, -710f), vec2<i32>(2147483647i, -10911i), 1179f, vec3<f32>(-1200f, 1033f, 679f), vec2<bool>(true, true)), false), Struct_2(Struct_1(vec4<f32>(759f, 265f, 1540f, -1391f), vec2<i32>(i32(-2147483648), -1i), -161f, vec3<f32>(-398f, -237f, -1000f), vec2<bool>(true, true)), false), Struct_2(Struct_1(vec4<f32>(-427f, 795f, -1000f, -767f), vec2<i32>(0i, 48496i), -412f, vec3<f32>(-200f, -191f, 653f), vec2<bool>(true, true)), true), Struct_2(Struct_1(vec4<f32>(-1109f, -361f, 2708f, -1078f), vec2<i32>(-1i, 2147483647i), -1000f, vec3<f32>(842f, 800f, 135f), vec2<bool>(true, true)), false), Struct_2(Struct_1(vec4<f32>(-325f, 460f, 1290f, -254f), vec2<i32>(31298i, 0i), 1000f, vec3<f32>(-404f, 945f, 1255f), vec2<bool>(false, true)), true), Struct_2(Struct_1(vec4<f32>(2303f, -474f, -203f, -198f), vec2<i32>(29347i, -1i), -1855f, vec3<f32>(1205f, -500f, 702f), vec2<bool>(true, false)), true), Struct_2(Struct_1(vec4<f32>(-3057f, 524f, 146f, 1910f), vec2<i32>(1i, 1i), -557f, vec3<f32>(-723f, 1973f, 394f), vec2<bool>(true, false)), false), Struct_2(Struct_1(vec4<f32>(1613f, -1739f, -125f, -1092f), vec2<i32>(i32(-2147483648), 0i), -117f, vec3<f32>(975f, 184f, 453f), vec2<bool>(false, true)), true), Struct_2(Struct_1(vec4<f32>(417f, 927f, -570f, -622f), vec2<i32>(i32(-2147483648), -10007i), 1012f, vec3<f32>(-524f, 3545f, -563f), vec2<bool>(true, false)), true), Struct_2(Struct_1(vec4<f32>(1741f, -1579f, 2885f, -201f), vec2<i32>(i32(-2147483648), 0i), 1329f, vec3<f32>(181f, -2226f, -1839f), vec2<bool>(true, false)), true), Struct_2(Struct_1(vec4<f32>(-147f, 691f, 156f, -977f), vec2<i32>(-1i, -32613i), -397f, vec3<f32>(1767f, -1800f, -2400f), vec2<bool>(true, true)), false), Struct_2(Struct_1(vec4<f32>(-474f, 641f, -329f, 379f), vec2<i32>(-24575i, 5994i), 1509f, vec3<f32>(-524f, 270f, -492f), vec2<bool>(false, false)), false), Struct_2(Struct_1(vec4<f32>(-1012f, 466f, -358f, 1450f), vec2<i32>(-24760i, -1i), -1290f, vec3<f32>(1874f, -1482f, 760f), vec2<bool>(false, false)), false), Struct_2(Struct_1(vec4<f32>(-479f, 122f, 1571f, 714f), vec2<i32>(1i, -11277i), -194f, vec3<f32>(-691f, -1000f, -2063f), vec2<bool>(true, true)), true), Struct_2(Struct_1(vec4<f32>(634f, 1007f, -380f, 669f), vec2<i32>(-1i, -2388i), -511f, vec3<f32>(-644f, -493f, -133f), vec2<bool>(true, false)), false), Struct_2(Struct_1(vec4<f32>(377f, 342f, 1232f, 1205f), vec2<i32>(0i, i32(-2147483648)), 671f, vec3<f32>(818f, -500f, 1975f), vec2<bool>(false, true)), true), Struct_2(Struct_1(vec4<f32>(1000f, 1000f, 254f, -406f), vec2<i32>(1i, i32(-2147483648)), -1451f, vec3<f32>(1000f, -728f, -1057f), vec2<bool>(true, false)), false), Struct_2(Struct_1(vec4<f32>(890f, -1033f, -891f, -1466f), vec2<i32>(-1i, 78854i), 1000f, vec3<f32>(1123f, -1730f, 1449f), vec2<bool>(true, true)), false), Struct_2(Struct_1(vec4<f32>(225f, 971f, 1341f, 591f), vec2<i32>(-46678i, -19502i), -1401f, vec3<f32>(-649f, -780f, 757f), vec2<bool>(true, true)), false));

var<private> global4: array<Struct_3, 23>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2() -> u32 {
    global4 = array<Struct_3, 23>();
    global4 = array<Struct_3, 23>();
    global1 = vec2<u32>(76950u, _wgslsmith_add_u32(0u, ~u_input.a));
    global2 = array<Struct_1, 26>();
    let var_0 = -(-1i >> (~(~u_input.c.x) % 32u));
    return 35858u;
}

fn func_3() -> bool {
    global4 = array<Struct_3, 23>();
    global0 = u_input.c;
    var var_0 = vec3<i32>(u_input.b.x, ~select(~_wgslsmith_div_i32(1i, u_input.d), u_input.d, any(vec4<bool>(true, true, true, true))), 51554i);
    global4 = array<Struct_3, 23>();
    global3 = array<Struct_2, 30>();
    return !(false && any(vec4<bool>(false, false, true, true))) || (1f != _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - 266f)))));
}

fn func_1(arg_0: f32) -> bool {
    let var_0 = vec3<bool>(func_2() <= ~(u_input.a << (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, global0.x), vec2<u32>(global0.x, 11309u)) % 32u)), true, false & func_3());
    var var_1 = Struct_4(true, Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0, -139f, 919f, 540f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, -1000f, arg_0, 515f) - vec4<f32>(arg_0, 1293f, arg_0, -1001f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1164f, -1796f, arg_0, 642f)))), _wgslsmith_mult_vec2_i32(vec2<i32>(~u_input.b.x, u_input.d), _wgslsmith_mult_vec2_i32(select(vec2<i32>(-2147483647i, 31995i), u_input.b, vec2<bool>(true, false)), u_input.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1510f))), vec3<f32>(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(round(144f))), _wgslsmith_f_op_f32(sign(-173f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0)))), select(var_0.yz, !var_0.yx, select(var_0.x, var_0.x & true, true))));
    var_1 = Struct_4(var_1.a, var_1.b);
    global1 = ~_wgslsmith_mult_vec2_u32(~abs(_wgslsmith_mod_vec2_u32(vec2<u32>(global1.x, u_input.c.x), u_input.c.zz)), ~_wgslsmith_div_vec2_u32(~global0.xx, max(global0.zz, vec2<u32>(2037u, global1.x))));
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<Struct_3, 23>();
    let var_0 = global3[_wgslsmith_index_u32(global0.x, 30u)];
    let var_1 = func_1(_wgslsmith_f_op_f32(709f * _wgslsmith_f_op_f32(-1972f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.c) + 338f))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1652f, -310f)) * 518f), _wgslsmith_f_op_f32(f32(-1f) * -1219f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1781f) + _wgslsmith_f_op_f32(-var_0.a.d.x)))));
    global1 = ~(~global0.zy);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(_wgslsmith_sub_i32(abs(78063i), ~(-1i)), _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(select(u_input.b, vec2<i32>(-19472i, -1i), var_0.b), firstLeadingBit(vec2<i32>(var_0.a.b.x, u_input.d))), -1i, abs(6136i)), u_input.d), u_input.d);
}

