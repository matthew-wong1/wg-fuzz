struct Struct_1 {
    a: vec2<u32>,
    b: vec4<bool>,
    c: vec3<f32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_2,
    c: vec3<u32>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec4<bool>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: f32,
    d: vec2<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: f32) -> vec4<i32> {
    return -(~abs(-firstTrailingBit(vec4<i32>(-1i, 29126i, arg_0, 11689i))));
}

fn func_2() -> u32 {
    var var_0 = _wgslsmith_mult_i32(u_input.b, u_input.c.x);
    var var_1 = select(func_3(u_input.e, -509f), -select(select(vec4<i32>(-20490i, u_input.a, -2147483647i, u_input.b), select(vec4<i32>(-50258i, 2147483647i, u_input.c.x, 38940i), vec4<i32>(2147483647i, u_input.c.x, -13884i, u_input.a), vec4<bool>(true, false, true, true)), true), vec4<i32>(-u_input.b, ~u_input.c.x, i32(-1i) * -2147483647i, 7453i << (u_input.d.x % 32u)), !select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), true)), !select(!select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)));
    var var_2 = var_1.xwz;
    var var_3 = Struct_4(!vec2<bool>(all(vec2<bool>(true, true)), false), Struct_1(abs(vec2<u32>(u_input.d.x << (0u % 32u), 1u)), vec4<bool>(any(vec2<bool>(true, true)), true, true, true), vec3<f32>(-506f, _wgslsmith_f_op_f32(round(-722f)), -880f), _wgslsmith_add_i32(-47454i, -51377i)), vec4<bool>(all(select(vec2<bool>(false, false), vec2<bool>(false, true), true)), all(!select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), true)), true, false), vec4<u32>(~u_input.d.x, 1u, min(abs(u_input.d.x), ~(47595u | u_input.d.x)), u_input.d.x));
    let var_4 = var_3.c;
    return 1u;
}

fn func_1(arg_0: Struct_2) -> f32 {
    var var_0 = ~u_input.d.xzw;
    var_0 = u_input.d.xyw;
    var var_1 = Struct_4(!vec2<bool>(select(true, all(arg_0.a.b.wxy), true), false), arg_0.a, !vec4<bool>(arg_0.a.b.x, arg_0.a.b.x, true, arg_0.a.b.x), ~vec4<u32>(firstLeadingBit(u_input.d.x), ~arg_0.a.a.x, func_2(), _wgslsmith_clamp_u32(4294967295u, 4294967295u, arg_0.a.a.x & 22495u)));
    var_1 = Struct_4(vec2<bool>(true, true), Struct_1(_wgslsmith_mod_vec2_u32(~u_input.d.yx, u_input.d.xw), !(!vec4<bool>(false, false, var_1.a.x, var_1.b.b.x)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(arg_0.a.c - _wgslsmith_f_op_vec3_f32(-arg_0.a.c)))), select(~countOneBits(var_1.b.d), ~var_1.b.d, arg_0.a.c.x >= _wgslsmith_f_op_f32(-var_1.b.c.x))), !var_1.b.b, ~(vec4<u32>(1u, 67583u, ~4294967295u, u_input.d.x >> (4294967295u % 32u)) | ~firstLeadingBit(vec4<u32>(40260u, 130177u, 1u, arg_0.a.a.x))));
    var var_2 = arg_0;
    return 992f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_u32(4294967295u, 4244u);
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(Struct_2(Struct_1(vec2<u32>(4294967295u, 37444u), vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1167f, 804f, 1041f))), ~u_input.c.x)))), _wgslsmith_f_op_f32(-1f));
    let var_2 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(487f, var_1, -321f, var_1)) * vec4<f32>(var_1, -659f, -1893f, 1425f)) - vec4<f32>(_wgslsmith_f_op_f32(min(1771f, var_1)), _wgslsmith_f_op_f32(var_1 - var_1), _wgslsmith_f_op_f32(round(var_1)), _wgslsmith_div_f32(var_1, 319f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_1, var_1, 784f, -158f), vec4<f32>(var_1, -805f, 369f, var_1)))))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(var_1, 674f, false)), _wgslsmith_f_op_f32(-var_1))), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_1, -1102f), 1583f)), 1768f), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(select(-1965f, var_1, true)), _wgslsmith_f_op_f32(f32(-1f) * -149f), _wgslsmith_f_op_f32(-var_1), -1666f), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1037f, 410f, var_1, var_1) * vec4<f32>(var_1, 1000f, -172f, var_1)), vec4<f32>(var_1, -694f, var_1, var_1))))), true))));
    var var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(712f)), _wgslsmith_f_op_f32(func_1(Struct_2(Struct_1(_wgslsmith_mult_vec2_u32(vec2<u32>(26867u, u_input.d.x), u_input.d.zw), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), false), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, -154f, var_1)), -23544i << (u_input.d.x % 32u)))))));
    var_3 = _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_1)) - _wgslsmith_f_op_f32(max(930f, var_1))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-457f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1907f)) * _wgslsmith_f_op_f32(var_1 * var_1)))))));
    var var_4 = Struct_3(~vec3<u32>(~16025u, 1u, 37296u) << ((_wgslsmith_add_vec3_u32(~vec3<u32>(u_input.d.x, u_input.d.x, 8327u), countOneBits(u_input.d.zyy)) & _wgslsmith_mod_vec3_u32(vec3<u32>(0u, 66815u, 15840u) >> (vec3<u32>(4294967295u, u_input.d.x, 34305u) % vec3<u32>(32u)), ~vec3<u32>(u_input.d.x, 1u, 1u))) % vec3<u32>(32u)), Struct_2(Struct_1(u_input.d.xy, !select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false)), _wgslsmith_f_op_vec3_f32(-var_2.zxz), -15260i)), vec3<u32>(~(~u_input.d.x), ~9056u, 35210u) >> (vec3<u32>(~_wgslsmith_dot_vec4_u32(u_input.d, u_input.d), 1u, 4294967295u) % vec3<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(~var_4.a), _wgslsmith_add_vec3_i32(~(-u_input.c), u_input.c), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(1f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_2.yx - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_1, -768f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1095f)) * _wgslsmith_div_f32(-921f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-340f)) - var_1))));
}

