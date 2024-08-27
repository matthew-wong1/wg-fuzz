struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec3<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 19> = array<vec3<f32>, 19>(vec3<f32>(2944f, 395f, -776f), vec3<f32>(896f, 1526f, -124f), vec3<f32>(-202f, 1854f, -190f), vec3<f32>(-1129f, -115f, 1416f), vec3<f32>(444f, 2360f, 395f), vec3<f32>(251f, 319f, -186f), vec3<f32>(1584f, 597f, 501f), vec3<f32>(-405f, 1838f, -1000f), vec3<f32>(982f, 277f, -755f), vec3<f32>(1953f, -949f, -646f), vec3<f32>(-438f, 714f, 333f), vec3<f32>(-126f, -599f, -1263f), vec3<f32>(-874f, 1136f, -1000f), vec3<f32>(327f, 1057f, 188f), vec3<f32>(-303f, -1511f, 1000f), vec3<f32>(366f, 712f, 1184f), vec3<f32>(222f, 1898f, 1383f), vec3<f32>(-1421f, 433f, 873f), vec3<f32>(-1000f, -2030f, -1874f));

var<private> global1: f32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: bool) -> vec4<bool> {
    var var_0 = vec3<i32>(u_input.c.x, ~u_input.c.x, 2147483647i & -(-2147483647i ^ u_input.c.x));
    let var_1 = vec4<bool>(arg_1.a, arg_1.a, 0u != arg_0.a, 48916u > arg_0.a);
    global1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1832f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(1000f, 1320f)), -1691f))) + 642f), 1f));
    let var_2 = _wgslsmith_div_i32(u_input.a.x, var_0.x);
    var var_3 = arg_0;
    return !select(select(select(!var_1, select(vec4<bool>(true, arg_2, arg_1.a, true), var_1, vec4<bool>(arg_2, false, arg_1.a, false)), all(var_1.yz)), vec4<bool>(false, true, arg_2, !arg_1.a), !arg_2 && true), vec4<bool>(true, arg_2, true, true), vec4<bool>(all(select(vec3<bool>(var_1.x, true, true), vec3<bool>(true, true, arg_1.a), var_1.wwx)), arg_1.a | (arg_1.a | false), false, (u_input.b.x > arg_0.a) | (51989i == u_input.e)));
}

fn func_2(arg_0: vec4<f32>) -> f32 {
    let var_0 = arg_0;
    let var_1 = !func_3(Struct_2(u_input.b.x >> (u_input.b.x % 32u)), Struct_1(any(vec3<bool>(true, true, true))), select(true, ~0i == _wgslsmith_add_i32(u_input.a.x, u_input.a.x), true));
    global1 = -836f;
    let var_2 = 768f;
    let var_3 = var_1.xw;
    return 1526f;
}

fn func_1(arg_0: Struct_2, arg_1: f32) -> StorageBuffer {
    global0 = array<vec3<f32>, 19>();
    var var_0 = _wgslsmith_f_op_f32(arg_1 * 1000f);
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(442f, -721f, 286f, arg_1), vec4<f32>(arg_1, arg_1, -700f, -2179f))))))));
    let var_1 = u_input.a;
    global1 = arg_1;
    return StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - -153f) * _wgslsmith_f_op_f32(211f + arg_1)) + arg_1) - _wgslsmith_f_op_f32(floor(arg_1))), -1364f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-617f * 1658f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-328f * -458f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1127f * -501f) + 387f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -541f))))))));
    let var_1 = u_input.a.x;
    global1 = var_0.x;
    global1 = 660f;
    var_0 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(var_0.x, -2937f)), _wgslsmith_f_op_f32(max(var_0.x, 1655f)), all(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), true)))), -499f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.x))), -858f)));
    var var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(-2285f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(903f)))), _wgslsmith_f_op_f32(f32(-1f) * -2418f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-538f, -661f, false))))) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -766f, var_0.x, var_0.x)) + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.x, var_0.x, 767f, 189f))))))));
    let x = u_input.a;
    s_output = func_1(Struct_2(~_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)), 104891u)), _wgslsmith_f_op_f32(-253f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(ceil(var_2.x))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x * 396f)))));
}

