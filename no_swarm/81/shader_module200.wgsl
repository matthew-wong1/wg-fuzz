struct Struct_1 {
    a: vec4<bool>,
    b: vec2<u32>,
    c: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

var<private> global1: f32 = 212f;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: f32) -> i32 {
    return 1i;
}

fn func_2(arg_0: i32, arg_1: vec3<u32>) -> f32 {
    var var_0 = func_3(-430f);
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f))) * -1006f) - -2510f) - _wgslsmith_f_op_f32(floor(1f)));
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -106f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1234f, -380f))))) - 1000f);
    var_0 = arg_0 ^ firstTrailingBit(arg_0);
    var_0 = 30308i;
    return _wgslsmith_f_op_f32(1754f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(119f, -371f, false)))))));
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: f32) -> Struct_1 {
    global0 = u_input.b.x;
    var var_0 = Struct_1(vec4<bool>(all(arg_1.a.zz), _wgslsmith_f_op_f32(func_2(i32(-1i) * -18467i, ~u_input.b)) == arg_2, select(!all(vec4<bool>(arg_1.a.x, true, false, false)), arg_1.a.x && true, !arg_1.a.x | all(vec2<bool>(arg_1.a.x, arg_1.a.x))), !arg_1.a.x), reverseBits(_wgslsmith_add_vec2_u32(max(_wgslsmith_div_vec2_u32(arg_1.b, arg_1.b), vec2<u32>(26847u, 1u)), ~(arg_1.b & vec2<u32>(arg_1.b.x, u_input.b.x)))), arg_1.c);
    var var_1 = var_0.b.x;
    var_0 = arg_1;
    var_1 = arg_1.b.x;
    return arg_1;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> Struct_1 {
    let var_0 = arg_1.c;
    let var_1 = vec4<bool>(arg_1.a.x, true, arg_1.a.x, arg_1.a.x);
    global0 = ~1u;
    let var_2 = arg_2;
    var var_3 = arg_0;
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(629f, 2045f, -1518f)), vec3<f32>(443f, -1503f, 2099f)) + vec3<f32>(_wgslsmith_div_f32(1000f, -328f), -692f, _wgslsmith_f_op_f32(-908f * 1260f))), Struct_1(vec4<bool>(true, u_input.a.x > u_input.b.x, false, any(vec4<bool>(true, false, false, false))), ~countOneBits(vec2<u32>(115380u, 0u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-657f)))), -1000f), Struct_1(vec4<bool>(true, true, true, true), vec2<u32>(~45709u, ~(~u_input.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(229f)) - _wgslsmith_div_f32(-1000f, 589f)))), ~1i);
    global1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c)))))));
    var var_1 = !func_1(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1563f), 176f, var_0.c), func_4(var_0, var_0, ~1i), -419f).a.xxx;
    global0 = 4294967295u;
    var var_2 = ~countOneBits(54554u);
    let var_3 = vec3<bool>(var_0.a.x, var_1.x, false);
    let x = u_input.a;
    s_output = StorageBuffer(abs(-2147483647i), _wgslsmith_f_op_f32(step(var_0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c) - var_0.c))));
}

