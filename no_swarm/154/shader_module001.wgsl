struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: bool,
    b: vec4<u32>,
    c: Struct_2,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    let var_0 = arg_1;
    return firstLeadingBit(-1i);
}

fn func_3(arg_0: vec3<i32>, arg_1: vec3<f32>) -> Struct_3 {
    let var_0 = vec3<bool>(true && !all(vec2<bool>(true, true)), !(!(!(56070u < u_input.c))), _wgslsmith_f_op_f32(-arg_1.x) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(arg_1.x, -1000f))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(arg_1.x)), _wgslsmith_f_op_f32(abs(1235f)))));
    var var_1 = _wgslsmith_add_u32(_wgslsmith_mult_u32(u_input.c, ~0u), ~_wgslsmith_dot_vec4_u32(reverseBits(abs(vec4<u32>(0u, 1u, u_input.c, u_input.c))), vec4<u32>(0u, 4294967295u, select(48314u, 13331u, true), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 4294967295u), vec2<u32>(44177u, 61525u)))));
    let var_2 = 11369i | (25519i << (firstLeadingBit(u_input.c) % 32u));
    var var_3 = -select(42977i, arg_0.x, _wgslsmith_sub_u32(~0u, u_input.c) <= 0u);
    var var_4 = Struct_1(var_0.x || var_0.x, _wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(~u_input.c, ~17003u, u_input.c, u_input.c), vec4<u32>(reverseBits(u_input.c), 4294967295u, ~u_input.c, ~16253u), countOneBits(min(vec4<u32>(30564u, u_input.c, 107268u, 2031u), vec4<u32>(33212u, 0u, u_input.c, u_input.c)))), max(vec4<u32>(min(u_input.c, 1u), min(27064u, u_input.c), 1u, min(u_input.c, 23276u)), vec4<u32>(_wgslsmith_sub_u32(13816u, 0u), u_input.c, 4294967295u, 1u))), !(!all(var_0.yy)), u_input.c);
    return Struct_3(1i != -min(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, -2147483647i, 1i), arg_0), 1i), var_4.b, Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1266f, -384f, arg_1.x, 941f)))), Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(445f, arg_1.x, -1000f, arg_1.x)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, arg_1.x, 1000f, -1000f) - vec4<f32>(arg_1.x, arg_1.x, -914f, arg_1.x))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-994f, arg_1.x, arg_1.x, arg_1.x) - vec4<f32>(529f, -1410f, 373f, -200f))))));
}

fn func_1(arg_0: Struct_3) -> bool {
    var var_0 = arg_0;
    var_0 = func_3(vec3<i32>(min(1i, u_input.d), ~u_input.b, _wgslsmith_clamp_i32(~firstLeadingBit(0i), -11984i, func_2(Struct_1(false, var_0.b, false, var_0.b.x), Struct_1(false, vec4<u32>(0u, 1u, 4294967295u, 120694u), var_0.a, 0u)))), vec3<f32>(var_0.c.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(359f * _wgslsmith_f_op_f32(arg_0.d.a.x - arg_0.d.a.x))), var_0.d.a.x));
    let var_1 = _wgslsmith_f_op_vec3_f32(-arg_0.d.a.zww);
    var_0 = func_3(vec3<i32>(30210i, 2147483647i, max(u_input.d, ~u_input.e.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.d.a.x, arg_0.c.a.x, var_0.c.a.x))), var_1), var_1)) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-var_1))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.c.a.xzz))))));
    var var_2 = arg_0.c;
    return !(var_0.a & !var_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -_wgslsmith_dot_vec2_i32(u_input.e, u_input.a);
    let var_1 = u_input.e;
    var_0 = u_input.d;
    var_0 = var_1.x & ~(~var_1.x);
    var var_2 = _wgslsmith_mult_vec2_u32(select(select(~vec2<u32>(u_input.c, 33086u), _wgslsmith_div_vec2_u32(~vec2<u32>(0u, u_input.c), vec2<u32>(u_input.c, 1529u)), func_1(Struct_3(false, vec4<u32>(1u, 4294967295u, 22023u, 23340u), Struct_2(vec4<f32>(727f, 1599f, 413f, -242f)), Struct_2(vec4<f32>(-1210f, -218f, -635f, -1470f))))), vec2<u32>(~1u, 4294967295u >> (u_input.c % 32u)) ^ _wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 91595u) | vec2<u32>(u_input.c, 111944u), ~vec2<u32>(u_input.c, 1u)), vec2<bool>(true, true)), vec2<u32>(1u, ~(~u_input.c) << (_wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(u_input.c, 225u)), vec2<u32>(5747u, u_input.c)) % 32u)));
    var_2 = vec2<u32>(_wgslsmith_clamp_u32(firstTrailingBit(func_3(vec3<i32>(20016i, u_input.a.x, -1i), vec3<f32>(405f, -1679f, 524f)).b.x), min(2005u, ~u_input.c), u_input.c), ~u_input.c) | (~select(vec2<u32>(u_input.c, 15147u), _wgslsmith_div_vec2_u32(vec2<u32>(var_2.x, 1u), vec2<u32>(u_input.c, 39739u)), select(vec2<bool>(true, true), vec2<bool>(true, false), true)) & _wgslsmith_mod_vec2_u32(countOneBits(~vec2<u32>(u_input.c, u_input.c)), ~(vec2<u32>(var_2.x, 80203u) & vec2<u32>(61379u, 0u))));
    var_0 = firstTrailingBit(-(~(~(~u_input.e.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(func_3(_wgslsmith_add_vec3_i32(select(vec3<i32>(u_input.a.x, -1i, 0i), vec3<i32>(u_input.d, 33331i, -45076i), vec3<bool>(true, false, true)), ~vec3<i32>(var_1.x, 1i, u_input.d)), vec3<f32>(_wgslsmith_f_op_f32(827f - -712f), _wgslsmith_f_op_f32(sign(1687f)), _wgslsmith_f_op_f32(sign(-478f)))).c.a.wxz, _wgslsmith_div_vec3_f32(func_3(vec3<i32>(9455i, u_input.b, var_1.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(455f, 630f, 756f) * vec3<f32>(-992f, 1657f, 599f))).c.a.zwz, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1052f, -1000f, 1133f) + vec3<f32>(-1000f, 1092f, 830f)))))));
}

