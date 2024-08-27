struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: bool,
    d: vec2<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: vec2<f32>,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: bool,
    b: vec2<bool>,
}

struct Struct_5 {
    a: vec4<bool>,
    b: vec3<i32>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 3>;

var<private> global1: array<vec4<u32>, 29> = array<vec4<u32>, 29>(vec4<u32>(1u, 35446u, 0u, 1u), vec4<u32>(54025u, 75467u, 0u, 0u), vec4<u32>(68385u, 4294967295u, 1u, 1u), vec4<u32>(4294967295u, 0u, 0u, 3786u), vec4<u32>(0u, 21894u, 1u, 4294967295u), vec4<u32>(1949u, 4294967295u, 21206u, 13281u), vec4<u32>(41169u, 44082u, 4294967295u, 33714u), vec4<u32>(73053u, 98178u, 0u, 1153u), vec4<u32>(41893u, 10101u, 0u, 1u), vec4<u32>(15206u, 0u, 4294967295u, 0u), vec4<u32>(0u, 9524u, 43775u, 22105u), vec4<u32>(4294967295u, 13304u, 12841u, 1u), vec4<u32>(4294967295u, 38143u, 75907u, 58305u), vec4<u32>(4294967295u, 0u, 0u, 1u), vec4<u32>(4294967295u, 48977u, 79917u, 0u), vec4<u32>(9254u, 2893u, 872u, 33531u), vec4<u32>(11265u, 4294967295u, 27460u, 28992u), vec4<u32>(9651u, 61015u, 0u, 11783u), vec4<u32>(6661u, 4294967295u, 1u, 1326u), vec4<u32>(34102u, 0u, 1u, 1u), vec4<u32>(20200u, 0u, 85457u, 4294967295u), vec4<u32>(22828u, 22995u, 4294967295u, 1382u), vec4<u32>(23831u, 4294967295u, 4294967295u, 39539u), vec4<u32>(14512u, 48071u, 0u, 10800u), vec4<u32>(1u, 36358u, 903u, 0u), vec4<u32>(4294967295u, 4294967295u, 50728u, 17455u), vec4<u32>(47040u, 1u, 1u, 41638u), vec4<u32>(21777u, 1u, 0u, 4294967295u), vec4<u32>(0u, 0u, 93u, 0u));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: vec3<i32>, arg_1: vec3<u32>) -> i32 {
    return -23678i;
}

fn func_3(arg_0: vec3<u32>, arg_1: vec2<f32>) -> bool {
    var var_0 = vec2<bool>(all(vec2<bool>(true, true)), all(vec3<bool>(true, true, all(vec3<bool>(true, true, true)))));
    var_0 = select(vec2<bool>(var_0.x, true), vec2<bool>(var_0.x, (_wgslsmith_mult_u32(arg_0.x, 41348u) << (1u % 32u)) <= 1u), vec2<bool>(!(all(vec3<bool>(var_0.x, var_0.x, true)) || true), var_0.x));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_1.x)) * _wgslsmith_f_op_f32(trunc(-243f))), -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(min(arg_1.x, arg_1.x))))));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(196f, arg_1.x, arg_1.x)) + vec3<f32>(_wgslsmith_f_op_f32(max(arg_1.x, arg_1.x)), _wgslsmith_f_op_f32(select(arg_1.x, arg_1.x, var_0.x)), _wgslsmith_div_f32(-1483f, 471f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, 1426f, -1167f)) * vec3<f32>(_wgslsmith_f_op_f32(arg_1.x * 828f), _wgslsmith_f_op_f32(round(-437f)), _wgslsmith_f_op_f32(-arg_1.x))))));
    var_0 = !select(!(!vec2<bool>(var_0.x, var_0.x)), vec2<bool>(all(vec3<bool>(true, var_0.x, true)), false), !vec2<bool>(arg_0.x == u_input.d.x, all(vec4<bool>(true, true, true, var_0.x))));
    return true;
}

fn func_1(arg_0: u32, arg_1: bool) -> Struct_3 {
    global0 = array<Struct_4, 3>();
    var var_0 = -1i >= _wgslsmith_div_i32(-select(firstLeadingBit(u_input.c.x), ~42420i, all(vec4<bool>(arg_1, false, arg_1, arg_1))), func_2(-_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, 35409i, 71996i), u_input.c), countOneBits(_wgslsmith_mult_vec3_u32(u_input.d, u_input.d))));
    var var_1 = select(!select(!(!vec4<bool>(false, true, arg_1, arg_1)), vec4<bool>(false, false & arg_1, false, false), select(select(vec4<bool>(false, arg_1, false, arg_1), vec4<bool>(arg_1, false, true, false), arg_1), !vec4<bool>(arg_1, arg_1, arg_1, true), !vec4<bool>(arg_1, arg_1, true, true))), vec4<bool>(arg_1, false, true, true), false);
    var_1 = vec4<bool>(arg_1, !func_3(firstLeadingBit(min(u_input.d, u_input.d)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(635f, -1000f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-190f, 188f)))), true, var_1.x);
    var_0 = true;
    return Struct_3(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-567f, _wgslsmith_f_op_f32(round(-1553f)))))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<u32>, 29>();
    let var_0 = func_1(~u_input.d.x, !any(vec4<bool>(all(vec2<bool>(true, true)), true, all(vec4<bool>(false, true, true, false)), true)));
    var var_1 = vec3<bool>(true, any(select(vec3<bool>(all(vec4<bool>(false, false, false, false)), true, true), vec3<bool>(true, true, true), true)), all(vec4<bool>(true, (0u | u_input.d.x) <= _wgslsmith_mod_u32(4294967295u, u_input.d.x), any(vec3<bool>(false, true, false)), -259f <= var_0.a)));
    var var_2 = _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_0.a, var_0.a)));
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(trunc(var_0.a)), _wgslsmith_div_f32(var_0.a, var_2.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_2.x * 515f))));
    let var_4 = u_input.a;
    let var_5 = var_4;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(reverseBits(u_input.d.x), min(1u, u_input.d.x)));
}

