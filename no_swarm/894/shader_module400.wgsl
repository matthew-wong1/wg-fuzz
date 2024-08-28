struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec3<u32>,
    c: Struct_1,
    d: vec3<f32>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 4>;

var<private> global1: vec2<f32> = vec2<f32>(-611f, 264f);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: bool) -> vec3<u32> {
    global0 = array<Struct_2, 4>();
    global0 = array<Struct_2, 4>();
    global1 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_div_f32(673f, 341f), global1.x), vec2<f32>(global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global1.x)) - 1f)));
    let var_0 = ~u_input.a.x;
    global0 = array<Struct_2, 4>();
    return ~u_input.a.wyy;
}

fn func_2(arg_0: f32, arg_1: Struct_2) -> f32 {
    let var_0 = abs(-1i);
    let var_1 = u_input.a.x;
    global0 = array<Struct_2, 4>();
    var var_2 = Struct_1(_wgslsmith_dot_vec3_u32(func_3(true), abs(u_input.a.zxz)) & abs(u_input.a.x));
    var_2 = Struct_1(_wgslsmith_mult_u32(var_1, 31167u));
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-828f, _wgslsmith_div_f32(arg_1.a.x, _wgslsmith_f_op_f32(global1.x * 111f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -587f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_1.a.x)) * _wgslsmith_f_op_f32(round(-530f)))))));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec2<f32>, arg_2: vec3<bool>) -> bool {
    global1 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1472f), _wgslsmith_f_op_f32(select(-1049f, -880f, arg_2.x)))));
    let var_0 = u_input.a.x;
    global0 = array<Struct_2, 4>();
    let var_1 = Struct_1(abs(var_0));
    let var_2 = vec4<f32>(-106f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), arg_1.x, _wgslsmith_f_op_f32(min(arg_0.x, _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(sign(1021f)), global0[_wgslsmith_index_u32(max(~4294967295u, abs(7843u)), 4u)])))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(vec4<bool>(true, false | (_wgslsmith_f_op_f32(round(global1.x)) > global1.x), false, true));
    let var_1 = Struct_1(u_input.a.x);
    let var_2 = Struct_1(~u_input.a.x);
    global1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(282f, 835f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, -502f) + vec2<f32>(457f, global1.x))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, -360f) * _wgslsmith_f_op_vec2_f32(round(vec2<f32>(global1.x, global1.x))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global1.x, 446f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global1.x, global1.x)))))));
    var_0 = !func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, global1.x, 1000f, global1.x) + vec4<f32>(global1.x, global1.x, 329f, global1.x)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1640f, global1.x, 1159f, -701f))), global1.x == global1.x)) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(1358f, -185f, global1.x, global1.x), vec4<f32>(global1.x, global1.x, -1000f, -222f))))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(global1.x, _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_div_vec2_f32(vec2<f32>(-470f, global1.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, global1.x))))), !select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), false), vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false))));
    let var_3 = vec4<i32>(u_input.b & ~(reverseBits(u_input.c) | ~57463i), -48910i, abs(u_input.c), u_input.c);
    global0 = array<Struct_2, 4>();
    let var_4 = var_2.a;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(1218f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x * _wgslsmith_div_f32(global1.x, global1.x))), 701f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1.x)))))), var_4);
}

