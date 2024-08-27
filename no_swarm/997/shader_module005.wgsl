struct Struct_1 {
    a: vec4<bool>,
    b: f32,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec2<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec3<f32>(2236f, -1000f, -911f));

var<private> global1: f32;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec2<f32>) -> f32 {
    global1 = -661f;
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -589f) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(-380f, 221f), _wgslsmith_f_op_f32(ceil(-1000f))) - global0.a.x)) * -107f);
    global1 = global0.a.x;
    global1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1726f)));
    global1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1720f, _wgslsmith_f_op_f32(select(global0.a.x, 718f, false)))) - _wgslsmith_f_op_f32(global0.a.x + -386f)))));
    return _wgslsmith_f_op_f32(exp2(arg_0.x));
}

fn func_2(arg_0: Struct_1) -> f32 {
    global0 = Struct_2(vec3<f32>(global0.a.x, arg_0.b, arg_0.b));
    global0 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.a - vec3<f32>(102f, -1345f, global0.a.x)))))));
    var var_0 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.a.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(583f, global0.a.x))), _wgslsmith_f_op_f32(min(1534f, _wgslsmith_f_op_f32(arg_0.b - arg_0.b)))), _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.b, global0.a.x) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_0.b, arg_0.b))))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(global0.a)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.a - vec3<f32>(-1000f, -1909f, 1448f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b, global0.a.x, -1620f)))))));
    global0 = Struct_2(global0.a);
    var var_1 = !(!(!all(arg_0.a.yy)));
    return global0.a.x;
}

fn func_1(arg_0: bool) -> i32 {
    global1 = _wgslsmith_f_op_f32(global0.a.x * _wgslsmith_f_op_f32(func_2(Struct_1(!vec4<bool>(true, arg_0, false, arg_0), _wgslsmith_f_op_f32(max(-859f, -359f))))));
    var var_0 = Struct_1(!select(vec4<bool>(true, arg_0, all(vec3<bool>(false, true, arg_0)), true), select(vec4<bool>(true, false, arg_0, false), !vec4<bool>(true, arg_0, arg_0, false), !vec4<bool>(true, arg_0, arg_0, true)), vec4<bool>(false, all(vec2<bool>(arg_0, arg_0)), arg_0, arg_0)), global0.a.x);
    global0 = Struct_2(global0.a);
    let var_1 = 1u;
    var_0 = Struct_1(!var_0.a, 463f);
    return -1i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_i32(_wgslsmith_mult_i32(func_1(true), -38252i), ~(~(func_1(false) << (_wgslsmith_div_u32(0u, u_input.c) % 32u))));
    global0 = Struct_2(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.x, global0.a.x, global0.a.x)) - global0.a), global0.a), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.a) - global0.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(global0.a)))))));
    var var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.a.x, global0.a.x) * _wgslsmith_f_op_f32(func_2(Struct_1(vec4<bool>(false, true, false, true), 1117f)))), 172f, global0.a.x), vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3(global0.a.zy)), _wgslsmith_f_op_f32(global0.a.x + 204f))), global0.a.x, 511f))));
    var var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(1216f, -205f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_1.a.x)) * _wgslsmith_f_op_f32(trunc(var_1.a.x)))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a.x, global0.a.x, -828f) + _wgslsmith_div_vec3_f32(global0.a, _wgslsmith_f_op_vec3_f32(select(var_1.a, var_1.a, false))))));
    var var_3 = vec3<u32>(121489u, u_input.c, 0u) & ~_wgslsmith_add_vec3_u32(~(vec3<u32>(u_input.b.x, u_input.c, u_input.b.x) & vec3<u32>(2426u, 4294967295u, 1u)), abs(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)) >> (max(vec3<u32>(0u, 5815u, 0u), vec3<u32>(u_input.c, u_input.b.x, u_input.b.x)) % vec3<u32>(32u)));
    var var_4 = Struct_1(vec4<bool>(true, true, any(vec3<bool>(true, true, false)) && true, all(vec2<bool>(true, true))), _wgslsmith_f_op_f32(1720f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_2.a.x + var_1.a.x), var_1.a.x)))));
    let var_5 = Struct_2(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(var_2.a)))))));
    var var_6 = all(var_4.a);
    let x = u_input.a;
    s_output = StorageBuffer(~reverseBits(var_0), reverseBits(var_0), _wgslsmith_mult_u32(_wgslsmith_add_u32(63282u, 0u), 4319u), vec2<u32>(~(~reverseBits(1u)), 27990u), _wgslsmith_div_i32(u_input.a.x, 2064i));
}

