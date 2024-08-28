struct Struct_1 {
    a: u32,
    b: u32,
    c: vec3<bool>,
    d: i32,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: u32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_1) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1057f) * _wgslsmith_f_op_f32(abs(-1403f))))), _wgslsmith_f_op_f32(max(-1296f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1623f, -752f))), 749f))), true));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(var_0 * 1024f), 430f, 1399f, _wgslsmith_f_op_f32(f32(-1f) * -1158f));
    let var_2 = Struct_2(vec3<u32>(reverseBits(u_input.c.x), u_input.c.x, 1u), arg_1, vec4<bool>(u_input.c.x <= arg_1.a, arg_1.c.x, true, arg_0.x & true));
    let var_3 = var_2;
    var var_4 = true;
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -270f)));
}

fn func_3(arg_0: f32, arg_1: vec4<f32>) -> vec3<bool> {
    var var_0 = vec3<f32>(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(967f, 373f, true))), arg_1.x);
    var_0 = arg_1.wyx;
    var var_1 = -43553i;
    var var_2 = var_0.x;
    let var_3 = firstLeadingBit(~abs(firstTrailingBit(~u_input.c.x)));
    return !(!select(vec3<bool>(all(vec2<bool>(false, false)), true, true), vec3<bool>(true, true, true), any(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)))));
}

fn func_4(arg_0: f32, arg_1: Struct_2) -> u32 {
    let var_0 = false;
    var var_1 = u_input.e;
    var_1 = u_input.e;
    var var_2 = _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(arg_0, arg_0), _wgslsmith_f_op_f32(select(arg_0, arg_0, any(vec2<bool>(arg_1.b.c.x, true)))))), -2185f)));
    var_2 = vec2<f32>(arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1782f) * 363f));
    return 12133u;
}

fn func_2(arg_0: vec4<f32>) -> Struct_1 {
    var var_0 = func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x + arg_0.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-453f * 1056f) + _wgslsmith_div_f32(arg_0.x, 2963f)))), Struct_2(~_wgslsmith_mod_vec3_u32(vec3<u32>(0u, 4294967295u, u_input.d), vec3<u32>(1u, 1u, 1u)) & _wgslsmith_mult_vec3_u32(vec3<u32>(0u, 0u, 0u), vec3<u32>(1u, 11090u, u_input.d)), Struct_1(u_input.d, ~u_input.c.x, vec3<bool>(false, true, false), u_input.e.x, u_input.e.wx), vec4<bool>(all(func_3(1421f, arg_0)), any(vec2<bool>(false, false)), func_3(_wgslsmith_f_op_f32(sign(1103f)), arg_0).x, !all(vec2<bool>(true, false)))));
    var_0 = ~_wgslsmith_div_u32(_wgslsmith_mult_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(u_input.c.zx, u_input.c.zx), _wgslsmith_mod_u32(0u, u_input.c.x)), 32033u), ~5668u);
    var_0 = ~(~((abs(u_input.d) >> (~u_input.d % 32u)) << (u_input.d % 32u)));
    var var_1 = Struct_2(vec3<u32>(u_input.d, 4294967295u, ~abs(firstLeadingBit(u_input.d))), Struct_1(u_input.d, 0u, vec3<bool>(true, false, any(vec4<bool>(false, true, true, false))), u_input.b >> ((~u_input.d ^ 6771u) % 32u), ~(-vec2<i32>(u_input.b, 17779i))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), true), true));
    var var_2 = Struct_1(firstTrailingBit(~countOneBits(reverseBits(1u))), ~(1u ^ _wgslsmith_mod_u32(4294967295u, _wgslsmith_mod_u32(u_input.c.x, var_1.a.x))), !var_1.c.wwx, -2147483647i, reverseBits(~vec2<i32>(-57440i >> (0u % 32u), 9252i)));
    return var_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_2(vec4<f32>(1503f, _wgslsmith_f_op_f32(3290f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(273f * -909f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_1(vec4<bool>(false, true, false, false), Struct_1(u_input.c.x, u_input.d, vec3<bool>(false, true, false), u_input.b, u_input.e.zz))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2700f - -1958f) * 130f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-279f + -1184f) - 102f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1000f)) + 1f))));
    var var_1 = Struct_2(vec3<u32>(20664u, max(firstLeadingBit(func_4(205f, Struct_2(vec3<u32>(4294967295u, 21619u, u_input.c.x), var_0, vec4<bool>(true, var_0.c.x, true, var_0.c.x)))), _wgslsmith_clamp_u32(u_input.c.x, u_input.c.x, reverseBits(1u))), _wgslsmith_div_u32(8039u, ~u_input.c.x ^ _wgslsmith_div_u32(var_0.a, 55217u))), func_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(642f, -1000f, -1000f, -124f) - vec4<f32>(-2339f, 519f, 1103f, -1000f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-488f, -332f, 1503f, -1000f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1328f, 1000f, 2168f, -892f))), !vec4<bool>(var_0.c.x, false, false, var_0.c.x)))), !(!vec4<bool>(any(vec2<bool>(true, var_0.c.x)), !var_0.c.x, !var_0.c.x, true)));
    var_1 = Struct_2(~vec3<u32>(~var_0.a, 0u, ~min(31986u, u_input.d)), func_2(vec4<f32>(_wgslsmith_f_op_f32(-1625f * 272f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1457f * 248f), _wgslsmith_f_op_f32(max(-205f, -1000f))), _wgslsmith_f_op_f32(-964f * _wgslsmith_f_op_f32(min(1000f, 622f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-2406f)) * _wgslsmith_f_op_f32(abs(-185f))))), vec4<bool>(false, true, var_0.c.x, !all(vec2<bool>(true, false))));
    var var_2 = -1000f;
    let x = u_input.a;
    s_output = StorageBuffer(~(-29191i), select(u_input.e.zww, reverseBits(max(vec3<i32>(1i, -2147483647i, 2147483647i) << (vec3<u32>(var_0.a, var_0.a, var_0.b) % vec3<u32>(32u)), u_input.e.xyx)), var_1.b.c.x), firstLeadingBit(vec4<i32>(1i, reverseBits(_wgslsmith_mult_i32(-2147483647i, var_0.d)), -18199i, -1i)), 1u, ~select(u_input.e.yzy, -u_input.e.yxx ^ _wgslsmith_add_vec3_i32(u_input.e.zyy, vec3<i32>(32009i, 2147483647i, u_input.a)), var_1.b.c));
}

