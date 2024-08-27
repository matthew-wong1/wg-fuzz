struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 29> = array<vec2<bool>, 29>(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false));

var<private> global1: array<vec3<bool>, 25>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: vec4<f32>, arg_1: i32) -> vec3<f32> {
    let var_0 = ~_wgslsmith_mult_i32(u_input.c, arg_1);
    global1 = array<vec3<bool>, 25>();
    global1 = array<vec3<bool>, 25>();
    global1 = array<vec3<bool>, 25>();
    let var_1 = arg_1;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.zyz));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_2) -> f32 {
    let var_0 = i32(-1i) * -2147483647i;
    let var_1 = 17850u;
    global0 = array<vec2<bool>, 29>();
    var var_2 = Struct_2(var_1 <= u_input.a);
    let var_3 = i32(-1i) * -arg_0.x;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -890f));
}

fn func_1(arg_0: Struct_2, arg_1: u32, arg_2: u32, arg_3: vec2<u32>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(390f, _wgslsmith_f_op_f32(round(799f)), _wgslsmith_f_op_f32(f32(-1f) * -132f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(595f, -1429f, -2174f, 229f) * vec4<f32>(301f, 723f, -1000f, 467f)), 2147483647i)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-715f, 1945f, 1409f)))) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-190f, 833f, 279f))))))));
    global0 = array<vec2<bool>, 29>();
    var var_1 = _wgslsmith_f_op_f32(-660f * -717f);
    var var_2 = _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec3<i32>(u_input.c, u_input.c, u_input.c), Struct_1(vec2<i32>(29699i, 11377i), u_input.a, vec4<u32>(arg_1, 33245u, arg_2, 4294967295u)), arg_0))) * 459f));
    global0 = array<vec2<bool>, 29>();
    return Struct_2(arg_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.e;
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(663f, -1044f, 461f)) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-121f, -281f, -700f)))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-485f, 279f, -1000f) - vec3<f32>(1958f, -176f, -1839f)))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-619f, -747f, -1683f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(482f, -1247f, 1018f) - vec3<f32>(-291f, -523f, 1325f))))));
    var var_2 = Struct_2(false);
    let var_3 = Struct_2(true);
    var var_4 = func_1(var_3, _wgslsmith_mult_u32(39529u, 1u), ~var_0, u_input.b.zz);
    global1 = array<vec3<bool>, 25>();
    var var_5 = vec3<u32>(47950u, var_0, _wgslsmith_add_u32(_wgslsmith_sub_u32(1u, u_input.e), u_input.d));
    var_4 = var_3;
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(2141f, -1472f, 662f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_1.x, var_1.x, var_1.x), vec3<f32>(1004f, var_1.x, -880f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, -870f, var_1.x) * vec3<f32>(var_1.x, var_1.x, var_1.x)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_1.x, var_1.x, var_1.x))))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(exp2(var_1.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(var_1.x, -2806f), _wgslsmith_f_op_f32(var_1.x * 299f))), false)), _wgslsmith_div_vec2_f32(var_1.yy, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_1.yy), vec2<f32>(var_1.x, var_1.x), true)))));
}

