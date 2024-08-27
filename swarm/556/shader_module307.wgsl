struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: vec3<u32>,
    d: u32,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: bool,
    b: vec3<f32>,
    c: Struct_1,
    d: Struct_2,
    e: vec3<u32>,
}

struct Struct_4 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
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

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2() -> Struct_4 {
    let var_0 = Struct_4(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-250f, 1195f, 161f) - vec3<f32>(2102f, 347f, -1182f)))))));
    let var_1 = u_input.c.x;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1585f, _wgslsmith_f_op_f32(f32(-1f) * -1373f), true))));
    let var_3 = u_input.d;
    var var_4 = Struct_1(select(!(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false))), vec3<bool>(true, 0u != (var_3 ^ 46377u), false), true), -_wgslsmith_sub_i32(0i, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -1i), firstLeadingBit(vec2<i32>(0i, 39398i)))), ~min(~u_input.c, u_input.c), ~countOneBits(_wgslsmith_sub_u32(~1u, u_input.a)));
    return var_0;
}

fn func_3(arg_0: Struct_4, arg_1: f32) -> f32 {
    return arg_1;
}

fn func_4(arg_0: f32, arg_1: f32, arg_2: u32) -> i32 {
    let var_0 = true;
    var var_1 = _wgslsmith_f_op_f32(arg_0 * 916f);
    var var_2 = Struct_2(countOneBits(vec4<i32>(1i, firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -20221i, -24758i), vec3<i32>(-2147483647i, -2147483647i, -44754i))), select(_wgslsmith_div_i32(40173i, 2147483647i), _wgslsmith_clamp_i32(2147483647i, -2147483647i, 5935i), true), -_wgslsmith_clamp_i32(-67938i, -1i, -60222i))));
    let var_3 = vec3<bool>(true, true, !all(select(select(vec4<bool>(var_0, false, var_0, false), vec4<bool>(false, false, var_0, var_0), vec4<bool>(var_0, var_0, false, var_0)), vec4<bool>(false, var_0, false, var_0), !vec4<bool>(var_0, var_0, true, false))));
    var var_4 = var_2.a.zz;
    return var_4.x;
}

fn func_1(arg_0: f32) -> i32 {
    let var_0 = _wgslsmith_dot_vec3_i32(-vec3<i32>(1i, 1i, 1i), vec3<i32>(1i, select(1i, -21997i, true) ^ _wgslsmith_sub_i32(_wgslsmith_add_i32(-1i, 37036i), -26487i), _wgslsmith_clamp_i32(11983i, -2147483647i, 0i)));
    var var_1 = true;
    var_1 = 39496u != ~(~(~u_input.a >> (countOneBits(4294967295u) % 32u)));
    var_1 = false;
    var_1 = false || all(vec2<bool>(true, _wgslsmith_clamp_i32(17956i, var_0, var_0) > 2147483647i));
    return (2147483647i ^ var_0) ^ func_4(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(func_3(func_2(), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -406f) * _wgslsmith_f_op_f32(step(arg_0, -546f))))), ~632u & _wgslsmith_add_u32(1u, u_input.a));
}

fn func_5(arg_0: i32) -> f32 {
    var var_0 = true;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(725f, -566f)) - _wgslsmith_f_op_f32(sign(702f))))) < _wgslsmith_div_f32(-281f, _wgslsmith_f_op_f32(-1f));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-843f, -336f, 118f, 539f) - vec4<f32>(-537f, 851f, -1087f, 735f))) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -623f), _wgslsmith_f_op_f32(145f * 895f), _wgslsmith_f_op_f32(-394f * 965f), _wgslsmith_f_op_f32(339f * 625f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1650f + -427f), -1199f, _wgslsmith_f_op_f32(f32(-1f) * -1030f), _wgslsmith_f_op_f32(floor(260f))) * vec4<f32>(func_2().a.x, _wgslsmith_f_op_f32(round(-1647f)), _wgslsmith_f_op_f32(max(-688f, -801f)), 561f)))));
    var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, var_1.x, -958f, 984f), vec4<f32>(-397f, 397f, var_1.x, 2413f)), vec4<f32>(1267f, var_1.x, var_1.x, 374f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-968f, var_1.x, var_1.x, -458f) + vec4<f32>(3006f, -1777f, 527f, var_1.x))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -286f), _wgslsmith_f_op_f32(f32(-1f) * -422f), _wgslsmith_f_op_f32(select(-350f, -976f, true)))))));
    var_0 = true;
    return var_1.x;
}

fn func_6(arg_0: f32) -> Struct_1 {
    var var_0 = Struct_1(!select(vec3<bool>(any(vec3<bool>(true, false, true)), true, true), select(vec3<bool>(true, false, false), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), false), vec3<bool>(true, true, true)), select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true))), 1i, ~(u_input.b | vec3<u32>(51263u, ~u_input.c.x, u_input.d)), abs(u_input.d));
    var_0 = Struct_1(select(var_0.a, var_0.a, var_0.a), i32(-1i) * -firstTrailingBit(-19272i), ~(vec3<u32>(_wgslsmith_mult_u32(u_input.a, var_0.c.x), u_input.c.x, 52650u) >> ((~var_0.c ^ _wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.d, 4294967295u, 1u), u_input.c, var_0.c)) % vec3<u32>(32u))), u_input.d);
    var_0 = Struct_1(var_0.a, var_0.b, u_input.c >> (vec3<u32>(var_0.c.x, 1u, var_0.d) % vec3<u32>(32u)), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, var_0.c.x, ~(~var_0.c.x), max(12671u, ~41930u)), firstLeadingBit(~(~vec4<u32>(var_0.c.x, var_0.d, u_input.a, u_input.c.x)))));
    var_0 = Struct_1(!(!var_0.a), var_0.b, u_input.b, _wgslsmith_sub_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, 0u, 22057u) ^ vec4<u32>(1u, var_0.d, 43259u, u_input.a), vec4<u32>(50987u, var_0.d, u_input.a, u_input.b.x) ^ vec4<u32>(var_0.c.x, u_input.c.x, 88158u, u_input.c.x)), abs(4294967295u)));
    var_0 = Struct_1(vec3<bool>(all(select(var_0.a, vec3<bool>(true, true, true), vec3<bool>(false, true, var_0.a.x))), true, !all(!vec4<bool>(false, false, false, var_0.a.x))), ~max(var_0.b, var_0.b) ^ (_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(var_0.b, 1i, -2147483647i), vec3<i32>(31938i, var_0.b, var_0.b)), vec3<i32>(var_0.b, var_0.b, -1i)) ^ (0i ^ _wgslsmith_clamp_i32(var_0.b, var_0.b, -21360i))), ~vec3<u32>(var_0.c.x, max(~var_0.c.x, abs(var_0.d)), _wgslsmith_clamp_u32(1u, var_0.c.x ^ 1u, 93892u)), _wgslsmith_add_u32(~1u, u_input.a));
    return Struct_1(vec3<bool>(firstLeadingBit(~4294967295u) <= ~_wgslsmith_mod_u32(61107u, u_input.c.x), any(var_0.a), any(var_0.a.yy) || var_0.a.x), -func_4(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0, 437f) - 488f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), -1247f), u_input.b.x), u_input.b, ~u_input.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(u_input.b.x, u_input.d, 1u | u_input.b.x, abs(firstTrailingBit(~4294967295u)));
    let var_1 = Struct_3((_wgslsmith_sub_u32(4294967295u, 4294967295u) << (u_input.a % 32u)) >= (35956u ^ _wgslsmith_mult_u32(_wgslsmith_add_u32(1u, var_0.x), var_0.x)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1436f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-1005f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-126f - 1663f) + -983f))), func_6(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -384f)), _wgslsmith_f_op_f32(func_5(func_1(-1088f)))))), Struct_2(vec4<i32>(1i, 1i, 1i, 1i)), ~(~(~(~var_0.zwy))));
    var var_2 = func_1(-737f) ^ (0i & (~_wgslsmith_add_i32(-29460i, var_1.d.a.x) & ~_wgslsmith_dot_vec4_i32(var_1.d.a, var_1.d.a)));
    var var_3 = var_1.d;
    var_3 = var_1.d;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.d.a.x, var_3.a.yx, _wgslsmith_dot_vec2_u32(abs(countOneBits(~var_0.xy)), ~vec2<u32>(4294967295u, 0u)));
}

