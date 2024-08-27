struct Struct_1 {
    a: i32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: vec4<bool>,
    d: vec3<bool>,
    e: u32,
}

struct Struct_5 {
    a: f32,
    b: f32,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 17>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_4) -> vec3<u32> {
    var var_0 = false;
    global0 = array<vec3<f32>, 17>();
    let var_1 = arg_1.d.x;
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -428f);
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_1.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -981f) * _wgslsmith_f_op_f32(f32(-1f) * -1167f))))), -1781f, _wgslsmith_div_f32(arg_1.b, var_2), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1209f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(579f * var_2))))));
    return vec3<u32>(1u, 0u, arg_1.e);
}

fn func_2(arg_0: bool) -> vec4<f32> {
    var var_0 = func_3(Struct_3(any(vec4<bool>(all(vec2<bool>(arg_0, arg_0)), any(vec2<bool>(false, arg_0)), arg_0, all(vec2<bool>(true, false))))), Struct_4(Struct_2(Struct_1(i32(-1i) * -12197i, vec2<i32>(1i, 2147483647i))), _wgslsmith_f_op_f32(-2163f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-212f * -1130f))), select(!select(vec4<bool>(arg_0, true, false, arg_0), vec4<bool>(true, arg_0, arg_0, arg_0), arg_0), select(vec4<bool>(arg_0, false, arg_0, false), select(vec4<bool>(arg_0, false, arg_0, false), vec4<bool>(true, arg_0, arg_0, false), vec4<bool>(true, arg_0, arg_0, false)), vec4<bool>(arg_0, arg_0, true, false)), !(!vec4<bool>(true, false, true, arg_0))), vec3<bool>(true, true, true), 0u));
    var var_1 = Struct_5(1214f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1261f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1854f * 1000f)))), true)), abs(firstTrailingBit(vec4<i32>(34714i, max(31086i, 0i), reverseBits(0i), _wgslsmith_mult_i32(-26883i, -39033i)))));
    var_1 = Struct_5(317f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b + 1000f)), vec4<i32>(var_1.c.x, select(_wgslsmith_clamp_i32(0i, var_1.c.x << (u_input.a % 32u), ~var_1.c.x), var_1.c.x, select(true, true, false) || arg_0), _wgslsmith_mod_i32(0i, max(var_1.c.x & -14167i, _wgslsmith_dot_vec3_i32(var_1.c.xyy, vec3<i32>(3206i, 9963i, var_1.c.x)))), -1i));
    var var_2 = 64637u;
    var_1 = Struct_5(var_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b * var_1.a)))), countOneBits(-vec4<i32>(var_1.c.x << (4294967295u % 32u), -1i, _wgslsmith_dot_vec3_i32(var_1.c.zzz, vec3<i32>(var_1.c.x, 0i, var_1.c.x)), _wgslsmith_dot_vec4_i32(var_1.c, vec4<i32>(69775i, var_1.c.x, 1i, var_1.c.x)))));
    return _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(var_1.b + -784f), _wgslsmith_f_op_f32(-var_1.a), _wgslsmith_f_op_f32(-var_1.a), _wgslsmith_f_op_f32(f32(-1f) * -1626f)), _wgslsmith_div_vec4_f32(vec4<f32>(-683f, var_1.b, var_1.b, -114f), vec4<f32>(663f, -1381f, var_1.b, -570f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-983f, -687f, 1197f, var_1.a))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, var_1.b, 1925f, 431f), vec4<f32>(-2141f, var_1.b, -500f, -810f), arg_0)))))));
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1336f, 200f, 452f, -1000f))) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(801f, -149f, 486f, 452f)))) * _wgslsmith_f_op_vec4_f32(func_2(false))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-697f, -639f, -407f, -567f), vec4<f32>(-1658f, -498f, 521f, -1174f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-359f, 650f, 1154f, -112f) - vec4<f32>(-495f, -1668f, 1307f, -240f))))));
    global0 = array<vec3<f32>, 17>();
    global0 = array<vec3<f32>, 17>();
    var var_1 = -(-(~(~vec3<i32>(-1i, -29751i, 2147483647i))) & -vec3<i32>(11328i, _wgslsmith_dot_vec3_i32(vec3<i32>(73884i, -2147483647i, -1i), vec3<i32>(-38563i, -1i, 87142i)), _wgslsmith_sub_i32(3317i, 1i)));
    var var_2 = Struct_3(-8458i != _wgslsmith_div_i32(_wgslsmith_mult_i32(var_1.x ^ var_1.x, -15767i), var_1.x));
    return Struct_1(var_1.x, vec2<i32>(_wgslsmith_add_i32(max(var_1.x | 2147483647i, ~24009i), -_wgslsmith_div_i32(1i, 31924i)), -2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<f32>, 17>();
    let var_0 = Struct_2(func_1());
    var var_1 = Struct_4(var_0, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(1779f, 1568f), _wgslsmith_f_op_f32(floor(173f))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(960f, -640f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(224f)) + _wgslsmith_f_op_f32(trunc(-506f))))), vec4<bool>(all(vec3<bool>(true, true, true)), true, -714f < _wgslsmith_f_op_f32(round(_wgslsmith_f_op_vec4_f32(func_2(false)).x)), true), !vec3<bool>(all(vec4<bool>(false, false, false, false)), !(-2147483647i == var_0.a.b.x), !select(false, true, true)), u_input.a);
    let var_2 = var_1.a.a;
    let var_3 = var_1.c;
    let var_4 = func_1();
    global0 = array<vec3<f32>, 17>();
    let var_5 = vec3<bool>(true, !all(!vec2<bool>(var_3.x, var_3.x)), false);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-994f, var_1.b)) * _wgslsmith_div_f32(var_1.b, 1720f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.b, _wgslsmith_f_op_f32(abs(var_1.b))) + _wgslsmith_f_op_f32(trunc(411f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b * var_1.b)), var_1.b))), global0[_wgslsmith_index_u32(var_1.e, 17u)]);
}

