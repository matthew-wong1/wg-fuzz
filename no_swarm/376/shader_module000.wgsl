struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: bool,
    c: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: bool,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_3,
    c: Struct_2,
    d: vec2<bool>,
    e: Struct_3,
}

struct Struct_5 {
    a: Struct_3,
    b: bool,
    c: u32,
    d: u32,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: Struct_3;

var<private> global2: array<vec4<i32>, 7>;

var<private> global3: array<Struct_2, 26> = array<Struct_2, 26>(Struct_2(vec4<f32>(136f, -120f, 1061f, 527f), true, vec3<f32>(-1378f, 1072f, 1180f)), Struct_2(vec4<f32>(1276f, 480f, -1130f, -841f), false, vec3<f32>(325f, 1637f, 959f)), Struct_2(vec4<f32>(-1106f, 1000f, -1609f, 652f), true, vec3<f32>(511f, 2182f, 1000f)), Struct_2(vec4<f32>(804f, 1000f, -700f, 887f), false, vec3<f32>(411f, -499f, -136f)), Struct_2(vec4<f32>(950f, -136f, -441f, -167f), false, vec3<f32>(1608f, -1000f, 1000f)), Struct_2(vec4<f32>(932f, -657f, -193f, -928f), true, vec3<f32>(-1317f, 1114f, -761f)), Struct_2(vec4<f32>(180f, -1000f, 2075f, 305f), false, vec3<f32>(-1270f, 1321f, 3033f)), Struct_2(vec4<f32>(-1000f, -489f, -1468f, -271f), false, vec3<f32>(1494f, -355f, 328f)), Struct_2(vec4<f32>(-534f, -122f, -1281f, -701f), true, vec3<f32>(1693f, -283f, -270f)), Struct_2(vec4<f32>(971f, -1349f, 704f, 1594f), true, vec3<f32>(-1000f, -486f, -863f)), Struct_2(vec4<f32>(-952f, 1423f, -2104f, 2059f), true, vec3<f32>(-1530f, 1075f, -866f)), Struct_2(vec4<f32>(731f, -1593f, -800f, -1000f), false, vec3<f32>(-2664f, -378f, -1472f)), Struct_2(vec4<f32>(389f, 511f, 210f, -143f), true, vec3<f32>(-457f, -643f, 768f)), Struct_2(vec4<f32>(-169f, -173f, -1680f, -564f), false, vec3<f32>(-801f, 885f, 1511f)), Struct_2(vec4<f32>(-614f, -288f, -567f, -853f), true, vec3<f32>(593f, -1366f, -330f)), Struct_2(vec4<f32>(1893f, 757f, 707f, 2261f), true, vec3<f32>(-852f, -1048f, -2193f)), Struct_2(vec4<f32>(-1000f, 1219f, -1133f, -794f), false, vec3<f32>(-1260f, 1116f, -951f)), Struct_2(vec4<f32>(1074f, -163f, -1265f, -1000f), false, vec3<f32>(1598f, -1281f, 425f)), Struct_2(vec4<f32>(462f, 1072f, 198f, -244f), true, vec3<f32>(-2437f, -1015f, 1436f)), Struct_2(vec4<f32>(-1355f, 851f, 359f, -182f), true, vec3<f32>(-1563f, -473f, 678f)), Struct_2(vec4<f32>(1792f, -557f, 1555f, -728f), false, vec3<f32>(1052f, -1305f, -1441f)), Struct_2(vec4<f32>(-104f, -1154f, 566f, -1087f), true, vec3<f32>(372f, 122f, 1301f)), Struct_2(vec4<f32>(540f, 158f, -2042f, 1000f), false, vec3<f32>(-101f, 1367f, 678f)), Struct_2(vec4<f32>(-600f, -166f, -1544f, 921f), false, vec3<f32>(1683f, -687f, 958f)), Struct_2(vec4<f32>(839f, -124f, -1512f, 485f), true, vec3<f32>(1596f, 864f, 285f)), Struct_2(vec4<f32>(-2139f, -380f, -1680f, 343f), true, vec3<f32>(1168f, 608f, 1037f)));

var<private> global4: array<Struct_3, 15>;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: u32, arg_1: vec4<f32>, arg_2: bool) -> bool {
    var var_0 = u_input.c;
    let var_1 = Struct_1(1534f, _wgslsmith_div_vec4_u32(vec4<u32>(~arg_0, arg_0, (u_input.a >> (30801u % 32u)) | min(arg_0, 6105u), _wgslsmith_mod_u32(arg_0, 4294967295u)), min(~min(vec4<u32>(arg_0, arg_0, 0u, 14742u), vec4<u32>(arg_0, arg_0, 1u, arg_0)), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, u_input.a, arg_0, global1.b), vec4<u32>(1u, global1.b, arg_0, 0u)))), -553f);
    var var_2 = global3[_wgslsmith_index_u32(global1.b, 26u)];
    var var_3 = Struct_3(Struct_2(vec4<f32>(arg_1.x, arg_1.x, -470f, 1056f), 1u != _wgslsmith_sub_u32(~var_1.b.x, var_1.b.x), vec3<f32>(_wgslsmith_f_op_f32(floor(1542f)), var_1.c, global1.a.a.x)), (10359u >> (~u_input.a % 32u)) << (_wgslsmith_div_u32(reverseBits(81655u), _wgslsmith_dot_vec4_u32(~vec4<u32>(34818u, var_1.b.x, var_1.b.x, global1.b), vec4<u32>(arg_0, u_input.a, arg_0, arg_0) << (var_1.b % vec4<u32>(32u)))) % 32u), false);
    var var_4 = abs(~var_1.b.zw);
    return all(!vec3<bool>(global1.a.b, true, false));
}

fn func_2() -> Struct_2 {
    var var_0 = global2[_wgslsmith_index_u32(82160u, 7u)];
    global2 = array<vec4<i32>, 7>();
    let var_1 = global3[_wgslsmith_index_u32(2732u, 26u)];
    var var_2 = Struct_5(Struct_3(global1.a, _wgslsmith_sub_u32(u_input.a, firstLeadingBit(u_input.a)), false), all(vec4<bool>(func_3(17001u, global1.a.a, true) | true, true, global1.a.b, global1.a.b)), 1u, u_input.a, global1.b);
    let var_3 = 53422i;
    return var_2.a.a;
}

fn func_1(arg_0: bool, arg_1: Struct_2) -> f32 {
    var var_0 = Struct_4(vec3<bool>(all(vec3<bool>(arg_0, false, global1.a.b)) | false, all(!select(vec2<bool>(arg_0, false), vec2<bool>(arg_0, arg_0), true)), false), Struct_3(func_2(), countOneBits(_wgslsmith_div_u32(~u_input.a, ~78911u)), true), func_2(), !(!(!select(vec2<bool>(arg_1.b, arg_0), vec2<bool>(true, false), true))), global4[_wgslsmith_index_u32(0u, 15u)]);
    let var_1 = !var_0.d;
    let var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-594f * -1515f) * _wgslsmith_f_op_f32(var_0.b.a.a.x - -506f)) * _wgslsmith_f_op_f32(sign(1f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(exp2(var_0.b.a.c.x))))), -394f, true))));
    global0 = global1.c;
    var var_3 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.c.a.x)) * arg_1.a.x)))), min(_wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(countOneBits(vec4<u32>(var_0.e.b, var_0.b.b, 9568u, global1.b)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, global1.b, 23497u, 0u), vec4<u32>(var_0.b.b, var_0.e.b, u_input.a, 0u))), vec4<u32>(9115u, 13447u, reverseBits(0u), countOneBits(27318u)), ~(vec4<u32>(global1.b, 73459u, 1u, 1u) << (vec4<u32>(var_0.b.b, global1.b, global1.b, 14156u) % vec4<u32>(32u)))), select(firstLeadingBit(vec4<u32>(var_0.b.b, global1.b, global1.b, u_input.a) << (vec4<u32>(global1.b, 1u, 4294967295u, 1u) % vec4<u32>(32u))), vec4<u32>(59560u, 1u, _wgslsmith_mult_u32(0u, 1755u), ~var_0.e.b), vec4<bool>(var_1.x, true, arg_0, arg_1.b))), 156f);
    return -1757f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.a.c.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1000f)) * _wgslsmith_f_op_f32(max(-629f, global1.a.a.x))))), _wgslsmith_f_op_f32(func_1(!(global1.a.b == (global1.c && true)), Struct_2(_wgslsmith_f_op_vec4_f32(global1.a.a - global1.a.a), select(global1.c, global1.c, global1.c) | true, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, global1.a.a.x, 1000f), vec3<f32>(2382f, -245f, -520f), false)) - _wgslsmith_f_op_vec3_f32(global1.a.c + vec3<f32>(1000f, -1295f, -2585f)))))));
    global3 = array<Struct_2, 26>();
    global0 = false;
    let var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1777f))), -153f));
    global4 = array<Struct_3, 15>();
    var var_2 = global2[_wgslsmith_index_u32(reverseBits(~(~29482u)), 7u)];
    var var_3 = _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 0u, 1u, 4294967295u), vec4<u32>(0u, global1.b, global1.b, 21172u)) & ((vec4<u32>(u_input.a, global1.b, 22831u, 1u) >> (vec4<u32>(u_input.a, u_input.a, 56326u, u_input.a) % vec4<u32>(32u))) | vec4<u32>(2941u, u_input.a, 0u, global1.b)), vec4<u32>(_wgslsmith_sub_u32(~u_input.a, ~global1.b), global1.b, u_input.a << (global1.b % 32u), ~max(48819u, 27568u))), _wgslsmith_sub_u32(_wgslsmith_div_u32(_wgslsmith_mod_u32(u_input.a, ~global1.b), _wgslsmith_mod_u32(~global1.b, firstLeadingBit(0u))), _wgslsmith_dot_vec2_u32(~_wgslsmith_div_vec2_u32(vec2<u32>(global1.b, u_input.a), vec2<u32>(global1.b, global1.b)), firstTrailingBit(firstTrailingBit(vec2<u32>(u_input.a, global1.b))))));
    global3 = array<Struct_2, 26>();
    var var_4 = -222f;
    let x = u_input.a;
    s_output = StorageBuffer(-9524i, var_2.xyx, _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a ^ abs(global1.b), 0u), ~(~vec2<u32>(global1.b, u_input.a))), _wgslsmith_f_op_vec3_f32(trunc(global1.a.c)));
}

