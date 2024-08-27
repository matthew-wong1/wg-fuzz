struct Struct_1 {
    a: vec2<bool>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: Struct_1;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
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

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: bool) -> bool {
    let var_0 = _wgslsmith_f_op_f32(-global1.b.x);
    global0 = 358f;
    return _wgslsmith_f_op_f32(select(231f, _wgslsmith_f_op_f32(var_0 - 1452f), arg_0)) < -1773f;
}

fn func_1() -> vec2<f32> {
    var var_0 = Struct_1(vec2<bool>(false, false), global1.b);
    let var_1 = Struct_1(select(vec2<bool>(select(true, false, false | var_0.a.x), _wgslsmith_div_u32(15997u, 24474u) < u_input.a), var_0.a, true), global1.b);
    let var_2 = ~_wgslsmith_add_u32(~53220u, u_input.c) < ~(~_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(0u, u_input.c, u_input.a, u_input.b.x)), ~vec4<u32>(u_input.a, 1u, 4294967295u, 4294967295u)));
    let var_3 = var_1;
    var var_4 = select(!vec4<bool>(false, var_0.b.x < global1.b.x, !var_3.a.x, true), !select(!select(vec4<bool>(var_1.a.x, false, true, false), vec4<bool>(false, global1.a.x, var_2, var_2), vec4<bool>(global1.a.x, global1.a.x, true, true)), vec4<bool>(func_2(var_3.a.x), false, true, any(vec3<bool>(var_0.a.x, var_3.a.x, false))), !any(vec4<bool>(var_0.a.x, false, false, var_2))), true);
    return var_0.b.xw;
}

fn func_3(arg_0: bool, arg_1: i32) -> vec2<bool> {
    let var_0 = vec4<u32>(_wgslsmith_clamp_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a, u_input.a, u_input.b.x), vec4<u32>(1u, 27947u, 93235u, u_input.a)), ~u_input.b.x, max(max(u_input.c, 38867u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 34660u, u_input.b.x), vec3<u32>(1129u, u_input.c, u_input.c))) << (u_input.c % 32u)), _wgslsmith_clamp_u32(~u_input.c, 4294967295u, max(81441u, 4294967295u)), min(_wgslsmith_dot_vec3_u32(~reverseBits(vec3<u32>(32952u, u_input.c, 5823u)), ~vec3<u32>(u_input.a, u_input.c, u_input.c)), 8444u), 0u);
    global1 = Struct_1(select(select(select(select(vec2<bool>(false, global1.a.x), vec2<bool>(false, true), vec2<bool>(arg_0, false)), vec2<bool>(false, global1.a.x), true), global1.a, global1.a), vec2<bool>(false, true), true), global1.b);
    var var_1 = Struct_1(global1.a, global1.b);
    global1 = Struct_1(select(!(!(!var_1.a)), !(!(!var_1.a)), func_2(!var_1.a.x)), vec4<f32>(_wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(313f, var_1.b.x))))), var_1.b.x, _wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_f_op_f32(-568f - _wgslsmith_f_op_vec2_f32(func_1()).x)));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b.x * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(var_1.b.x, _wgslsmith_f_op_f32(var_1.b.x + var_1.b.x), any(vec3<bool>(true, global1.a.x, global1.a.x))))))));
    return vec2<bool>(arg_0, arg_0 | func_2(true));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1) -> Struct_1 {
    global0 = 489f;
    var var_0 = vec2<i32>(firstLeadingBit(i32(-1i) * -11331i), 0i);
    let var_1 = -48475i;
    let var_2 = firstLeadingBit(vec2<u32>(u_input.b.x, u_input.b.x));
    var var_3 = Struct_1(!(!vec2<bool>(true, arg_1.a.x & global1.a.x)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_vec2_f32(func_1()).x, global1.b.x, arg_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_vec2_f32(func_1()).x, 1961f)))));
    return Struct_1(arg_1.a, vec4<f32>(_wgslsmith_f_op_vec2_f32(func_1()).x, global1.b.x, 814f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -857f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = -1000f;
    let var_0 = _wgslsmith_dot_vec2_u32(firstLeadingBit(u_input.b), u_input.b);
    let var_1 = func_4(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(global1.b.zz + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.b.x, global1.b.x) + global1.b.xx)))), _wgslsmith_div_vec2_f32(global1.b.zz, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1()) - global1.b.wz)), select(select(global1.a, !vec2<bool>(true, global1.a.x), true), !select(global1.a, global1.a, global1.a.x), select(vec2<bool>(global1.a.x, false), func_3(true, -2147483647i), !global1.a.x)))), Struct_1(select(vec2<bool>(global1.a.x, select(global1.a.x, true, global1.a.x)), vec2<bool>(global1.a.x, true), select(func_3(true, 0i), vec2<bool>(global1.a.x, true), !global1.a.x)), vec4<f32>(global1.b.x, 930f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1997f + -1032f)), 409f)));
    let var_2 = vec3<f32>(global1.b.x, -563f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global1.b.x))));
    let var_3 = !(27367u <= _wgslsmith_add_u32(u_input.c, var_0));
    var var_4 = _wgslsmith_dot_vec2_u32(~firstLeadingBit(select(~u_input.b, u_input.b, false)), firstLeadingBit(u_input.b));
    let var_5 = 1i;
    var var_6 = var_2.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_1.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1926f - var_1.b.x), _wgslsmith_f_op_f32(round(-844f)))), _wgslsmith_f_op_f32(-405f - var_1.b.x))));
}

