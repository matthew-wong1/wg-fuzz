struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec2<u32>,
    c: bool,
    d: vec3<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<u32>,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<f32, 24>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<u32>) -> vec3<f32> {
    global1 = array<f32, 24>();
    let var_0 = _wgslsmith_mod_i32(u_input.e, -31381i);
    global1 = array<f32, 24>();
    let var_1 = ~28289u < arg_0.x;
    global1 = array<f32, 24>();
    return _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(266f, global0.x, global0.x)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1056f, global1[_wgslsmith_index_u32(u_input.a.x, 24u)], 1000f))))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_div_f32(1633f, 404f), global0.x, -1000f), vec3<f32>(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(4294967295u, 24u)], global0.x), -847f, _wgslsmith_f_op_f32(global0.x - global0.x)), vec3<bool>(true, true, true)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1074f, global1[_wgslsmith_index_u32(arg_0.x, 24u)], global1[_wgslsmith_index_u32(arg_0.x, 24u)])) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1000f, global1[_wgslsmith_index_u32(arg_0.x, 24u)], -248f))))) + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(arg_0.x, 24u)], global1[_wgslsmith_index_u32(u_input.a.x, 24u)], global1[_wgslsmith_index_u32(u_input.b, 24u)])) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-290f, global1[_wgslsmith_index_u32(0u, 24u)], 530f)))))), select(select(select(vec3<bool>(var_1, var_1, true), select(vec3<bool>(var_1, false, var_1), vec3<bool>(true, var_1, false), vec3<bool>(false, true, var_1)), all(vec3<bool>(false, false, true))), vec3<bool>(!var_1, true, all(vec2<bool>(var_1, false))), !(global1[_wgslsmith_index_u32(arg_0.x, 24u)] != -369f)), !select(!vec3<bool>(var_1, var_1, var_1), vec3<bool>(var_1, var_1, var_1), select(vec3<bool>(var_1, var_1, var_1), vec3<bool>(var_1, false, var_1), vec3<bool>(false, var_1, var_1))), !(!(!vec3<bool>(var_1, false, false))))));
}

fn func_2(arg_0: f32, arg_1: vec4<f32>, arg_2: Struct_3) -> f32 {
    let var_0 = true;
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(arg_1.yyx + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1000f, 474f, -856f), vec3<f32>(190f, 1673f, arg_1.x)))))));
    let var_2 = arg_2;
    global0 = _wgslsmith_f_op_vec3_f32(step(arg_1.yzy, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(vec4<u32>(1235u, u_input.a.x, 121078u, arg_2.a))) + var_1)), var_1))));
    global0 = var_1;
    return _wgslsmith_f_op_f32(f32(-1f) * -2852f);
}

fn func_1() -> i32 {
    let var_0 = vec4<f32>(2409f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(global0.x, vec4<f32>(682f, global0.x, 1309f, 1181f), Struct_3(u_input.a.x, Struct_1(vec4<i32>(-1i, u_input.e, u_input.e, -26535i), -16221i, -1i, false, true), vec2<bool>(false, false))))))) + global0.x), global1[_wgslsmith_index_u32(~(6318u << (abs(_wgslsmith_mod_u32(54751u, u_input.a.x)) % 32u)), 24u)], _wgslsmith_f_op_f32(f32(-1f) * -275f));
    global1 = array<f32, 24>();
    var var_1 = -17142i;
    var_1 = abs(-1i);
    global0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.xyw) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, global1[_wgslsmith_index_u32(u_input.a.x, 24u)], 290f) * vec3<f32>(735f, -970f, 1000f))))))));
    return -41886i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~abs(func_1());
    global0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(u_input.b & 17053u, 24u)], _wgslsmith_f_op_f32(global0.x + global0.x), true)))), _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(374f, _wgslsmith_f_op_f32(func_2(global1[_wgslsmith_index_u32(4294967295u, 24u)], vec4<f32>(global1[_wgslsmith_index_u32(0u, 24u)], -462f, global0.x, 959f), Struct_3(0u, Struct_1(vec4<i32>(1i, u_input.e, var_0, var_0), 1i, u_input.e, true, false), vec2<bool>(false, false)))))) * _wgslsmith_f_op_f32(f32(-1f) * -426f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(307f, global0.x, -573f, -1859f))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0.x, -1550f, global1[_wgslsmith_index_u32(u_input.a.x, 24u)], -1231f))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1000f, -1139f, global0.x, -1704f), vec4<f32>(-462f, global0.x, global0.x, global1[_wgslsmith_index_u32(0u, 24u)]))), select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), false)))), Struct_3(_wgslsmith_dot_vec3_u32(u_input.a.zww, vec3<u32>(44539u, u_input.d.x, 1u)), Struct_1(vec4<i32>(-8869i, u_input.e, -1638i, var_0), 2147483647i, -2147483647i, true, true), vec2<bool>(true, true)))), -214f);
    var var_1 = -427f;
    var var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-global0.zz)))))), global0.yz);
    let var_3 = Struct_1(vec4<i32>(2147483647i, -(u_input.e & ~58629i), i32(-1i) * -var_0, i32(-1i) * -1i), _wgslsmith_dot_vec3_i32(~vec3<i32>(2147483647i, 1i, _wgslsmith_mult_i32(u_input.e, 28890i)), vec3<i32>(var_0, abs(u_input.e), 1i) | firstTrailingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, var_0, 33231i), vec3<i32>(var_0, var_0, var_0)))), u_input.e, false, false);
    var_1 = _wgslsmith_f_op_f32(round(2078f));
    let var_4 = _wgslsmith_f_op_f32(max(global0.x, var_2.x));
    let var_5 = 2147483647i;
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-833f, global1[_wgslsmith_index_u32(u_input.c.x, 24u)], global0.x), vec3<f32>(-1423f, var_4, global0.x), false))))) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(vec3<f32>(-1088f, 484f, -294f), vec3<f32>(1050f, var_4, global1[_wgslsmith_index_u32(1u, 24u)]))))) - _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, -252f, 249f) * vec3<f32>(var_4, 1000f, -2078f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(-912f, 264f, var_2.x) * vec3<f32>(225f, 526f, -178f)))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(323f, var_4, -522f) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(466f, 477f, global1[_wgslsmith_index_u32(4440u, 24u)]), vec3<f32>(-1083f, global0.x, 1221f)))))), -(~vec4<i32>(~26720i, -11890i, -2147483647i, var_0 ^ 0i)), vec3<i32>(-52771i, var_0 >> ((~10882u | u_input.b) % 32u), u_input.e | -var_0), 13341i, abs(var_0 >> (_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.c.x, 69341u), vec2<u32>(1u, 44465u)) % 32u)));
}

