struct Struct_1 {
    a: vec3<f32>,
    b: vec3<bool>,
    c: f32,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
}

struct Struct_5 {
    a: vec2<u32>,
    b: Struct_2,
    c: vec2<u32>,
    d: Struct_3,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec3<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 11> = array<bool, 11>(false, false, false, false, true, true, true, false, false, false, true);

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_2(arg_0: bool) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-909f, 1082f) + vec2<f32>(-169f, 1067f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(989f, -259f), vec2<f32>(-346f, 1000f))))) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-805f, 2665f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-136f, -559f), vec2<f32>(1279f, -497f))), 2147483647i == u_input.a.x))));
    global0 = array<bool, 11>();
    let var_1 = true;
    var var_2 = ~4294967295u;
    var var_3 = !vec2<bool>(false, !any(!vec3<bool>(true, var_1, false)));
    return Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-221f, var_0.x, 736f))))) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * 1000f) * -529f), var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.x, -290f)) * var_0.x))), vec3<bool>(var_3.x, false, true), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1090f))));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec2<bool>, arg_2: vec2<f32>, arg_3: bool) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x + _wgslsmith_f_op_f32(arg_2.x * arg_2.x))))));
    let var_1 = !any(select(select(vec3<bool>(global0[_wgslsmith_index_u32(104694u, 11u)], arg_3, false), !vec3<bool>(arg_3, false, global0[_wgslsmith_index_u32(73221u, 11u)]), !vec3<bool>(false, arg_3, true)), func_2(false).b, !(!vec3<bool>(arg_1.x, false, arg_1.x))));
    var var_2 = _wgslsmith_f_op_f32(step(-392f, _wgslsmith_f_op_f32(-1222f + -867f)));
    var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-949f))));
    var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0))), _wgslsmith_f_op_f32(trunc(-1000f)), false));
    return reverseBits(~(~_wgslsmith_clamp_i32(u_input.a.x, arg_0.x, 16123i)));
}

fn func_4(arg_0: Struct_4, arg_1: i32, arg_2: Struct_2, arg_3: vec3<bool>) -> Struct_4 {
    var var_0 = Struct_4(i32(-1i) * -1i, arg_0.b);
    var var_1 = -1413f;
    let var_2 = ~vec4<u32>(45070u, select(_wgslsmith_sub_u32(57443u, _wgslsmith_mult_u32(0u, 4294967295u)), firstLeadingBit(1u), any(!vec2<bool>(global0[_wgslsmith_index_u32(1u, 11u)], global0[_wgslsmith_index_u32(6095u, 11u)]))), ~reverseBits(_wgslsmith_mult_u32(1u, 26688u)), ~max(3639u, 0u));
    var var_3 = _wgslsmith_add_u32(_wgslsmith_div_u32(~_wgslsmith_dot_vec2_u32(var_2.wx, vec2<u32>(0u, 4147u)) | ~abs(var_2.x), abs(var_2.x)), var_2.x);
    let var_4 = select(~arg_1, ~(-1i), firstTrailingBit(~_wgslsmith_clamp_u32(var_2.x, var_2.x, var_2.x)) <= _wgslsmith_add_u32(var_2.x, countOneBits(~1u)));
    return Struct_4(~22942i, Struct_3(func_2(_wgslsmith_f_op_f32(-arg_0.b.b.c) > 1450f), var_0.b.b, func_2(!global0[_wgslsmith_index_u32(abs(var_2.x), 11u)])));
}

fn func_5(arg_0: bool, arg_1: bool, arg_2: f32, arg_3: Struct_4) -> Struct_1 {
    global0 = array<bool, 11>();
    var var_0 = func_2(all(!vec4<bool>(true, true, arg_1, any(vec3<bool>(arg_0, false, true))))).a.yy;
    var var_1 = -vec3<i32>(u_input.a.x, i32(-1i) * -func_4(arg_3, 0i, Struct_2(vec3<i32>(-88247i, arg_3.a, 9521i)), vec3<bool>(arg_3.b.c.b.x, false, arg_3.b.c.b.x)).a, -u_input.a.x);
    var_1 = -countOneBits(~_wgslsmith_mult_vec3_i32(-vec3<i32>(var_1.x, var_1.x, arg_3.a), ~vec3<i32>(arg_3.a, arg_3.a, 7823i)));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.b.c.c)))), _wgslsmith_f_op_f32(round(arg_3.b.b.a.x)), _wgslsmith_f_op_f32(-1855f - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.b.b.a.x))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -620f))))));
    return arg_3.b.c;
}

fn func_1(arg_0: vec3<bool>) -> vec4<bool> {
    var var_0 = _wgslsmith_dot_vec4_u32(~vec4<u32>(~_wgslsmith_mod_u32(0u, 10319u), _wgslsmith_add_u32(firstTrailingBit(4294967295u), 1801u), 23841u, ~8057u), vec4<u32>(49154u, _wgslsmith_dot_vec2_u32(~(~vec2<u32>(98536u, 4674u)), _wgslsmith_mult_vec2_u32(vec2<u32>(1u, 1u), min(vec2<u32>(4294967295u, 0u), vec2<u32>(48728u, 65722u)))), ~firstTrailingBit(~4294967295u), select(_wgslsmith_mult_u32(1u, ~1u), 0u, arg_0.x)));
    var var_1 = func_5(global0[_wgslsmith_index_u32(19457u, 11u)], any(vec2<bool>(true, true)), -1336f, func_4(Struct_4(2147483647i ^ _wgslsmith_mod_i32(u_input.a.x, 0i), Struct_3(func_2(true), func_2(global0[_wgslsmith_index_u32(0u, 11u)]), func_2(global0[_wgslsmith_index_u32(4294967295u, 11u)]))), func_3(-(vec3<i32>(22251i, u_input.a.x, u_input.a.x) << (vec3<u32>(41432u, 1u, 0u) % vec3<u32>(32u))), vec2<bool>(true, true), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 135f)))), select(select(arg_0.x, false, arg_0.x), !global0[_wgslsmith_index_u32(4294967295u, 11u)], false)), Struct_2(vec3<i32>(_wgslsmith_mod_i32(u_input.a.x, 1i), -20967i, min(-1i, -1i))), !(!arg_0)));
    var_0 = _wgslsmith_dot_vec3_u32(~(~(~(~vec3<u32>(0u, 0u, 0u)))), countOneBits(min(abs(firstTrailingBit(vec3<u32>(0u, 0u, 1u))), vec3<u32>(firstLeadingBit(0u), _wgslsmith_div_u32(4294967295u, 57446u), _wgslsmith_dot_vec2_u32(vec2<u32>(9217u, 21140u), vec2<u32>(4294967295u, 36002u))))));
    let var_2 = select(!var_1.b, vec3<bool>(global0[_wgslsmith_index_u32(1u, 11u)], true, !(false & global0[_wgslsmith_index_u32(698u, 11u)]) && any(vec4<bool>(false, false, false, arg_0.x))), var_1.b.x);
    var var_3 = Struct_2(vec3<i32>(-28133i, -1i, 19553i));
    return vec4<bool>(true, true, true, true);
}

fn func_6(arg_0: vec4<bool>, arg_1: vec4<bool>, arg_2: f32) -> u32 {
    global0 = array<bool, 11>();
    global0 = array<bool, 11>();
    let var_0 = func_3(~(~(~vec3<i32>(-2147483647i, u_input.a.x, u_input.a.x))), arg_1.xw, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, 1451f)))), !global0[_wgslsmith_index_u32(21206u, 11u)]);
    var var_1 = Struct_2(reverseBits(-_wgslsmith_sub_vec3_i32(vec3<i32>(var_0, 0i, 49524i) & vec3<i32>(u_input.a.x, var_0, -26932i), min(vec3<i32>(2147483647i, var_0, u_input.a.x), vec3<i32>(8145i, u_input.a.x, 3020i)))));
    global0 = array<bool, 11>();
    return _wgslsmith_mod_u32(1u, 19927u) >> (~(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 2162u, 60951u, 4294967295u), ~vec4<u32>(10409u, 26543u, 4294967295u, 1u)) << (countOneBits(_wgslsmith_div_u32(0u, 1u)) % 32u)) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 11>();
    var var_0 = firstLeadingBit(reverseBits(0u) & (1u | func_6(select(vec4<bool>(true, global0[_wgslsmith_index_u32(100105u, 11u)], global0[_wgslsmith_index_u32(1u, 11u)], true), vec4<bool>(false, false, global0[_wgslsmith_index_u32(0u, 11u)], global0[_wgslsmith_index_u32(4294967295u, 11u)]), true), func_1(vec3<bool>(false, global0[_wgslsmith_index_u32(0u, 11u)], global0[_wgslsmith_index_u32(26816u, 11u)])), _wgslsmith_div_f32(216f, 1540f))));
    let var_1 = _wgslsmith_add_i32(u_input.a.x, u_input.a.x);
    var var_2 = u_input.a;
    var var_3 = Struct_4(u_input.a.x, func_4(Struct_4(~(-1i), Struct_3(func_4(Struct_4(u_input.a.x, Struct_3(Struct_1(vec3<f32>(517f, -1807f, 1391f), vec3<bool>(false, false, global0[_wgslsmith_index_u32(4294967295u, 11u)]), -1218f), Struct_1(vec3<f32>(1000f, 1308f, -439f), vec3<bool>(global0[_wgslsmith_index_u32(29697u, 11u)], global0[_wgslsmith_index_u32(4294967295u, 11u)], false), 1728f), Struct_1(vec3<f32>(-2432f, -3294f, 738f), vec3<bool>(true, global0[_wgslsmith_index_u32(43971u, 11u)], global0[_wgslsmith_index_u32(4294967295u, 11u)]), -176f))), 12543i, Struct_2(vec3<i32>(u_input.a.x, var_1, 1i)), vec3<bool>(true, global0[_wgslsmith_index_u32(1u, 11u)], global0[_wgslsmith_index_u32(5275u, 11u)])).b.b, Struct_1(vec3<f32>(-299f, 453f, -1088f), vec3<bool>(global0[_wgslsmith_index_u32(36593u, 11u)], global0[_wgslsmith_index_u32(2695u, 11u)], global0[_wgslsmith_index_u32(45411u, 11u)]), -1202f), Struct_1(vec3<f32>(-894f, 244f, 1802f), vec3<bool>(global0[_wgslsmith_index_u32(39003u, 11u)], true, global0[_wgslsmith_index_u32(7067u, 11u)]), 1193f))), -50234i, Struct_2(vec3<i32>(1i, var_1, u_input.a.x) ^ _wgslsmith_div_vec3_i32(vec3<i32>(46487i, 1i, var_2.x), vec3<i32>(var_2.x, var_2.x, -21908i))), vec3<bool>(false, true, any(func_5(global0[_wgslsmith_index_u32(61821u, 11u)], global0[_wgslsmith_index_u32(0u, 11u)], -2067f, Struct_4(u_input.a.x, Struct_3(Struct_1(vec3<f32>(-636f, 664f, -1654f), vec3<bool>(true, true, global0[_wgslsmith_index_u32(78407u, 11u)]), 198f), Struct_1(vec3<f32>(-907f, -810f, -312f), vec3<bool>(global0[_wgslsmith_index_u32(12233u, 11u)], false, true), -1559f), Struct_1(vec3<f32>(1000f, -1000f, -927f), vec3<bool>(true, global0[_wgslsmith_index_u32(43685u, 11u)], true), -1247f)))).b))).b);
    global0 = array<bool, 11>();
    var_2 = vec2<i32>(reverseBits(var_1), 14269i);
    let x = u_input.a;
    s_output = StorageBuffer(var_3.b.b.c, vec2<u32>(1u, 1u), vec3<f32>(-188f, _wgslsmith_f_op_f32(982f * 1343f), var_3.b.b.a.x), firstLeadingBit(var_1));
}

