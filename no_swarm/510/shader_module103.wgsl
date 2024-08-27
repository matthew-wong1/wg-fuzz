struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec4<u32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec3<f32>,
    c: vec2<f32>,
    d: vec4<u32>,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<f32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, false, true, false);

var<private> global1: array<f32, 6> = array<f32, 6>(853f, 1627f, 2568f, 1000f, -702f, 1002f);

var<private> global2: vec3<f32>;

var<private> global3: array<Struct_4, 22> = array<Struct_4, 22>(Struct_4(-561f), Struct_4(1805f), Struct_4(-189f), Struct_4(-827f), Struct_4(-1640f), Struct_4(1372f), Struct_4(-1264f), Struct_4(-424f), Struct_4(233f), Struct_4(164f), Struct_4(173f), Struct_4(1000f), Struct_4(920f), Struct_4(105f), Struct_4(-150f), Struct_4(-766f), Struct_4(204f), Struct_4(-391f), Struct_4(-631f), Struct_4(-289f), Struct_4(914f), Struct_4(-624f));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: u32, arg_1: bool, arg_2: vec4<i32>, arg_3: Struct_4) -> u32 {
    global1 = array<f32, 6>();
    return _wgslsmith_sub_u32(u_input.a.x, 33979u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(323f, -1000f, 490f, 373f), vec4<f32>(global2.x, global2.x, global1[_wgslsmith_index_u32(u_input.d.x, 6u)], -2127f)))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global1[_wgslsmith_index_u32(0u, 6u)], global1[_wgslsmith_index_u32(1u, 6u)], global2.x)))), global0.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(round(-165f)), 858f, _wgslsmith_f_op_f32(f32(-1f) * -228f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-339f, global1[_wgslsmith_index_u32(7898u, 6u)], -202f))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1374f, 617f, 1115f))) * vec3<f32>(global1[_wgslsmith_index_u32(func_1(1u, global0.x, vec4<i32>(u_input.b, u_input.c.x, u_input.b, u_input.b), Struct_4(-1643f)), 6u)], _wgslsmith_div_f32(global2.x, global2.x), -357f))), _wgslsmith_f_op_vec2_f32(global2.xz - _wgslsmith_f_op_vec2_f32(global2.zx * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -846f), _wgslsmith_f_op_f32(1392f + global1[_wgslsmith_index_u32(0u, 6u)])))), ~abs(vec4<u32>(47284u, ~u_input.a.x, u_input.d.x >> (27714u % 32u), u_input.a.x)));
    var var_1 = global0.yxx;
    let var_2 = 320f;
    global2 = vec3<f32>(2018f, _wgslsmith_f_op_f32(-708f + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_2, -1021f)))))), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(abs(118610u), u_input.d.x), 6u)]);
    var var_3 = global2.x;
    global2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-623f * global2.x))), global2.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(u_input.d.x, 1u, var_0.d.x, u_input.d.x), var_0.a.yyw, _wgslsmith_dot_vec2_u32(~vec2<u32>(~u_input.a.x, _wgslsmith_div_u32(1u, 1u)), var_0.d.yx), global1[_wgslsmith_index_u32(4294967295u, 6u)]);
}

