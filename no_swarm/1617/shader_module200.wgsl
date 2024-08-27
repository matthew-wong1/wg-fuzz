struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: bool,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: u32,
    d: vec2<bool>,
    e: vec4<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec3<u32>,
    d: vec4<f32>,
}

struct Struct_5 {
    a: Struct_3,
    b: i32,
    c: Struct_4,
    d: Struct_3,
    e: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 2968f;

var<private> global1: f32;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: vec3<f32>, arg_3: Struct_2) -> u32 {
    var var_0 = select(!select(select(vec4<bool>(true, true, arg_3.a.x, false), select(vec4<bool>(false, arg_3.b.c, true, true), arg_3.a, vec4<bool>(false, true, true, arg_3.a.x)), !arg_3.b.c), arg_3.a, vec4<bool>(arg_3.a.x, true, true, false)), vec4<bool>(!arg_3.b.c | (any(vec4<bool>(false, false, true, arg_3.a.x)) || any(vec4<bool>(arg_3.b.c, false, arg_3.a.x, true))), !(_wgslsmith_mult_u32(arg_1, arg_1) != _wgslsmith_add_u32(arg_1, arg_1)), arg_3.b.c, ~(u_input.c.x & 35164u) >= u_input.c.x), all(arg_3.a));
    var var_1 = Struct_2(select(arg_3.a, arg_3.a, vec4<bool>(true, !arg_3.a.x, true, arg_3.b.c)), arg_3.b);
    let var_2 = Struct_4(var_1.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(arg_2.xz, vec2<f32>(-1014f, arg_3.b.e)))))), vec3<u32>(0u, 1u, u_input.c.x), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(243f, -161f, arg_3.b.e, -2637f)) + _wgslsmith_div_vec4_f32(vec4<f32>(2173f, 634f, arg_3.b.e, -1546f), vec4<f32>(-220f, arg_2.x, arg_2.x, var_1.b.e))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_3.b.e, 1807f, arg_3.b.e, arg_0), vec4<f32>(-491f, arg_0, 305f, -1387f))))))));
    let var_3 = arg_3;
    global1 = 601f;
    return firstLeadingBit(46201u);
}

fn func_2() -> f32 {
    let var_0 = i32(-1i) * -_wgslsmith_sub_i32(_wgslsmith_div_i32(i32(-1i) * -1i, ~u_input.a), _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.b.x, u_input.b.x), vec3<i32>(2147483647i, 55015i, 2147483647i)), _wgslsmith_add_i32(u_input.a, u_input.a)));
    let var_1 = vec4<u32>(~_wgslsmith_sub_u32(func_3(289f, u_input.c.x, vec3<f32>(2016f, -857f, -571f), Struct_2(vec4<bool>(true, false, false, true), Struct_1(u_input.a, vec4<i32>(5559i, -43819i, var_0, u_input.b.x), false, 6181i, 183f))) >> (min(u_input.c.x, 4294967295u) % 32u), u_input.c.x), max(~(~4294967295u & ~u_input.c.x), 37558u), abs(u_input.c.x) >> (u_input.c.x % 32u), ~(~_wgslsmith_dot_vec2_u32(u_input.c.xz, u_input.c.yy) << (28218u % 32u)));
    var var_2 = !vec3<bool>(select(true, any(vec3<bool>(false, false, true)), all(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), false))), false, ~4294967295u < _wgslsmith_mult_u32(56018u, _wgslsmith_mod_u32(u_input.c.x, var_1.x)));
    var var_3 = -1273f;
    let var_4 = all(vec2<bool>(!var_2.x, true)) | all(select(!select(vec4<bool>(var_2.x, true, true, false), vec4<bool>(false, var_2.x, var_2.x, false), true), select(select(vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x), vec4<bool>(var_2.x, false, true, true), var_2.x), select(vec4<bool>(var_2.x, true, var_2.x, true), vec4<bool>(var_2.x, true, var_2.x, true), var_2.x), true), vec4<bool>(var_2.x, !var_2.x, true, select(false, true, var_2.x))));
    return -1821f;
}

fn func_1() -> bool {
    let var_0 = true;
    global0 = _wgslsmith_f_op_f32(func_2());
    var var_1 = var_0;
    let var_2 = Struct_1(select(u_input.b.x, ~(i32(-1i) * -2147483647i), var_0) >> (~(~_wgslsmith_div_u32(4294967295u, u_input.c.x)) % 32u), vec4<i32>(~u_input.a, ~_wgslsmith_sub_i32(~u_input.a, u_input.b.x), ~(i32(-1i) * -2147483647i), u_input.a), true, _wgslsmith_dot_vec3_i32(abs(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b.x, -43536i, 1i) << (u_input.c % vec3<u32>(32u)), ~vec3<i32>(u_input.a, u_input.b.x, -1i))), ~(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, -1i, 26631i), vec3<i32>(u_input.a, u_input.b.x, u_input.a)) << (vec3<u32>(u_input.c.x, 46492u, u_input.c.x) % vec3<u32>(32u)))), -398f);
    let var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_2.e)))))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~select(abs(u_input.b), _wgslsmith_clamp_vec2_i32(countOneBits(vec2<i32>(u_input.b.x, 25258i)), ~vec2<i32>(-15184i, u_input.a), -vec2<i32>(4575i, 93250i) ^ -vec2<i32>(u_input.a, 2147483647i)), select(vec2<bool>(0u <= u_input.c.x, true), vec2<bool>(all(vec3<bool>(true, true, false)), true), vec2<bool>(func_1(), true)));
    let var_1 = u_input.a >= -27510i;
    let var_2 = !select(select(vec2<bool>(var_1, all(vec2<bool>(var_1, var_1))), select(vec2<bool>(true, true), select(vec2<bool>(var_1, true), vec2<bool>(var_1, true), vec2<bool>(false, false)), vec2<bool>(var_1, true)), select(select(vec2<bool>(var_1, var_1), vec2<bool>(false, var_1), vec2<bool>(var_1, true)), vec2<bool>(true, true), vec2<bool>(var_1, var_1))), select(!vec2<bool>(var_1, false), vec2<bool>(var_1, u_input.b.x == var_0.x), select(!vec2<bool>(var_1, false), select(vec2<bool>(var_1, false), vec2<bool>(var_1, true), vec2<bool>(var_1, var_1)), false)), !(!(!vec2<bool>(var_1, true))));
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1297f - 1288f), 1000f, var_2.x))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) * -1847f) + _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1229f, 372f), _wgslsmith_f_op_f32(f32(-1f) * -1105f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(873f + 156f)), -1884f)));
    var var_4 = ~reverseBits(-11840i);
    global0 = _wgslsmith_f_op_f32(-639f + _wgslsmith_f_op_f32(-1685f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(934f * _wgslsmith_f_op_f32(floor(-479f))))));
    var var_5 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1996f, var_3.x)), var_3.x)), Struct_2(vec4<bool>(var_2.x, false, var_1, true), Struct_1(1i, reverseBits(min(vec4<i32>(14003i, u_input.a, 13568i, u_input.a), vec4<i32>(var_0.x, 1i, var_0.x, u_input.a))), true, var_0.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(var_3.x)))))), _wgslsmith_clamp_u32(countOneBits(u_input.c.x), abs(~0u) ^ u_input.c.x, 19348u), vec2<bool>(!any(var_2), !(!var_1)), select(!select(select(vec4<bool>(var_1, true, var_2.x, var_2.x), vec4<bool>(var_1, var_1, var_1, true), true), vec4<bool>(false, false, var_2.x, var_2.x), !var_1), select(select(vec4<bool>(var_1, true, var_1, false), vec4<bool>(var_1, var_1, false, var_1), var_2.x), select(select(vec4<bool>(true, true, true, var_1), vec4<bool>(var_2.x, false, var_2.x, false), var_1), !vec4<bool>(false, true, var_2.x, false), select(vec4<bool>(false, var_2.x, var_1, var_2.x), vec4<bool>(false, var_2.x, true, true), vec4<bool>(var_1, false, var_1, var_1))), !select(vec4<bool>(var_1, true, false, false), vec4<bool>(var_1, var_1, false, true), vec4<bool>(var_1, var_2.x, var_1, false))), false));
    var var_6 = vec4<f32>(-1471f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_3.x))), _wgslsmith_f_op_f32(trunc(var_3.x)), -1163f);
    let var_7 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1577f * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-441f)), 501f))) - var_5.b.b.e), Struct_2(select(!vec4<bool>(true, var_5.d.x, var_1, var_1), select(!vec4<bool>(var_2.x, var_2.x, true, var_1), var_5.b.a, true), true), Struct_1(-2147483647i, var_5.b.b.b, var_5.b.b.b.x > -37613i, ~min(14405i, u_input.a), var_3.x)), var_5.c, vec2<bool>(false, var_1), vec4<bool>(var_5.e.x, !(var_5.c <= _wgslsmith_mult_u32(4159u, 1u)), var_5.d.x, var_2.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(-1i, var_0.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_7.a, var_3.x, var_3.x) - _wgslsmith_f_op_vec3_f32(-var_6.xww)) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(var_6.wzy, var_6.xyz, var_1)), _wgslsmith_f_op_vec3_f32(floor(var_6.yzw))))), -351f);
}

