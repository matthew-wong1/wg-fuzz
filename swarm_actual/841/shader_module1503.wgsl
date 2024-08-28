struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec2<bool>,
    d: vec3<f32>,
    e: Struct_1,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: vec4<f32>,
    b: Struct_2,
    c: vec4<f32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 29> = array<u32, 29>(1u, 4294967295u, 94322u, 12315u, 16280u, 0u, 0u, 0u, 69000u, 4294967295u, 0u, 25334u, 10260u, 4294967295u, 0u, 4294967295u, 4294967295u, 27079u, 76515u, 32341u, 37886u, 0u, 25494u, 0u, 65681u, 0u, 0u, 4294967295u, 1u);

var<private> global1: u32 = 69889u;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: vec2<u32>) -> vec3<u32> {
    var var_0 = true;
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1239f))), _wgslsmith_div_f32(-1313f, _wgslsmith_f_op_f32(step(1207f, 1474f))), 311f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(438f)))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1101f, 481f, -684f, -980f))))))) * vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1023f), _wgslsmith_f_op_f32(max(-1586f, -1905f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1569f, 1377f)) + -1643f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(200f, 1067f)), _wgslsmith_f_op_f32(f32(-1f) * -912f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-709f, 1353f)), _wgslsmith_f_op_f32(-127f + 122f)))));
    let var_2 = select(select(select(select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), true), any(vec3<bool>(false, true, false))), vec4<bool>(true, all(vec2<bool>(false, false)), true, any(vec3<bool>(false, false, false))), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), true))), vec4<bool>(true, true == (2147483647i >= u_input.b), true, !(u_input.a > arg_0.x)), !vec4<bool>(all(vec4<bool>(false, true, true, false)), false, true, true)), vec4<bool>(false, !select(any(vec3<bool>(true, false, false)), true, true), false, false), true);
    var_0 = any(!vec3<bool>(var_2.x, all(!var_2.xyw), u_input.b == -u_input.b));
    var var_3 = select(!(!var_2.yxy), select(vec3<bool>(true, all(!var_2), !(arg_0.x <= global0[_wgslsmith_index_u32(u_input.a, 29u)])), !var_2.xzy, var_2.x), var_2.wzz);
    return min(abs(vec3<u32>(u_input.a, 52609u, min(arg_0.x, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, u_input.a, arg_0.x), vec4<u32>(arg_0.x, 24461u, u_input.a, global0[_wgslsmith_index_u32(4294967295u, 29u)]))))), reverseBits(vec3<u32>(_wgslsmith_mult_u32(u_input.a, arg_0.x) >> ((4294967295u ^ u_input.a) % 32u), _wgslsmith_clamp_u32(arg_0.x, arg_0.x, 10988u) ^ select(31039u, 66496u, true), _wgslsmith_div_u32(15130u, firstTrailingBit(97275u)))));
}

fn func_2(arg_0: vec4<i32>) -> f32 {
    let var_0 = !(!select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true)), false));
    global1 = 4591u >> (_wgslsmith_mod_u32(~(~(~u_input.a)), _wgslsmith_dot_vec3_u32(func_3(vec2<u32>(global0[_wgslsmith_index_u32(u_input.a, 29u)], 35183u)) & vec3<u32>(global0[_wgslsmith_index_u32(48365u, 29u)], 0u, 1u), vec3<u32>(~27895u, u_input.a, u_input.a >> (0u % 32u)))) % 32u);
    let var_1 = Struct_5(vec4<f32>(_wgslsmith_f_op_f32(trunc(1065f)), -283f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -880f), 199f)), _wgslsmith_f_op_f32(f32(-1f) * -1422f)), Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(478f, -457f, 2605f, -1665f), vec4<f32>(-1000f, 293f, -308f, -1120f), var_0.x)))), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) * vec4<f32>(2151f, -592f, -337f, -1223f))), countOneBits(u_input.b), 1234f, Struct_1(vec4<f32>(-131f, _wgslsmith_f_op_f32(-179f + 1069f), -352f, _wgslsmith_f_op_f32(f32(-1f) * -548f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(515f * 205f), _wgslsmith_f_op_f32(trunc(-684f)), _wgslsmith_f_op_f32(135f * -1044f), -843f)))), Struct_2(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2790f), -1738f, _wgslsmith_f_op_f32(f32(-1f) * -1113f), -1220f)), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(233f, -962f, 130f, -861f)) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(987f, 949f, -1667f, -2454f))))), abs(_wgslsmith_mult_i32(u_input.b, arg_0.x)) & (2147483647i << ((u_input.a | 4294967295u) % 32u)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -197f))))), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1515f, 451f, -345f, -406f) * vec4<f32>(-2762f, 184f, -2139f, -394f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-553f, 867f, 365f, -644f) * vec4<f32>(424f, -1780f, -346f, -348f))))));
    global0 = array<u32, 29>();
    global0 = array<u32, 29>();
    return _wgslsmith_div_f32(157f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.c.x * var_1.d.b.a.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(372f, var_1.a.x)) - _wgslsmith_f_op_f32(-var_1.a.x)))));
}

fn func_1(arg_0: i32, arg_1: Struct_2, arg_2: Struct_5) -> Struct_3 {
    global0 = array<u32, 29>();
    let var_0 = Struct_5(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1108f, _wgslsmith_f_op_f32(func_2(-vec4<i32>(arg_2.b.c, 1i, u_input.b, 0i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(735f, arg_1.e.a.x))), arg_1.d))), arg_2.d, vec4<f32>(arg_2.d.b.a.x, _wgslsmith_f_op_f32(-arg_1.b.a.x), -208f, _wgslsmith_div_f32(_wgslsmith_div_f32(-696f, _wgslsmith_f_op_f32(round(-479f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1043f, arg_2.b.a.a.x))))), Struct_2(arg_2.b.a, Struct_1(arg_2.c), arg_0, arg_2.d.e.a.x, arg_1.b));
    var var_1 = Struct_2(arg_2.b.a, Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-881f, var_0.d.d, 985f, 171f)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(arg_2.d.b.a - arg_2.c), arg_1.a.a, true)))), _wgslsmith_div_i32(max(select(-36348i, _wgslsmith_clamp_i32(arg_1.c, u_input.b, -27278i), any(vec2<bool>(false, false))), arg_2.b.c), arg_2.d.c), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(min(firstTrailingBit(vec4<i32>(u_input.b, -29953i, 15069i, arg_2.b.c)), vec4<i32>(var_0.d.c, -6096i, 31430i, var_0.d.c)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_2.a.x, 136f)) * -590f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.d.e.a.x - -1224f) + _wgslsmith_f_op_f32(-1000f - 1614f)))), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(401f, -123f)), _wgslsmith_f_op_f32(func_2(vec4<i32>(arg_0, -432i, -1i, -32143i) >> (vec4<u32>(u_input.a, u_input.a, 38374u, u_input.a) % vec4<u32>(32u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_1.e.a.x)) - _wgslsmith_f_op_f32(-arg_1.a.a.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-183f, -349f, false)))))));
    let var_2 = arg_1.b.a.xy;
    var_1 = Struct_2(arg_2.d.a, arg_1.e, var_0.b.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-155f - -1000f) - arg_2.c.x)) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_1.a.a.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(arg_2.a.x, 1000f, true)), _wgslsmith_f_op_f32(-arg_1.e.a.x), arg_2.d.d < -793f))))), Struct_1(arg_2.a));
    return Struct_3(max(_wgslsmith_add_vec2_i32(vec2<i32>(-1i, max(-56363i, u_input.b)), vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0, 26745i), vec2<i32>(u_input.b, var_0.b.c)), 1i)), _wgslsmith_add_vec2_i32(abs(vec2<i32>(1i, 1i)), _wgslsmith_mod_vec2_i32(-vec2<i32>(var_0.b.c, var_0.d.c), -vec2<i32>(-3984i, arg_2.d.c)))), select(firstTrailingBit(abs(-vec4<i32>(-2147483647i, -15728i, 2147483647i, 11949i))), min(-firstLeadingBit(vec4<i32>(arg_2.d.c, arg_1.c, arg_2.b.c, 2147483647i)), min(~vec4<i32>(-2147483647i, 1i, var_1.c, var_0.b.c), vec4<i32>(arg_0, u_input.b, -23190i, -13595i))), true), !select(vec2<bool>(true, any(vec4<bool>(false, true, true, true))), select(vec2<bool>(false, true), vec2<bool>(false, false), true), select(vec2<bool>(true, true), vec2<bool>(true, true), true)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1034f, arg_2.b.b.a.x, var_1.b.a.x)) + _wgslsmith_f_op_vec3_f32(arg_2.b.b.a.wzy * arg_2.d.b.a.xzy)), vec3<f32>(var_2.x, _wgslsmith_f_op_f32(-arg_1.e.a.x), 104f))))), var_1.e);
}

fn func_4(arg_0: Struct_3, arg_1: vec4<i32>) -> f32 {
    let var_0 = vec3<u32>(95580u, 14957u, 18417u);
    global1 = 20u;
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.e.a.xxy) - vec3<f32>(_wgslsmith_f_op_f32(exp2(arg_0.e.a.x)), _wgslsmith_f_op_f32(floor(arg_0.d.x)), _wgslsmith_f_op_f32(f32(-1f) * -296f))) * arg_0.e.a.wwx));
    global0 = array<u32, 29>();
    let var_2 = abs(var_0);
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.d.x, _wgslsmith_f_op_f32(select(-1139f, var_1.x, arg_0.c.x | false))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(116f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(func_1(-1i, Struct_2(Struct_1(vec4<f32>(1000f, -315f, -689f, -305f)), Struct_1(vec4<f32>(-352f, -847f, -1798f, -1424f)), u_input.b, -490f, Struct_1(vec4<f32>(842f, 636f, 566f, -1736f))), Struct_5(vec4<f32>(423f, 906f, 181f, 1390f), Struct_2(Struct_1(vec4<f32>(-782f, 514f, -540f, 1177f)), Struct_1(vec4<f32>(1059f, -1246f, 106f, 158f)), -13434i, 963f, Struct_1(vec4<f32>(525f, 749f, 611f, 1000f))), vec4<f32>(-106f, -1000f, -803f, -612f), Struct_2(Struct_1(vec4<f32>(-1387f, -1075f, 1178f, 1144f)), Struct_1(vec4<f32>(-1134f, -916f, -151f, 1315f)), u_input.b, -578f, Struct_1(vec4<f32>(-1378f, -1034f, 1368f, -635f))))), vec4<i32>(u_input.b, u_input.b, 31565i, u_input.b))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(567f, -1104f, true)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-233f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_3(vec2<i32>(u_input.b, u_input.b), vec4<i32>(12424i, 1i, u_input.b, u_input.b), vec2<bool>(false, false), vec3<f32>(1180f, 947f, 2229f), Struct_1(vec4<f32>(-2314f, 948f, 809f, -2093f))), func_1(2147483647i, Struct_2(Struct_1(vec4<f32>(-181f, -284f, -177f, 226f)), Struct_1(vec4<f32>(-665f, -1049f, -1989f, -1331f)), -10424i, -578f, Struct_1(vec4<f32>(-1437f, 791f, -1401f, -1000f))), Struct_5(vec4<f32>(-1357f, -2466f, -158f, -686f), Struct_2(Struct_1(vec4<f32>(578f, 240f, 662f, 210f)), Struct_1(vec4<f32>(-268f, 667f, 201f, -2259f)), u_input.b, 559f, Struct_1(vec4<f32>(753f, -285f, -533f, 1880f))), vec4<f32>(2293f, 1667f, 597f, 237f), Struct_2(Struct_1(vec4<f32>(1338f, 617f, -1707f, -436f)), Struct_1(vec4<f32>(-510f, -1387f, -106f, -1528f)), u_input.b, -1504f, Struct_1(vec4<f32>(-1000f, 1113f, -1548f, 1016f))))).b)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1f, _wgslsmith_f_op_f32(func_2(vec4<i32>(u_input.b, -27431i, u_input.b, 2147483647i))), -1461f, -1620f)))));
    var var_1 = firstLeadingBit(-2147483647i);
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(select(-1265f, 214f, select(8395u == _wgslsmith_mod_u32(1u, global0[_wgslsmith_index_u32(10667u, 29u)]), !func_1(20458i, Struct_2(Struct_1(var_0), Struct_1(var_0), u_input.b, 977f, Struct_1(var_0)), Struct_5(var_0, Struct_2(Struct_1(var_0), Struct_1(var_0), u_input.b, 758f, Struct_1(var_0)), var_0, Struct_2(Struct_1(vec4<f32>(var_0.x, var_0.x, -1185f, var_0.x)), Struct_1(vec4<f32>(1165f, var_0.x, 360f, -1185f)), 2147483647i, var_0.x, Struct_1(var_0)))).c.x, all(vec2<bool>(true, true))))), var_0.x, var_0.x);
    let var_3 = func_1(23651i, Struct_2(Struct_1(var_0), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1128f, 870f, var_2.x, -1806f))) - var_0)), u_input.b, _wgslsmith_f_op_f32(1012f * _wgslsmith_f_op_f32(f32(-1f) * -742f)), func_1(u_input.b, Struct_2(Struct_1(var_0), Struct_1(vec4<f32>(var_2.x, var_0.x, var_0.x, var_2.x)), firstLeadingBit(-54433i), _wgslsmith_f_op_f32(-var_2.x), Struct_1(var_0)), Struct_5(func_1(u_input.b, Struct_2(Struct_1(var_0), Struct_1(var_0), u_input.b, var_2.x, Struct_1(var_0)), Struct_5(var_0, Struct_2(Struct_1(var_0), Struct_1(vec4<f32>(var_2.x, var_2.x, -425f, var_0.x)), -9516i, -125f, Struct_1(var_0)), var_0, Struct_2(Struct_1(vec4<f32>(-1296f, var_2.x, -353f, 145f)), Struct_1(var_0), u_input.b, var_2.x, Struct_1(vec4<f32>(var_0.x, -1983f, var_2.x, -707f))))).e.a, Struct_2(Struct_1(vec4<f32>(var_0.x, -928f, var_2.x, -1000f)), Struct_1(var_0), u_input.b, 280f, Struct_1(vec4<f32>(var_0.x, -1224f, var_0.x, var_0.x))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_2.x, var_0.x, -446f, -1000f))), Struct_2(Struct_1(vec4<f32>(-2022f, var_0.x, 642f, 386f)), Struct_1(var_0), u_input.b, -2225f, Struct_1(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x))))).e), Struct_5(vec4<f32>(_wgslsmith_f_op_f32(-2000f + var_2.x), -1000f, -1000f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.x)))), Struct_2(func_1(u_input.b, Struct_2(Struct_1(vec4<f32>(145f, var_0.x, var_2.x, var_0.x)), Struct_1(var_0), -79175i, -1972f, Struct_1(vec4<f32>(var_2.x, var_2.x, var_0.x, var_0.x))), Struct_5(vec4<f32>(-144f, -2365f, -939f, 449f), Struct_2(Struct_1(vec4<f32>(var_0.x, var_0.x, -279f, var_0.x)), Struct_1(var_0), u_input.b, var_2.x, Struct_1(vec4<f32>(-821f, var_0.x, var_2.x, var_0.x))), vec4<f32>(var_0.x, 822f, 1109f, 1636f), Struct_2(Struct_1(vec4<f32>(var_0.x, 1000f, 1416f, var_2.x)), Struct_1(var_0), 0i, var_2.x, Struct_1(vec4<f32>(var_2.x, 1362f, var_0.x, var_0.x))))).e, Struct_1(_wgslsmith_f_op_vec4_f32(-var_0)), _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-13222i, u_input.b, 2147483647i, u_input.b), vec4<i32>(u_input.b, -23665i, u_input.b, -15505i)), u_input.b & 6971i), _wgslsmith_div_f32(_wgslsmith_f_op_f32(654f - 1503f), 590f), func_1(-30401i, Struct_2(Struct_1(vec4<f32>(-1312f, 884f, -127f, -1055f)), Struct_1(vec4<f32>(var_0.x, 531f, 1158f, 1071f)), u_input.b, 1743f, Struct_1(var_0)), Struct_5(var_0, Struct_2(Struct_1(var_0), Struct_1(vec4<f32>(var_0.x, -608f, var_2.x, var_0.x)), u_input.b, var_0.x, Struct_1(vec4<f32>(var_0.x, var_2.x, 2187f, var_2.x))), vec4<f32>(878f, -319f, var_0.x, var_2.x), Struct_2(Struct_1(var_0), Struct_1(var_0), -20393i, 351f, Struct_1(vec4<f32>(var_2.x, var_2.x, var_2.x, -509f))))).e), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-411f * 799f), _wgslsmith_div_f32(var_0.x, var_0.x), 206f, var_0.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0 * var_0) * vec4<f32>(var_0.x, 875f, var_2.x, var_0.x)), vec4<bool>(true, true, true, any(vec4<bool>(true, false, true, false))))), Struct_2(Struct_1(vec4<f32>(-1727f, var_2.x, var_0.x, var_0.x)), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -2751f, -1055f, var_2.x) + var_0)), -(~(-40205i)), var_2.x, Struct_1(_wgslsmith_f_op_vec4_f32(-var_0))))).e;
    var var_4 = _wgslsmith_div_u32(u_input.a, _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(~0u, ~4294967295u, ~594u), reverseBits(~vec3<u32>(u_input.a, u_input.a, u_input.a))), ~(~abs(42875u))));
    var_4 = 1u;
    var_4 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(29875u, select(~vec4<u32>(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(17852u, 29u)], u_input.a), global0[_wgslsmith_index_u32(10021u, 29u)] | 1u, 108324u, ~4294967295u), firstTrailingBit(vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(60008u, 29u)], global0[_wgslsmith_index_u32(u_input.a, 29u)]), 29u)], abs(0u), 1u)), vec4<bool>(true, true, true, true)));
}

