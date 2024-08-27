struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: vec3<f32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: u32,
    d: vec4<i32>,
    e: f32,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_4,
    d: vec3<i32>,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec3<f32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -74941i;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_4, arg_1: f32, arg_2: Struct_1, arg_3: Struct_5) -> f32 {
    global0 = u_input.a.x;
    var var_0 = Struct_1(_wgslsmith_mod_u32(arg_0.a.c, 4294967295u), arg_3.a.b, vec3<f32>(_wgslsmith_f_op_f32(step(arg_3.b.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.b.a)))), -1425f, _wgslsmith_f_op_f32(trunc(404f))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-639f * 193f))) - _wgslsmith_div_f32(arg_2.d.x, _wgslsmith_f_op_f32(round(arg_1)))), -774f, _wgslsmith_f_op_f32(arg_2.d.x - _wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(min(arg_0.a.e, arg_0.a.e)))), -389f));
    let var_1 = 1246f <= var_0.d.x;
    var var_2 = arg_0.a.c;
    var_2 = arg_3.a.b.x;
    return _wgslsmith_f_op_f32(-143f + -150f);
}

fn func_2() -> Struct_4 {
    global0 = u_input.b ^ countOneBits(u_input.b << (~(~1u) % 32u));
    var var_0 = vec2<f32>(1164f, _wgslsmith_f_op_f32(abs(431f)));
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) + _wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.x, _wgslsmith_f_op_f32(func_3(Struct_4(Struct_3(0u, Struct_2(var_0.x), 1u, vec4<i32>(u_input.b, -53015i, u_input.b, u_input.b), var_0.x)), _wgslsmith_f_op_f32(exp2(var_0.x)), Struct_1(0u, vec3<u32>(0u, 49999u, 4294967295u), vec3<f32>(var_0.x, -107f, var_0.x), vec4<f32>(-355f, var_0.x, var_0.x, -1772f)), Struct_5(Struct_1(4294967295u, vec3<u32>(1u, 8836u, 15144u), vec3<f32>(1289f, var_0.x, 756f), vec4<f32>(-102f, -226f, var_0.x, var_0.x)), Struct_2(462f), Struct_4(Struct_3(0u, Struct_2(604f), 32852u, vec4<i32>(-2147483647i, u_input.a.x, -1i, 0i), var_0.x)), u_input.a, Struct_3(76946u, Struct_2(-1044f), 21407u, vec4<i32>(u_input.b, 24329i, -15182i, -1i), var_0.x)))), true)) - 1655f));
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(var_0.x)))), 537f);
    let var_1 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-458f, var_0.x))))))));
    return Struct_4(Struct_3(select(abs(~71442u), ~reverseBits(83997u), false), Struct_2(var_1.x), ~firstLeadingBit(68053u), vec4<i32>(countOneBits(i32(-1i) * -1i), -38399i, u_input.a.x, max(1i, -12993i)), 1579f));
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<u32>) -> Struct_2 {
    var var_0 = !vec2<bool>(!(true & any(vec4<bool>(false, false, true, false))), true);
    let var_1 = _wgslsmith_add_vec4_u32(~(~_wgslsmith_mod_vec4_u32(vec4<u32>(60980u, 1538u, 36836u, 4294967295u) | vec4<u32>(arg_3.x, 32544u, 64336u, 37196u), reverseBits(vec4<u32>(arg_2.a, 1u, arg_1.b.x, 45947u)))), ~reverseBits(~vec4<u32>(arg_3.x, 0u, arg_1.b.x, arg_1.a)) << (firstTrailingBit(vec4<u32>(~5944u, arg_1.a >> (80125u % 32u), ~arg_2.a, _wgslsmith_sub_u32(arg_1.b.x, arg_3.x))) % vec4<u32>(32u)));
    var var_2 = !vec3<bool>((_wgslsmith_dot_vec3_u32(var_1.xyw, var_1.www) & select(arg_1.b.x, var_1.x, true)) >= _wgslsmith_mult_u32(_wgslsmith_add_u32(arg_1.a, arg_1.a), max(12511u, var_1.x)), var_0.x, 4294967295u < (~arg_2.a & abs(12234u)));
    var var_3 = func_2();
    let var_4 = vec3<i32>(var_3.a.d.x, _wgslsmith_dot_vec2_i32(-(~(vec2<i32>(-46099i, 0i) >> (arg_1.b.xx % vec2<u32>(32u)))), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, -1i, u_input.a.x, u_input.a.x) | var_3.a.d, var_3.a.d ^ var_3.a.d), -2147483647i)), _wgslsmith_mult_i32(arg_0.x, 62883i));
    return var_3.a.b;
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: vec2<u32>, arg_3: Struct_4) -> u32 {
    let var_0 = Struct_5(Struct_1(~arg_1, abs(~vec3<u32>(arg_1, 52135u, 20305u)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3.a.b.a, arg_3.a.e, -1402f) + vec3<f32>(907f, arg_0.a, -1000f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a, arg_3.a.b.a, arg_0.a))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.a.b.a + arg_3.a.b.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_3.a.e))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(816f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_3.a.b.a)) * -1104f))), func_2().a.b, arg_3, u_input.a, func_2().a);
    var var_1 = Struct_5(var_0.a, func_1(~(~vec3<i32>(arg_3.a.d.x, 1i, var_0.d.x)), var_0.a, Struct_1(_wgslsmith_add_u32(arg_3.a.a, arg_3.a.a) & 1u, _wgslsmith_mod_vec3_u32(abs(vec3<u32>(var_0.e.c, arg_3.a.a, arg_3.a.c)), var_0.a.b | var_0.a.b), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(467f, 318f, 1132f)))), var_0.a.d), _wgslsmith_clamp_vec2_u32(select(~vec2<u32>(10462u, 9187u), var_0.a.b.yx, select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true))), max(vec2<u32>(36073u, 52737u), _wgslsmith_div_vec2_u32(arg_2, vec2<u32>(arg_2.x, arg_1))), abs(vec2<u32>(17044u, 13202u)))), func_2(), arg_3.a.d.wxw, func_2().a);
    let var_2 = any(!select(select(vec2<bool>(true, true), vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false))), vec2<bool>(true, true), all(vec4<bool>(true, false, false, false))));
    var var_3 = abs(arg_3.a.d.x);
    let var_4 = var_0.a.d.xw;
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 30860i;
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1736f - _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1417f, _wgslsmith_f_op_f32(1722f + 1330f))))) + 1806f);
    var var_1 = ~select(firstLeadingBit(~(~5421u)), 1u, false);
    var_1 = max(1u, _wgslsmith_mod_u32(~_wgslsmith_add_u32(5469u, 41465u), ~(~42733u))) ^ _wgslsmith_clamp_u32(0u, _wgslsmith_clamp_u32(firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 11184u, 12581u), vec3<u32>(14518u, 34323u, 66213u))), 4294967295u, ~1u), _wgslsmith_add_u32(func_4(func_1(u_input.a, Struct_1(28953u, vec3<u32>(3013u, 4294967295u, 30947u), vec3<f32>(-524f, -760f, 717f), vec4<f32>(-928f, 1473f, 120f, 474f)), Struct_1(0u, vec3<u32>(42853u, 1u, 0u), vec3<f32>(-1000f, 1722f, -1858f), vec4<f32>(-117f, 262f, -2321f, 1000f)), vec2<u32>(73499u, 0u)), 0u, vec2<u32>(4294967295u, 32909u) << (vec2<u32>(0u, 0u) % vec2<u32>(32u)), Struct_4(Struct_3(12769u, Struct_2(251f), 1u, vec4<i32>(41756i, 76101i, 2147483647i, -2147483647i), -1364f))), 1u));
    var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(1479f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-378f + 245f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(-401f)))), _wgslsmith_f_op_f32(-1177f - _wgslsmith_f_op_f32(-756f + _wgslsmith_div_f32(-102f, -116f))), _wgslsmith_f_op_f32(865f + _wgslsmith_f_op_f32(-350f - -1000f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_div_u32(~1u, abs(~1u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-2017f - 160f), _wgslsmith_f_op_f32(f32(-1f) * -428f), _wgslsmith_f_op_f32(max(1397f, -892f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1117f, 2754f, -2044f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-237f, -119f, 613f)))))), max(firstTrailingBit(~vec3<u32>(4294967295u, 4294967295u, 0u)) ^ vec3<u32>(52896u, 21510u, ~44606u), ~vec3<u32>(_wgslsmith_mult_u32(0u, 21816u), ~1u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 85197u, 116388u), vec3<u32>(22795u, 5614u, 1u)))));
}

