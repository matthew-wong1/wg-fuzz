struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: bool,
    d: f32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec3<u32>,
    c: Struct_1,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: i32,
    d: vec2<bool>,
    e: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec4<f32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 5> = array<vec2<i32>, 5>(vec2<i32>(-49801i, 18136i), vec2<i32>(26609i, 32707i), vec2<i32>(48396i, -9463i), vec2<i32>(21935i, 40446i), vec2<i32>(-17951i, 2147483647i));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(984f, _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(sign(-304f))) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1323f, 447f, 552f))))))));
    let var_1 = Struct_2(105309u, vec3<u32>(1u, 1u, 1u), Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(var_0.x)))))), ~vec2<u32>(~20998u, _wgslsmith_dot_vec2_u32(vec2<u32>(94205u, 1u), vec2<u32>(58881u, 9067u))), false, _wgslsmith_f_op_f32(382f - -599f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(757f, var_0.x, var_0.x))))), Struct_1(_wgslsmith_f_op_f32(step(442f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -119f)))), abs(~_wgslsmith_mult_vec2_u32(vec2<u32>(14809u, 1u), vec2<u32>(1u, 0u))), all(vec3<bool>(all(vec4<bool>(false, false, true, true)), false, any(vec2<bool>(true, false)))), _wgslsmith_f_op_f32(f32(-1f) * -978f), var_0), max(~1u, 1u));
    let var_2 = 0u;
    let var_3 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-265f)) + _wgslsmith_f_op_f32(step(-2019f, var_1.d.a))) + var_1.c.d), u_input.b, -_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(-u_input.a, -u_input.a), u_input.a), vec2<bool>(var_1.c.c, true), _wgslsmith_f_op_f32(2020f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-821f + var_1.d.e.x), _wgslsmith_f_op_f32(-var_0.x), true)))));
    var var_4 = vec2<u32>(_wgslsmith_dot_vec3_u32(var_1.b, _wgslsmith_div_vec3_u32(vec3<u32>(var_1.b.x, var_2, var_2), var_1.b)) | var_2, _wgslsmith_mod_u32(select(~abs(1u), ~_wgslsmith_dot_vec2_u32(var_1.d.b, var_1.d.b), var_3.d.x | true), 62081u));
    return _wgslsmith_f_op_f32(114f - _wgslsmith_div_f32(628f, var_0.x));
}

fn func_2() -> i32 {
    let var_0 = vec2<i32>(~(-_wgslsmith_add_i32(u_input.a.x, 0i)), -21519i);
    let var_1 = any(vec4<bool>(!any(vec2<bool>(true, true)), true, true, -1217f <= _wgslsmith_f_op_f32(func_3())));
    global0 = array<vec2<i32>, 5>();
    global0 = array<vec2<i32>, 5>();
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, 102f)))))), ~vec2<u32>(~(4294967295u >> (1u % 32u)), max(1u >> (0u % 32u), 1u)), any(select(vec3<bool>(var_1, true, true), select(!vec3<bool>(false, var_1, true), select(vec3<bool>(var_1, true, var_1), vec3<bool>(var_1, var_1, true), true), select(vec3<bool>(false, var_1, var_1), vec3<bool>(var_1, false, var_1), false)), any(vec3<bool>(var_1, var_1, var_1)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(146f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f)))) + _wgslsmith_f_op_f32(min(-583f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -144f), _wgslsmith_div_f32(1706f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1180f)))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(1295f, -619f, 1000f) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1367f, 1000f, 1100f), vec3<f32>(-231f, -722f, 606f))))))));
    return u_input.b;
}

fn func_1(arg_0: bool, arg_1: vec4<u32>, arg_2: Struct_1) -> u32 {
    global0 = array<vec2<i32>, 5>();
    var var_0 = u_input.a.wwz;
    var var_1 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1270f)) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_2.d + arg_2.e.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(arg_2.d, arg_2.e.x)), _wgslsmith_f_op_f32(1000f - arg_2.a)))))), func_2(), firstLeadingBit(~var_0.x), vec2<bool>(arg_2.c, true), 803f);
    let var_2 = select(select(vec3<bool>(all(!vec4<bool>(arg_2.c, true, false, false)), true, all(select(vec3<bool>(arg_0, arg_2.c, arg_2.c), vec3<bool>(true, false, arg_0), vec3<bool>(false, arg_2.c, var_1.d.x)))), vec3<bool>(true, false | (arg_0 || arg_2.c), arg_2.b.x <= 0u), all(select(vec4<bool>(var_1.d.x, arg_2.c, false, true), vec4<bool>(var_1.d.x, arg_0, true, var_1.d.x), arg_0 | arg_0))), !vec3<bool>(false, arg_0, _wgslsmith_f_op_f32(f32(-1f) * -797f) != _wgslsmith_f_op_f32(arg_2.a * arg_2.d)), !var_1.d.x);
    global0 = array<vec2<i32>, 5>();
    return firstLeadingBit(_wgslsmith_mult_u32(~abs(countOneBits(arg_2.b.x)), 3357u));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(1238f, 1069f), ~(~1u) | ~(~func_1(true, vec4<u32>(100093u, 1u, 4294967295u, 1u), Struct_1(-685f, vec2<u32>(0u, 15447u), false, 112f, vec3<f32>(2092f, -1661f, -1804f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(970f * -2655f), _wgslsmith_f_op_f32(ceil(-1236f)), _wgslsmith_f_op_f32(sign(1774f)), _wgslsmith_div_f32(-351f, 358f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-469f, 1067f, -120f, 605f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1110f, -858f, 2641f, 1000f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(836f, -1776f, -1000f, 1768f) * vec4<f32>(-555f, 789f, -234f, 753f))))), select(vec4<i32>(min(firstTrailingBit(-26276i), u_input.b), -6724i, u_input.b, u_input.a.x), reverseBits(~select(vec4<i32>(u_input.a.x, 2147483647i, -1i, -1i), u_input.a, vec4<bool>(true, false, false, true))), false));
}

