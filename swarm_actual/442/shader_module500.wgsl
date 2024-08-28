struct Struct_1 {
    a: vec4<u32>,
    b: vec4<f32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: vec3<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: u32,
    d: f32,
    e: f32,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec2<u32>,
    c: Struct_2,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> vec4<i32> {
    var var_0 = u_input.a.x;
    var_0 = 1i;
    var_0 = u_input.b.x;
    var var_1 = _wgslsmith_div_i32(0i, ~u_input.a.x);
    var_0 = u_input.a.x;
    return _wgslsmith_sub_vec4_i32(u_input.a | vec4<i32>(select(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, u_input.a.x), u_input.b.zy), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 0i, -15409i), vec3<i32>(-74431i, -2147483647i, u_input.b.x)), true), _wgslsmith_dot_vec4_i32(vec4<i32>(-14150i, 2234i, u_input.a.x, u_input.b.x), abs(u_input.a)), ~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, u_input.a.x, u_input.b.x, -1i), u_input.a), ~abs(13951i)), countOneBits(-(vec4<i32>(-50274i, u_input.a.x, 1i, -2147483647i) << (select(arg_0.a, vec4<u32>(34150u, arg_0.a.x, 1u, 30626u), false) % vec4<u32>(32u)))));
}

fn func_2(arg_0: vec4<bool>, arg_1: vec2<i32>, arg_2: bool, arg_3: bool) -> Struct_3 {
    let var_0 = ~(-max(func_3(Struct_1(vec4<u32>(65709u, 1u, 66743u, 19058u), vec4<f32>(1652f, -874f, 382f, -1295f), vec3<f32>(-1488f, 129f, -1052f)), ~0u), -(u_input.a ^ u_input.a)));
    let var_1 = Struct_1(vec4<u32>(38842u, 4294967295u, 1u, ~(1u >> (0u % 32u))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1913f + -345f), -1103f, !arg_3)), -1366f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-236f, -121f, true))), -522f) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(154f, -359f, -211f, -1314f))) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-166f, 1278f, -554f, -2139f), vec4<f32>(-656f, 307f, 1195f, -1212f)))) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -217f), 565f, -1135f, _wgslsmith_f_op_f32(f32(-1f) * -1354f)))), vec3<f32>(-532f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1391f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(316f + _wgslsmith_f_op_f32(-543f - 1235f))))));
    let var_2 = firstTrailingBit(firstTrailingBit(var_1.a.xz));
    var var_3 = Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(1387f, 582f)), var_1.b.x), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-123f, var_1.b.x))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_1.c.x, var_1.c.x))), true)))), _wgslsmith_mult_vec2_u32(vec2<u32>(var_2.x, abs(abs(var_2.x))), vec2<u32>(_wgslsmith_mod_u32(1u, 9338u), ~1u)), Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-410f, _wgslsmith_div_f32(1252f, 648f), _wgslsmith_f_op_f32(abs(var_1.c.x)))), var_1, vec3<f32>(_wgslsmith_f_op_f32(-990f * 2834f), -1570f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -225f)))), var_1));
    var_3 = Struct_4(_wgslsmith_f_op_vec2_f32(var_1.b.wx * _wgslsmith_f_op_vec2_f32(sign(var_1.c.zy))), var_3.b & countOneBits(abs(var_3.b)), Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(460f, 1027f, var_1.b.x)))), Struct_1(vec4<u32>(var_1.a.x, var_2.x, var_2.x, var_1.a.x) & vec4<u32>(11638u, var_2.x, var_2.x, 4294967295u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1073f, 142f, var_1.c.x, var_1.c.x)), _wgslsmith_div_vec3_f32(var_1.c, _wgslsmith_f_op_vec3_f32(var_1.b.yyx + vec3<f32>(109f, var_3.a.x, -980f)))), _wgslsmith_f_op_vec3_f32(abs(var_1.b.xxx)), var_1));
    return Struct_3(_wgslsmith_div_u32(~(_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.x, var_3.b.x, 4531u), vec3<u32>(var_1.a.x, 37968u, var_3.b.x)) & 7041u), 1u), 227f, _wgslsmith_sub_u32(~_wgslsmith_sub_u32(1u, firstLeadingBit(var_3.b.x)), 1u | ~var_1.a.x), var_3.c.b.c.x, 1110f);
}

fn func_1(arg_0: i32, arg_1: vec4<bool>) -> vec4<f32> {
    var var_0 = func_2(vec4<bool>(true, any(vec2<bool>(true, arg_1.x)) == !arg_1.x, all(arg_1.zxw), all(arg_1)), vec2<i32>(i32(-1i) * -reverseBits(-1i), arg_0), !arg_1.x || arg_1.x, false);
    let var_1 = firstTrailingBit(vec4<i32>(reverseBits(arg_0 | -11969i), 5298i, arg_0, -abs(-21894i))) & min(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b.x, u_input.a.x, u_input.b.x, arg_0), vec4<i32>(-27413i, 1i, -17186i, u_input.a.x)) ^ (firstLeadingBit(u_input.a) ^ ~vec4<i32>(-31754i, 0i, -13802i, u_input.b.x)), -vec4<i32>(27617i >> (1u % 32u), abs(u_input.b.x), arg_0 & -69335i, ~arg_0));
    var var_2 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(select(var_0.b, -791f, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d))), 1974f), Struct_1(~vec4<u32>(22892u, _wgslsmith_dot_vec3_u32(vec3<u32>(11160u, var_0.a, 1u), vec3<u32>(0u, 1u, 1u)), _wgslsmith_sub_u32(var_0.a, 6637u), _wgslsmith_mod_u32(48692u, var_0.c)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-396f, var_0.d, 842f, var_0.e), vec4<f32>(-1007f, -1000f, 459f, -2325f), vec4<bool>(arg_1.x, false, false, true)))) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.b, var_0.e, 313f, -186f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(127f, var_0.e, 1755f))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_0.e * 506f), var_0.b, var_0.e)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1939f, _wgslsmith_f_op_f32(-1000f * var_0.b), _wgslsmith_f_op_f32(f32(-1f) * -2955f)))), Struct_1(select(_wgslsmith_add_vec4_u32(select(vec4<u32>(0u, 4294967295u, 67769u, var_0.a), vec4<u32>(1u, var_0.c, 31147u, var_0.a), arg_1.x), vec4<u32>(1u, 1u, var_0.a, 29510u)), vec4<u32>(0u, 1u, 0u, 78758u), var_0.c <= 4294967295u), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d, -417f, 1826f, var_0.d)) * vec4<f32>(402f, -258f, var_0.b, var_0.e)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-489f, -1000f, var_0.d, var_0.d))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.d, _wgslsmith_f_op_f32(-var_0.e), _wgslsmith_f_op_f32(643f + var_0.b))))));
    var_0 = func_2(!select(arg_1, arg_1, select(true, any(vec3<bool>(false, arg_1.x, arg_1.x)), true)), ~(-abs(-u_input.a.xx)), !arg_1.x, -771f > _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-214f, -316f))));
    let var_3 = ~4294967295u | max(min(abs(var_0.c ^ var_0.a), var_0.a), var_0.c);
    return _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_2.b.b + var_2.d.b))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-371f, 546f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1130f, -566f) + vec2<f32>(918f, -1164f)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(742f, 1531f)) * vec2<f32>(-1770f, -1997f)))), firstTrailingBit(_wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 1u), ~vec2<u32>(1u, 1u), vec2<u32>(1u, 1u)), countOneBits(vec2<u32>(1u, 1u)) << (vec2<u32>(1u, 1u) % vec2<u32>(32u)))), Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 1063f, 956f)))), Struct_1(vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_f_op_vec4_f32(func_1(u_input.a.x, vec4<bool>(false, true, true, false))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(390f, 358f, 705f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(210f, -1089f, -998f)) * vec3<f32>(_wgslsmith_f_op_f32(2075f + -430f), _wgslsmith_f_op_f32(f32(-1f) * -1123f), _wgslsmith_f_op_f32(455f - -1026f))), Struct_1(min(vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_add_vec4_u32(vec4<u32>(0u, 4294967295u, 1u, 15323u), vec4<u32>(4294967295u, 0u, 14446u, 0u))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1000f, -1224f, -1000f, -1013f)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2148f, -960f, 840f) + vec3<f32>(-775f, 280f, 870f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(542f, -142f, -1067f) + vec3<f32>(725f, -511f, -1510f))))));
    var var_1 = vec4<bool>(true, true, true, !all(vec4<bool>(true, true, true, true)));
    var var_2 = var_0.c.d.b.xzx;
    let var_3 = var_1.wyz;
    let var_4 = Struct_3(1u, 646f, var_0.c.b.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(183f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1378f)))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), -342f);
    var_2 = _wgslsmith_f_op_vec3_f32(-var_0.c.c);
    let x = u_input.a;
    s_output = StorageBuffer(28927i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-284f, var_0.c.c.x, var_4.e, -2338f), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(280f, 770f, var_2.x, -1047f))), var_1.x)))), 842f);
}

