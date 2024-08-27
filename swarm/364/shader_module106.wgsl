struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: vec2<bool>,
    d: vec4<bool>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
    c: vec2<u32>,
}

struct Struct_5 {
    a: i32,
    b: vec4<bool>,
    c: Struct_4,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: bool) -> vec3<f32> {
    var var_0 = min(select(u_input.d, vec4<u32>(u_input.b.x, _wgslsmith_mod_u32(countOneBits(0u), _wgslsmith_add_u32(u_input.d.x, 9172u)), ~117831u, _wgslsmith_dot_vec2_u32(u_input.b.xx, vec2<u32>(44934u, u_input.a)) & (0u & u_input.a)), (i32(-1i) * -15536i) <= (_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, 0i, u_input.c), vec3<i32>(-2147483647i, u_input.c, 23663i)) & abs(u_input.c))), u_input.b | (_wgslsmith_div_vec4_u32(vec4<u32>(1u, 115100u, u_input.a, u_input.e), vec4<u32>(u_input.b.x, 16131u, u_input.a, 4294967295u)) << (countOneBits(~vec4<u32>(4294967295u, u_input.d.x, u_input.a, u_input.a)) % vec4<u32>(32u))));
    let var_1 = Struct_4(_wgslsmith_sub_i32(-17875i, _wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(44214i, -1i)), ~vec2<i32>(u_input.c, u_input.c))), Struct_1(569f, !(!(!vec4<bool>(arg_0, arg_0, true, arg_0))), vec2<bool>(arg_0, arg_0), vec4<bool>(any(select(vec4<bool>(arg_0, arg_0, arg_0, true), vec4<bool>(arg_0, false, true, arg_0), vec4<bool>(true, true, arg_0, arg_0))), arg_0, false, any(select(vec3<bool>(arg_0, arg_0, true), vec3<bool>(false, arg_0, true), vec3<bool>(false, arg_0, false)))), u_input.d.x), ~u_input.d.yz);
    var var_2 = _wgslsmith_mod_i32(~abs(-2147483647i), u_input.c);
    let var_3 = Struct_5(_wgslsmith_sub_i32(u_input.c, _wgslsmith_sub_i32(-2147483647i, u_input.c)), !select(select(vec4<bool>(false, var_1.b.c.x, false, arg_0), var_1.b.b, var_1.b.b), !select(var_1.b.d, vec4<bool>(var_1.b.c.x, var_1.b.b.x, arg_0, false), var_1.b.b.x), all(var_1.b.d)), Struct_4(-(u_input.c | 37387i) >> (42855u % 32u), var_1.b, max(~var_1.c, vec2<u32>(var_1.b.e & u_input.e, _wgslsmith_sub_u32(var_1.b.e, var_0.x)))), vec3<i32>(-1i, select(u_input.c, ~_wgslsmith_add_i32(var_1.a, 2147483647i), u_input.b.x >= _wgslsmith_add_u32(4294967295u, var_1.c.x)), select(var_1.a, 1i, !var_1.b.d.x)));
    var var_4 = Struct_3(_wgslsmith_add_u32(_wgslsmith_add_u32(9132u, var_0.x), _wgslsmith_sub_u32(abs(17160u), firstLeadingBit(53241u))));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-var_3.c.b.a), 2196f, -1033f), _wgslsmith_div_vec3_f32(vec3<f32>(-378f, _wgslsmith_f_op_f32(-var_1.b.a), 216f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.c.b.a, var_1.b.a, var_3.c.b.a) * vec3<f32>(var_1.b.a, -806f, var_1.b.a)))))));
}

fn func_2(arg_0: u32, arg_1: vec2<bool>, arg_2: Struct_5, arg_3: i32) -> u32 {
    var var_0 = true;
    let var_1 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(true)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(441f, arg_2.c.b.a, arg_2.c.b.a) * _wgslsmith_f_op_vec3_f32(func_3(false))))), vec3<f32>(1000f, 421f, arg_2.c.b.a)));
    var var_2 = var_1;
    var_0 = true;
    return _wgslsmith_mult_u32(4294967295u & (~_wgslsmith_sub_u32(arg_2.c.c.x, 0u) ^ _wgslsmith_mod_u32(u_input.e, _wgslsmith_add_u32(u_input.b.x, arg_2.c.b.e))), arg_2.c.b.e);
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: Struct_5, arg_3: vec4<bool>) -> Struct_1 {
    var var_0 = reverseBits(u_input.d.yyy);
    var_0 = vec3<u32>(firstLeadingBit(var_0.x), abs(_wgslsmith_sub_u32(1u, _wgslsmith_div_u32(func_2(u_input.d.x, vec2<bool>(arg_3.x, false), Struct_5(1i, arg_3, Struct_4(27896i, Struct_1(arg_2.c.b.a, vec4<bool>(true, arg_2.b.x, true, arg_3.x), arg_2.c.b.d.xx, arg_3, 7698u), vec2<u32>(arg_2.c.c.x, arg_2.c.b.e)), arg_2.d), 1i), arg_2.c.b.e))), ~_wgslsmith_sub_u32(36682u, 24845u));
    var var_1 = ~(~(~func_2(var_0.x, arg_2.c.b.b.wx, arg_2, -19748i)));
    var var_2 = Struct_5(_wgslsmith_sub_i32(~(-arg_2.d.x), arg_2.d.x), !select(vec4<bool>(arg_2.c.b.b.x && arg_3.x, true, any(arg_3.xx), arg_2.b.x), !arg_3, select(select(arg_2.b, arg_2.b, arg_3), arg_3, arg_2.b)), arg_2.c, arg_2.d);
    var_2 = Struct_5(firstLeadingBit(abs(arg_0)), !(!(!vec4<bool>(false, arg_2.c.b.d.x, var_2.b.x, false))), arg_2.c, ~(~vec3<i32>(-28800i, -arg_1, -25783i >> (arg_2.c.c.x % 32u))));
    return arg_2.c.b;
}

fn func_4(arg_0: Struct_2, arg_1: i32) -> i32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-761f, arg_0.a.a, 687f) - vec3<f32>(1000f, arg_0.c.a, -785f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.c.a, 670f, -216f) * vec3<f32>(arg_0.d, 447f, arg_0.a.a)) - vec3<f32>(arg_0.a.a, arg_0.a.a, arg_0.d)))));
    var var_1 = 63115u;
    var var_2 = _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(-1i) * -max(vec4<i32>(5686i, 0i, u_input.c, -54814i), vec4<i32>(arg_1, arg_1, 1i, 2147483647i))), vec4<i32>(-1i, _wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(-38562i, 0i, -2147483647i)), ~(~vec3<i32>(1i, 0i, -2648i))), -arg_1, 0i));
    let var_3 = 4294967295u;
    var var_4 = Struct_4(0i, arg_0.e, max(u_input.d.zw, ~_wgslsmith_sub_vec2_u32(u_input.b.zz, u_input.d.yy)));
    return min(~var_4.a, -16115i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = Struct_3(57036u);
    let var_2 = vec2<i32>(firstTrailingBit(0i), func_4(Struct_2(func_1(u_input.c, i32(-1i) * -16846i, Struct_5(-31751i, vec4<bool>(false, var_0, false, var_0), Struct_4(u_input.c, Struct_1(-805f, vec4<bool>(var_0, true, var_0, var_0), vec2<bool>(true, var_0), vec4<bool>(false, false, var_0, true), u_input.e), u_input.b.zx), vec3<i32>(-2147483647i, u_input.c, u_input.c)), select(vec4<bool>(var_0, var_0, var_0, true), vec4<bool>(true, true, var_0, false), var_0)), 44265i, Struct_1(_wgslsmith_f_op_f32(1799f + 858f), !vec4<bool>(false, true, var_0, var_0), !vec2<bool>(var_0, false), vec4<bool>(false, true, var_0, var_0), 15176u), 194f, Struct_1(_wgslsmith_f_op_f32(max(-2986f, -1146f)), func_1(u_input.c, u_input.c, Struct_5(u_input.c, vec4<bool>(var_0, var_0, false, var_0), Struct_4(108730i, Struct_1(-222f, vec4<bool>(false, false, var_0, var_0), vec2<bool>(var_0, var_0), vec4<bool>(false, false, var_0, var_0), var_1.a), u_input.b.zw), vec3<i32>(u_input.c, -35418i, u_input.c)), vec4<bool>(true, var_0, false, true)).b, !vec2<bool>(var_0, var_0), select(vec4<bool>(var_0, true, false, true), vec4<bool>(true, var_0, false, var_0), vec4<bool>(var_0, var_0, true, var_0)), _wgslsmith_div_u32(7638u, var_1.a))), -22636i));
    let var_3 = Struct_4(_wgslsmith_add_i32(abs(-2147483647i & firstLeadingBit(var_2.x)), ~reverseBits(select(var_2.x, -10647i, false))), func_1(2147483647i, 0i, Struct_5(u_input.c, !vec4<bool>(true, true, var_0, var_0), Struct_4(-u_input.c, func_1(var_2.x, 31771i, Struct_5(28839i, vec4<bool>(true, true, false, true), Struct_4(15350i, Struct_1(-1014f, vec4<bool>(true, var_0, var_0, var_0), vec2<bool>(var_0, true), vec4<bool>(true, true, var_0, true), 23828u), vec2<u32>(var_1.a, u_input.e)), vec3<i32>(0i, u_input.c, -14388i)), vec4<bool>(var_0, var_0, true, var_0)), vec2<u32>(var_1.a, var_1.a)), vec3<i32>(abs(2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(var_2.x, -2147483647i, -1i), vec3<i32>(-1i, u_input.c, var_2.x)), -u_input.c)), !vec4<bool>(true, true, true, var_0)), vec2<u32>(u_input.e, _wgslsmith_dot_vec4_u32(select(u_input.b, vec4<u32>(4294967295u, var_1.a, var_1.a, u_input.d.x), false), u_input.b)) | ~vec2<u32>(~u_input.a, 1u));
    let var_4 = ~(~min(_wgslsmith_sub_u32(4294967295u, 0u), max(67514u, var_3.c.x))) ^ ~(~(~_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(4294967295u, var_3.c.x, var_1.a, u_input.e))));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(~u_input.d.xzy), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_3.b.a, var_3.b.a)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_3.b.a, var_3.b.a))) - vec2<f32>(var_3.b.a, -394f)))));
}

