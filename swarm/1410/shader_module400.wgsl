struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: vec2<f32>,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec4<bool>,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
    c: i32,
    d: vec2<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1) -> i32 {
    let var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(trunc(1f)), _wgslsmith_f_op_f32(-325f * 1f), arg_0.e)));
    var var_2 = vec3<i32>(firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, 0i, u_input.a.x, u_input.a.x), ~u_input.c)), -47647i, max(-2367i, _wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(14495i, 64724i)) << (1u % 32u))) ^ u_input.c.zzy;
    let var_3 = 46360u;
    let var_4 = ~u_input.c.ww;
    return var_4.x;
}

fn func_2() -> vec4<f32> {
    var var_0 = any(!(!select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true)), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), false))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1153f))), 1063f)));
    var_0 = true;
    var var_2 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(1918f, -1602f, 871f, -102f) * vec4<f32>(-307f, -1110f, 1058f, -318f)), vec4<f32>(-326f, -1102f, -1103f, 906f), all(vec3<bool>(false, true, true)))) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1907f, 799f, -345f, 1000f), vec4<f32>(1000f, -410f, 410f, 568f))))))));
    var var_3 = -vec3<i32>(-1i, _wgslsmith_div_i32(-927i, u_input.a.x), func_3(Struct_1(~vec4<u32>(20478u, u_input.b, 36219u, u_input.b), 45182u, var_2.yz, 0u, _wgslsmith_f_op_f32(-var_2.x))));
    return _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x - _wgslsmith_f_op_f32(-var_2.x))), 1000f, -905f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.x, var_2.x)) * var_2.x))));
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: vec2<bool>) -> Struct_1 {
    var var_0 = ~arg_1.a;
    var_0 = vec4<u32>(1u, firstTrailingBit(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, arg_1.b, arg_1.d), vec3<u32>(u_input.e, u_input.e, var_0.x)) ^ ~u_input.d, 1u << (1u % 32u))), ~1u, u_input.b);
    var_0 = arg_1.a;
    var var_1 = Struct_1(~vec4<u32>(~(~9023u), arg_1.a.x, u_input.d, _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(66857u, var_0.x, var_0.x, var_0.x), vec4<u32>(27543u, arg_1.d, var_0.x, u_input.d)), firstLeadingBit(arg_1.a))), u_input.b, vec2<f32>(arg_1.c.x, 2659f), ~18208u ^ u_input.e, -1676f);
    let var_2 = arg_1;
    return Struct_1(~vec4<u32>(_wgslsmith_sub_u32(~var_1.b, ~arg_1.b), arg_1.a.x, u_input.b & ~4294967295u, arg_1.d | ~63046u), ~1u, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_2.c.x), -200f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(arg_1.e)), _wgslsmith_f_op_f32(abs(var_2.e))))), var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.c.x), _wgslsmith_div_f32(arg_2.x, arg_1.e))))) - arg_2.x));
}

fn func_1(arg_0: vec3<i32>, arg_1: u32) -> Struct_1 {
    let var_0 = func_4(false, Struct_1(~abs(vec4<u32>(u_input.b, arg_1, arg_1, u_input.b)) & ~(~vec4<u32>(arg_1, u_input.b, arg_1, u_input.b)), u_input.d, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1481f, 780f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(907f, 367f))), firstTrailingBit(arg_1) ^ u_input.d, 545f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(769f, 2159f, -1120f, -1000f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1067f, 1281f, -1962f, 151f) * vec4<f32>(-1249f, -766f, 2275f, -613f))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(func_2()), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1030f, -1000f, 1160f, 769f) + vec4<f32>(739f, -1304f, -383f, -2386f)), vec4<bool>(false, true, false, true))))), select(vec2<bool>(true, -7577i == _wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(u_input.c.x, -2147483647i))), !vec2<bool>(true, all(vec4<bool>(false, false, false, false))), select(select(select(vec2<bool>(false, true), vec2<bool>(true, true), false), vec2<bool>(true, false), 13578i <= arg_0.x), vec2<bool>(true, true), vec2<bool>(any(vec3<bool>(true, true, true)), true))));
    var var_1 = !select(vec2<bool>(true, true), select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), false), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true))), select(vec2<bool>(false, false), vec2<bool>(true, true), any(vec4<bool>(true, false, false, true))), vec2<bool>(true, true)), vec2<bool>(!all(vec4<bool>(true, false, false, true)), !any(vec2<bool>(true, false))));
    var_1 = vec2<bool>(any(!select(select(vec4<bool>(var_1.x, true, false, false), vec4<bool>(true, var_1.x, var_1.x, var_1.x), vec4<bool>(var_1.x, true, var_1.x, false)), vec4<bool>(var_1.x, true, false, true), !vec4<bool>(false, false, var_1.x, false))), !all(!vec4<bool>(var_1.x, true, false, var_1.x)) & (-217f < var_0.e));
    var var_2 = Struct_2(var_0, _wgslsmith_dot_vec4_u32(min(var_0.a, vec4<u32>(arg_1, var_0.d, var_0.a.x, 50811u)), _wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_1, 21214u, 21813u, 19479u), var_0.a), abs(var_0.a))) | 0u, vec4<bool>(var_0.e <= var_0.e, any(vec2<bool>(true, true)), true, true), var_0, func_4(!(34680i < _wgslsmith_clamp_i32(u_input.a.x, u_input.c.x, 57736i)), var_0, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(-173f, 148f, var_1.x)), -1164f, var_0.c.x, _wgslsmith_f_op_f32(f32(-1f) * -307f))), !select(!vec2<bool>(var_1.x, true), vec2<bool>(var_1.x, false), vec2<bool>(false, false))));
    let var_3 = Struct_1(~var_0.a, select(u_input.b, countOneBits(23244u), var_2.c.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.e, -1435f)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(var_2.e.c * vec2<f32>(-842f, 974f))))) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -680f), var_2.e.e)), var_2.a.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(822f - 677f) + -613f));
    return func_4(!all(!var_2.c.xzx) == (_wgslsmith_clamp_i32(u_input.c.x, max(u_input.a.x, -90042i), 1i) > ~(~(-21340i))), Struct_1(var_3.a, ~(~var_2.d.d) >> (~(~1u) % 32u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec4_f32(func_2()).yw), _wgslsmith_mult_u32(firstLeadingBit(var_2.b) ^ 26941u, 4294967295u), 973f), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_2.a.c.x), -779f)), var_2.a.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.d.e)), -283f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.e, -1319f, 550f, var_0.e), vec4<f32>(-1394f, var_0.c.x, var_2.e.c.x, 2044f))))))), select(!select(!var_2.c.yy, !vec2<bool>(var_2.c.x, false), false), select(vec2<bool>(u_input.c.x < u_input.c.x, true), vec2<bool>(var_2.c.x, any(vec3<bool>(var_1.x, false, true))), !var_2.c.yw), any(select(var_2.c, !vec4<bool>(true, var_1.x, true, false), var_1.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x ^ 2147483647i, 1i, u_input.a.x | u_input.c.x, max(2147483647i, 0i)), _wgslsmith_mod_vec4_i32(u_input.c, abs(vec4<i32>(u_input.a.x, -2147483647i, 13291i, -6001i)))), -12867i, u_input.c.x), u_input.e ^ u_input.d);
    var var_1 = -168f;
    var var_2 = func_4(true, func_4(true, Struct_1(vec4<u32>(_wgslsmith_div_u32(12030u, u_input.d), u_input.e, ~47863u, _wgslsmith_clamp_u32(var_0.a.x, 53924u, u_input.e)), 16969u, vec2<f32>(_wgslsmith_f_op_f32(-592f + -212f), -687f), ~4294967295u, func_4(true, func_4(true, Struct_1(var_0.a, 0u, var_0.c, u_input.d, -663f), vec4<f32>(1854f, 878f, -932f, var_0.e), vec2<bool>(false, false)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.x, 926f, 113f, -252f)), select(vec2<bool>(false, false), vec2<bool>(true, true), true)).e), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(func_2()))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-474f, 793f, 498f, 142f) + vec4<f32>(var_0.e, var_0.e, var_0.c.x, -1256f)))), vec2<bool>(true, true)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.e, var_0.e, var_0.e, var_0.e) + vec4<f32>(var_0.e, var_0.e, var_0.c.x, var_0.c.x)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1546f, -935f, var_0.e, var_0.e))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.x, 1157f, var_0.e, -207f)))))), !(!select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), false))));
    var_2 = func_1(abs(vec3<i32>(countOneBits(u_input.a.x), 9851i, _wgslsmith_sub_i32(u_input.c.x, -2147483647i))), ~_wgslsmith_div_u32(func_4(true, Struct_1(var_2.a, 93241u, vec2<f32>(160f, var_2.e), var_2.d, -380f), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(467f, -1000f, var_2.e, var_2.c.x), vec4<f32>(var_0.e, var_2.e, 1801f, -512f))), select(vec2<bool>(true, true), vec2<bool>(false, true), true)).d, _wgslsmith_add_u32(var_2.b, 40167u) ^ ~u_input.e));
    var var_3 = _wgslsmith_add_i32(firstTrailingBit(1i), select(~(~_wgslsmith_div_i32(u_input.c.x, u_input.a.x)), func_3(Struct_1(select(vec4<u32>(0u, var_0.d, 4462u, 28356u), var_2.a, false), select(0u, 0u, true), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_2.c.x, var_2.c.x), var_2.c)), _wgslsmith_mult_u32(17120u, var_0.d), _wgslsmith_f_op_f32(var_2.e * 529f))), true));
    var_2 = func_1(_wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(u_input.c.wyx, _wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x, 1i, u_input.a.x) | u_input.c.wzz, _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x, 0i, u_input.a.x), vec3<i32>(-16192i, u_input.c.x, -9907i)))), _wgslsmith_clamp_vec3_i32(~vec3<i32>(1i, u_input.c.x, u_input.c.x), vec3<i32>(u_input.a.x, -2147483647i, u_input.a.x) | _wgslsmith_add_vec3_i32(u_input.c.xxz, vec3<i32>(1i, u_input.a.x, 1i)), select(vec3<i32>(-7729i, 22448i, 2147483647i) >> (var_2.a.wyx % vec3<u32>(32u)), firstLeadingBit(vec3<i32>(u_input.a.x, 2147483647i, u_input.c.x)), vec3<bool>(true, true, true)))), select(~_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(22668u, u_input.e), var_0.a.zw), var_2.a.yz), 1u, true));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(func_2()))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_2.e, var_2.c.x, var_0.e, 1277f), vec4<f32>(-1139f, 180f, var_2.e, 753f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c.x, -974f, -400f, -1062f) + vec4<f32>(var_0.c.x, var_0.c.x, 1199f, var_2.e)))))), _wgslsmith_mod_i32(-_wgslsmith_div_i32(u_input.c.x, u_input.c.x), min(_wgslsmith_sub_i32(-2147483647i, -2147483647i), u_input.a.x)), countOneBits(~_wgslsmith_div_vec2_u32(vec2<u32>(51289u, var_2.d), vec2<u32>(u_input.b, 20996u))), _wgslsmith_f_op_f32(sign(422f)));
}

