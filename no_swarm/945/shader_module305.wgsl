struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: i32,
    d: bool,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
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

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: Struct_4, arg_1: f32) -> vec2<f32> {
    var var_0 = _wgslsmith_dot_vec2_i32(max(vec2<i32>(~countOneBits(-5825i), (0i & u_input.a.x) << (_wgslsmith_mod_u32(1u, 27686u) % 32u)), u_input.a.wz), vec2<i32>(reverseBits(-40521i), u_input.a.x));
    var_0 = 28436i;
    var_0 = u_input.a.x;
    let var_1 = 1u;
    var_0 = -2147483647i;
    return _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-222f, arg_1))))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-319f, 399f), _wgslsmith_div_vec2_f32(vec2<f32>(arg_1, -1000f), vec2<f32>(-369f, 436f)), !vec2<bool>(arg_0.b.x, true)))))))));
}

fn func_3(arg_0: i32, arg_1: vec2<f32>, arg_2: f32) -> Struct_2 {
    var var_0 = true;
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-164f, arg_1.x), _wgslsmith_f_op_f32(round(arg_2))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_1.x), -1249f)) - -507f)) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_2, 604f)));
    var var_1 = Struct_3(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-548f, 597f), -1415f)) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(arg_2, -200f))))), -853f), ~1u, -34819i, all(vec3<bool>(all(vec3<bool>(false, true, true)), select(true, true, arg_2 >= arg_2), true)), Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1187f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(arg_1.x)), _wgslsmith_f_op_f32(sign(arg_2))))), Struct_1(380f, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(arg_2, -2943f)))), vec2<bool>(!select(true, false, false), false || all(vec3<bool>(false, true, true))), Struct_1(_wgslsmith_div_f32(arg_1.x, -852f), _wgslsmith_div_f32(arg_2, arg_1.x))));
    let var_2 = Struct_3(var_1.a, 65045u, -1i, var_1.d, var_1.e);
    var_0 = true;
    return var_2.e;
}

fn func_1() -> Struct_2 {
    var var_0 = ~(-20874i);
    var_0 = _wgslsmith_mult_i32(~(~(-1i)), countOneBits(-47415i));
    let var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-496f))))));
    var_0 = i32(-1i) * -reverseBits(_wgslsmith_clamp_i32(countOneBits(-1i), _wgslsmith_clamp_i32(u_input.a.x, 1i, 2147483647i), 32010i ^ u_input.a.x));
    var_0 = 58014i;
    return func_3(u_input.a.x, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(Struct_4(Struct_1(962f, -123f), vec3<bool>(true, false, true)), var_1))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, 1000f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(342f, var_1))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1574f, var_1)) - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_1, var_1), vec2<f32>(2384f, -1492f)))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, -783f))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_1 - var_1))));
}

fn func_4(arg_0: Struct_2) -> vec4<f32> {
    var var_0 = ~1u;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_3(_wgslsmith_add_i32(46704i, u_input.a.x) << (~1u % 32u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-506f, -541f), vec2<f32>(arg_0.d.a, arg_0.b.b))) + _wgslsmith_f_op_vec2_f32(func_2(Struct_4(arg_0.b, vec3<bool>(arg_0.c.x, true, true)), 478f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(arg_0.a.b)), _wgslsmith_f_op_f32(arg_0.b.a + -804f))).b.a) * -1000f);
    var var_2 = vec3<u32>(1u, 1u, 1u);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1336f, arg_0.b.a, 313f, arg_0.d.b))))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-648f, arg_0.d.b, arg_0.a.b, arg_0.b.a), vec4<f32>(arg_0.d.a, arg_0.d.b, 381f, -3514f)))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -635f), _wgslsmith_f_op_f32(580f + -150f)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1204f, 369f)))))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -853f), _wgslsmith_f_op_f32(trunc(-697f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-637f, 109f)) - vec2<f32>(1531f, -700f)))));
    let var_1 = _wgslsmith_mod_i32(0i, ~u_input.a.x ^ -1i);
    var var_2 = ~max(~(~vec3<u32>(16303u, 88922u, 20761u)), firstTrailingBit(~vec3<u32>(1u, 92246u, 22655u))) & vec3<u32>(countOneBits(min(1323u, 13876u) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(11025u, 33623u, 0u, 12932u), vec4<u32>(4294967295u, 1u, 1u, 0u))), _wgslsmith_dot_vec3_u32(vec3<u32>(reverseBits(103402u), ~42797u, 79056u), countOneBits(vec3<u32>(4294967295u, 1u, 1u))), ~(~_wgslsmith_sub_u32(107752u, 1u)));
    var var_3 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_4(func_1())) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1100f, var_0.x, -1489f, var_0.x), vec4<f32>(1986f, -1589f, var_0.x, 266f), vec4<bool>(false, false, true, false))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 1000f, var_0.x, var_0.x)))), vec4<f32>(var_0.x, -201f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * _wgslsmith_f_op_f32(var_0.x + var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.x)))))));
    var var_4 = Struct_3(func_3(0i, _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(var_3.x + 1000f), _wgslsmith_f_op_f32(ceil(-261f))))), _wgslsmith_f_op_f32(-var_3.x)).a, max(~1u, 1u), -34623i, true, Struct_2(func_1().a, func_1().a, func_1().c, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_2(Struct_4(Struct_1(461f, -393f), vec3<bool>(true, false, false)), 365f)).x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1000f * 925f))))));
    let var_5 = _wgslsmith_add_vec3_u32(abs(~vec3<u32>(var_4.b, 56402u, 4294967295u)) ^ abs(~(~vec3<u32>(4294967295u, var_4.b, 0u))), ~_wgslsmith_sub_vec3_u32(abs(_wgslsmith_mult_vec3_u32(vec3<u32>(29168u, 4294967295u, 1u), vec3<u32>(12059u, 1u, 12255u))), vec3<u32>(max(var_2.x, var_2.x), var_2.x | 1146u, _wgslsmith_div_u32(var_4.b, 0u))));
    let x = u_input.a;
    s_output = StorageBuffer(-66655i);
}

