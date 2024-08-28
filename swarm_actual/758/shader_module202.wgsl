struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec3<bool>,
    c: i32,
    d: vec4<u32>,
}

struct Struct_3 {
    a: bool,
    b: vec4<f32>,
    c: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec2<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 4>;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2(arg_0: vec3<f32>) -> vec2<f32> {
    global0 = array<vec3<i32>, 4>();
    global0 = array<vec3<i32>, 4>();
    global0 = array<vec3<i32>, 4>();
    var var_0 = 1569u;
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.yy)));
    return _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(277f, var_1.a.x)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    var var_0 = Struct_3(true, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -3114f), -1000f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(arg_0.a.x, _wgslsmith_f_op_f32(-321f + arg_1.a.x), true)), -248f)), 503f), 1042f);
    var var_1 = !(!select(!(!vec4<bool>(var_0.a, false, true, true)), select(!vec4<bool>(var_0.a, var_0.a, var_0.a, true), !vec4<bool>(var_0.a, true, true, false), true), select(!vec4<bool>(var_0.a, false, var_0.a, var_0.a), select(vec4<bool>(var_0.a, true, true, var_0.a), vec4<bool>(var_0.a, var_0.a, var_0.a, var_0.a), false), vec4<bool>(var_0.a, var_0.a, true, true))));
    var_0 = Struct_3((_wgslsmith_dot_vec4_i32(select(u_input.e, vec4<i32>(u_input.e.x, u_input.e.x, u_input.e.x, -39558i), var_1.x), firstTrailingBit(u_input.e)) & -u_input.e.x) < _wgslsmith_clamp_i32(9620i ^ _wgslsmith_div_i32(u_input.e.x, u_input.e.x), ~u_input.e.x, u_input.e.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.b) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(533f, -532f, -162f, 813f))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c, arg_1.a.x, 1495f, -418f) - vec4<f32>(-203f, arg_0.a.x, 1265f, var_0.b.x)), _wgslsmith_f_op_vec4_f32(-var_0.b)))), arg_0.a.x);
    let var_2 = ~vec4<u32>(0u, ~(~(~u_input.b.x)), u_input.b.x, _wgslsmith_clamp_u32(abs(abs(4294967295u)), _wgslsmith_clamp_u32(u_input.d.x, 8055u, firstLeadingBit(4294967295u)), ~_wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(66932u, 1u, 4294967295u, 4294967295u))));
    var var_3 = ~select(vec4<u32>(u_input.a.x, _wgslsmith_div_u32(var_2.x & u_input.b.x, ~u_input.a.x), 4294967295u, var_2.x), ~var_2, true);
    return arg_1;
}

fn func_1(arg_0: f32, arg_1: u32, arg_2: i32) -> vec4<f32> {
    global0 = array<vec3<i32>, 4>();
    global0 = array<vec3<i32>, 4>();
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(ceil(arg_0)), true)), arg_0, 683f));
    let var_1 = func_3(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(_wgslsmith_f_op_vec3_f32(floor(var_0.zww)))))), Struct_1(vec2<f32>(arg_0, arg_0)));
    var var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.x))), func_3(Struct_1(var_0.yx), var_1).a.x) * var_0.zzx), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -140f), 394f, _wgslsmith_f_op_f32(645f * _wgslsmith_f_op_f32(-var_0.x))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.x))), _wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-683f, -719f)), _wgslsmith_f_op_f32(-1000f * arg_0)))))));
    return _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(f32(-1f) * -1054f)), _wgslsmith_f_op_vec2_f32(func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-732f, 260f, var_0.x)))).x, _wgslsmith_div_f32(var_0.x, var_0.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_vec2_f32(func_2(vec3<f32>(var_1.a.x, var_0.x, -129f))).x, _wgslsmith_div_f32(var_1.a.x, -839f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0, 801f, 468f, var_2.x), vec4<f32>(2773f, 1286f, var_2.x, 908f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1635f, var_2.x, -1196f, arg_0) + vec4<f32>(var_2.x, arg_0, var_1.a.x, var_0.x)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(func_1(_wgslsmith_f_op_f32(-535f - _wgslsmith_f_op_f32(f32(-1f) * -211f)), 0u, u_input.e.x));
    let var_1 = Struct_2(~(~u_input.b.x), select(vec3<bool>(true, true, true), !(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), false)), true), -1i, _wgslsmith_sub_vec4_u32(select(min(u_input.c & vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.a.x), u_input.c), _wgslsmith_div_vec4_u32(u_input.c, _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d.x, 0u, u_input.d.x, u_input.a.x), vec4<u32>(u_input.a.x, 4294967295u, u_input.c.x, 0u))), select(true, all(vec2<bool>(false, true)), true)), vec4<u32>(~abs(u_input.a.x), ~u_input.b.x | ~u_input.a.x, u_input.a.x, 4294967295u)));
    global0 = array<vec3<i32>, 4>();
    let var_2 = u_input.e.x;
    global0 = array<vec3<i32>, 4>();
    global0 = array<vec3<i32>, 4>();
    let var_3 = var_1.d.x;
    let var_4 = ~vec4<i32>(-(~min(u_input.e.x, var_1.c)), _wgslsmith_mult_i32(~(-var_1.c), var_1.c), 2147483647i, _wgslsmith_mult_i32(u_input.e.x, var_1.c << (3814u % 32u)));
    var var_5 = Struct_2(var_1.a, !var_1.b, -var_4.x, ~reverseBits(~firstLeadingBit(vec4<u32>(1u, 4294967295u, 3086u, 4294967295u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(select(var_0.wxz, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.x, var_0.x, -396f))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1446f, var_0.x, var_0.x)))))), vec3<bool>(any(!vec3<bool>(var_5.b.x, false, true)), var_5.b.x & true, any(vec4<bool>(true, true, true, true))))), _wgslsmith_mult_vec3_u32(vec3<u32>(min(63781u, var_3), 28344u | u_input.d.x, var_1.d.x ^ var_3) ^ ~var_5.d.xxx, select(vec3<u32>(44512u, _wgslsmith_mult_u32(64560u, 0u), var_1.a), vec3<u32>(~u_input.c.x, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a, 48292u, var_1.d.x, 1u), vec4<u32>(var_3, 20462u, 1877u, 0u)), var_1.d.x & var_1.d.x), true)));
}

