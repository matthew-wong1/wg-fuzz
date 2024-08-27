struct Struct_1 {
    a: vec3<bool>,
    b: vec3<i32>,
    c: vec3<bool>,
    d: f32,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec3<u32>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: bool) -> vec2<f32> {
    var var_0 = Struct_1(select(select(vec3<bool>(true, true, true), vec3<bool>(true, arg_0 == true, !arg_0), select(!vec3<bool>(arg_0, false, false), vec3<bool>(false, true, arg_0), !vec3<bool>(false, true, arg_0))), vec3<bool>(true, true, true), true), -vec3<i32>(-_wgslsmith_add_i32(31306i, u_input.d), -18216i, -_wgslsmith_mult_i32(u_input.b, u_input.b)), vec3<bool>(all(select(vec2<bool>(arg_0, true), vec2<bool>(arg_0, false), vec2<bool>(false, arg_0))) && arg_0, false, true), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, -670f))), -558f), !(!vec2<bool>(arg_0, arg_0)));
    global1 = reverseBits(firstLeadingBit(~(~vec3<u32>(global1.x, 1u, 4294967295u))));
    let var_1 = select(!(!select(!vec4<bool>(false, var_0.e.x, false, true), vec4<bool>(arg_0, var_0.c.x, true, true), vec4<bool>(arg_0, true, false, false))), !select(vec4<bool>(true, arg_0, any(vec2<bool>(var_0.e.x, false)), all(vec4<bool>(var_0.e.x, arg_0, true, var_0.c.x))), !vec4<bool>(arg_0, false, arg_0, false), !vec4<bool>(false, var_0.c.x, true, false)), arg_0);
    var var_2 = Struct_1(vec3<bool>(select(true, !(!var_1.x), any(var_1.zw)), !arg_0, true), var_0.b, select(var_1.yxy, select(var_1.zxz, !(!vec3<bool>(arg_0, arg_0, var_1.x)), true), !(!select(var_1.zyy, var_0.c, false))), _wgslsmith_f_op_f32(var_0.d - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.d - var_0.d) * var_0.d)), var_0.a.yx);
    var_2 = Struct_1(vec3<bool>(true, all(vec2<bool>(!var_0.e.x, var_2.b.x < -32728i)), !(!(!arg_0))), select(abs(_wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(0i, var_2.b.x, var_2.b.x), var_2.b), var_2.b)), vec3<i32>(select(1i, u_input.d, any(var_1)), ~_wgslsmith_add_i32(var_2.b.x, 1i), var_0.b.x), vec3<bool>(true, (false || arg_0) || !arg_0, false)), select(var_0.a, select(!select(var_0.c, var_2.c, var_2.c), var_1.wyx, var_1.x), !select(var_2.c, var_0.c, any(vec2<bool>(var_0.e.x, true)))), var_2.d, var_0.e);
    return _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(var_2.d * _wgslsmith_f_op_f32(trunc(-543f))), _wgslsmith_f_op_f32(round(-548f))), vec2<f32>(_wgslsmith_f_op_f32(var_2.d * _wgslsmith_f_op_f32(sign(-1191f))), _wgslsmith_f_op_f32(-var_2.d))));
}

fn func_2(arg_0: i32, arg_1: bool, arg_2: u32, arg_3: i32) -> Struct_1 {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -441f)));
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1163f))));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, _wgslsmith_f_op_f32(var_0 - -549f)) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0, 1104f), vec2<f32>(var_0, -988f), false))), _wgslsmith_f_op_vec2_f32(func_3(true)), vec2<bool>(any(select(vec3<bool>(arg_1, arg_1, arg_1), vec3<bool>(arg_1, arg_1, false), arg_1)), select(all(vec4<bool>(arg_1, arg_1, arg_1, false)), false & arg_1, select(arg_1, arg_1, arg_1))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, -1000f) - vec2<f32>(-401f, -734f)) - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1061f, 1180f))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, var_0) - vec2<f32>(var_0, var_0)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-796f, 1355f) + vec2<f32>(-424f, var_0))))));
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_1.x)), _wgslsmith_f_op_f32(var_0 * 1000f));
    global0 = var_1.x;
    return Struct_1(!vec3<bool>(false, all(!vec3<bool>(true, arg_1, arg_1)), ~1u >= _wgslsmith_mult_u32(0u, u_input.a)), ~reverseBits(vec3<i32>(~u_input.b, select(-2147483647i, 16559i, true), arg_3)), !vec3<bool>(arg_1, true, false), -1000f, select(vec2<bool>(arg_1, (var_0 < -554f) && arg_1), select(!vec2<bool>(arg_1, false), vec2<bool>(arg_1 || arg_1, arg_1), all(vec2<bool>(true, true))), !(!arg_1)));
}

fn func_1(arg_0: f32) -> vec3<u32> {
    var var_0 = (-max(i32(-1i) * -2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d, u_input.b), vec2<i32>(u_input.d, u_input.d))) | _wgslsmith_add_i32(u_input.d, _wgslsmith_div_i32(u_input.d, _wgslsmith_div_i32(-51350i, u_input.d)))) | _wgslsmith_div_i32(u_input.b, ~(-32973i) | _wgslsmith_add_i32(select(-19103i, -1i, false), countOneBits(u_input.d)));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(arg_0, -700f), vec2<f32>(434f, -1061f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-838f, arg_0) * vec2<f32>(-1113f, arg_0))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1000f, 222f))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_0, arg_0)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1730f, 710f)) - vec2<f32>(-625f, arg_0)))));
    let var_2 = func_2(~(-2075i), true, 18355u, ~abs(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, 0i, 2147483647i, u_input.d), vec4<i32>(-24552i, u_input.b, u_input.d, u_input.b)), ~vec4<i32>(u_input.d, -58148i, 28205i, u_input.d))));
    global0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-523f + 1f)))));
    return ~vec3<u32>(abs(~(~0u)), ~1u, ~(~countOneBits(0u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~countOneBits(_wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(abs(vec3<u32>(44751u, 1u, 1u)), ~vec3<u32>(1u, u_input.c, u_input.c)), ~func_1(-1064f)));
    var var_1 = Struct_1(select(vec3<bool>(!any(vec4<bool>(true, false, false, true)), any(vec3<bool>(true, false, true)), false), select(vec3<bool>(any(vec3<bool>(false, false, false)), true, true), select(func_2(-58i, true, 25907u, 15134i).a, vec3<bool>(false, false, false), vec3<bool>(true, true, true)), select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), true), vec3<bool>(false, true, false), vec3<bool>(true, true, true))), true), ~_wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(max(vec3<i32>(0i, u_input.d, u_input.b), vec3<i32>(u_input.d, u_input.d, u_input.b)), vec3<i32>(u_input.d, u_input.d, u_input.b) >> (vec3<u32>(1u, 26314u, u_input.a) % vec3<u32>(32u))), ~(-vec3<i32>(2147483647i, 1052i, -2147483647i))), !func_2(min(reverseBits(u_input.b), 1i), true, ~60789u, (u_input.d << (24717u % 32u)) << (func_1(1104f).x % 32u)).a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-507f - -617f))) - _wgslsmith_f_op_vec2_f32(func_3(true)).x)), vec2<bool>(true, (true & all(vec2<bool>(true, false))) && true));
    let var_2 = Struct_1(!(!var_1.c), abs(vec3<i32>(-1i) * -var_1.b), !vec3<bool>(all(!vec4<bool>(var_1.a.x, false, true, var_1.a.x)), false, select(var_1.e.x & false, !var_1.e.x, var_1.e.x)), 1000f, !var_1.c.xz);
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-401f * var_1.d) * 278f) + var_1.d)));
    var var_3 = func_2(_wgslsmith_dot_vec4_i32(reverseBits(abs(_wgslsmith_add_vec4_i32(vec4<i32>(var_1.b.x, var_2.b.x, 0i, 0i), vec4<i32>(-2147483647i, 2147483647i, u_input.b, var_2.b.x)))), vec4<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-36239i, var_1.b.x, u_input.b), vec3<i32>(var_2.b.x, 41080i, u_input.d)), var_1.b), ~_wgslsmith_clamp_i32(-1i, -16275i, 36675i), 2147483647i, var_2.b.x)), any(select(vec4<bool>(false, any(vec2<bool>(var_1.a.x, true)), false == var_1.c.x, any(var_2.c)), !(!vec4<bool>(var_2.e.x, true, var_2.e.x, false)), _wgslsmith_add_i32(0i, var_1.b.x) > (-46869i << (u_input.a % 32u)))), 1u, -_wgslsmith_mult_i32(~(-2147483647i) ^ u_input.b, var_2.b.x));
    global0 = -1488f;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(step(var_2.d, -1035f)), -713f, -717f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1356f, -1621f, -2351f))), vec3<f32>(var_3.d, -1692f, var_2.d))))), ~vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(9372u, u_input.c, 0u, 12820u) >> (vec4<u32>(global1.x, var_0.x, 1u, 4294967295u) % vec4<u32>(32u)), vec4<u32>(var_0.x, 4294967295u, var_0.x, 81577u)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, 49285u, 25528u), vec4<u32>(u_input.a, 57289u, 0u, 0u)), 1u));
}

