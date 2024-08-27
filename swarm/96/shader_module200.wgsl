struct Struct_1 {
    a: vec2<f32>,
    b: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<f32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1) -> vec2<f32> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.a) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-590f, 369f))) - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.a * arg_0.a) * arg_0.a), _wgslsmith_f_op_vec2_f32(-arg_0.a)))), 28830u);
    var var_1 = vec4<i32>(((~u_input.d.x >> (max(arg_0.b, 84365u) % 32u)) ^ ~2147483647i) << (~arg_0.b % 32u), ~_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-37363i, -1i, -2147483647i, -32857i) | vec4<i32>(u_input.d.x, u_input.c.x, u_input.c.x, 1i), -vec4<i32>(u_input.b, u_input.b, u_input.c.x, 34257i)), min(-1i, -1i) << (_wgslsmith_mult_u32(0u, 15125u) % 32u)), -15371i, u_input.d.x);
    var var_2 = Struct_1(vec2<f32>(-520f, -1780f), 54208u);
    let var_3 = arg_0.b;
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-515f, arg_0.a.x)) + var_2.a);
}

fn func_2(arg_0: i32, arg_1: u32, arg_2: vec4<i32>) -> i32 {
    var var_0 = ~vec4<u32>(~u_input.a.x | ~arg_1, firstTrailingBit(_wgslsmith_add_u32(arg_1, 1u)), 19801u >> (arg_1 % 32u), u_input.a.x);
    var var_1 = 23i;
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(362f, -2111f, -1776f)))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1000f, -1075f, -856f)))))));
    var var_3 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2.zy) - _wgslsmith_f_op_vec2_f32(func_3(Struct_1(vec2<f32>(-465f, var_2.x), 125673u)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_2.x, 145f))), vec2<f32>(-1297f, _wgslsmith_f_op_f32(max(var_2.x, var_2.x))))), arg_1 & ~var_0.x);
    var var_4 = ~var_3.b;
    return firstLeadingBit(2147483647i);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32) -> f32 {
    var var_0 = min(_wgslsmith_dot_vec2_i32(~firstLeadingBit(-u_input.d.zx), ~_wgslsmith_sub_vec2_i32(~u_input.c.xy, min(vec2<i32>(u_input.c.x, -1i), vec2<i32>(15363i, 1i)))), u_input.c.x);
    var var_1 = _wgslsmith_div_vec2_i32(-_wgslsmith_mult_vec2_i32(vec2<i32>(3062i, -24723i), u_input.d.xz), u_input.d.zy);
    var_0 = _wgslsmith_dot_vec2_i32(-(vec2<i32>(-1i) * -vec2<i32>(-2147483647i, 2147483647i)) | vec2<i32>(~(~var_1.x), func_2(var_1.x, arg_0.b, _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.d.x, u_input.b, -22787i, var_1.x), vec4<i32>(0i, var_1.x, var_1.x, 21150i)))), ~(~u_input.d.zy));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, _wgslsmith_f_op_f32(1136f + -872f), _wgslsmith_f_op_f32(875f - 986f), -1000f) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-293f, 118f, -1458f, arg_1.a.x))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a.x, -1000f, -294f, 1000f))))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a.x, 1244f, 188f, arg_2)))))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_2, _wgslsmith_f_op_f32(min(1099f, arg_0.a.x)), 209f, _wgslsmith_f_op_f32(arg_0.a.x - -1000f)))), false)));
    let var_3 = arg_0.a.x;
    return arg_0.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_1(vec2<f32>(1619f, -462f), 4294967295u), Struct_1(vec2<f32>(-332f, -482f), u_input.a.x), -471f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2380f + -1251f)))), 1299f);
    var var_1 = abs(max(1u, _wgslsmith_div_u32(u_input.a.x, ~u_input.a.x)));
    var_1 = _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.a.x << (~u_input.a.x % 32u)), vec2<u32>(u_input.a.x & (u_input.a.x | 4294967295u), firstTrailingBit(2264u))) ^ 4294967295u;
    var_1 = ~25388u;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, ~_wgslsmith_mult_vec3_u32(select(vec3<u32>(9964u, 23559u, 48797u), vec3<u32>(2748u, u_input.a.x, 37765u), true) >> ((vec3<u32>(93667u, 4294967295u, u_input.a.x) << (vec3<u32>(0u, u_input.a.x, 1u) % vec3<u32>(32u))) % vec3<u32>(32u)), select(select(vec3<u32>(u_input.a.x, u_input.a.x, 1u), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), true), vec3<u32>(0u, u_input.a.x, u_input.a.x), 826f <= var_0.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_1(Struct_1(var_0, 1u), Struct_1(vec2<f32>(var_0.x, var_0.x), u_input.a.x), -1367f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + _wgslsmith_div_f32(-605f, 826f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-310f + var_0.x))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, var_0.x) - vec3<f32>(-860f, -1255f, var_0.x))) - vec3<f32>(2939f, -1081f, 200f))), vec2<u32>(_wgslsmith_div_u32(~61109u, u_input.a.x), 13797u));
}

