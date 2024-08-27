struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
    d: f32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<f32, 13>;

var<private> global2: vec3<i32>;

var<private> global3: f32 = 585f;

var<private> global4: array<vec4<i32>, 23>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: u32) -> vec2<u32> {
    global0 = Struct_1(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(arg_0, 13u)] * 475f));
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a, -939f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-776f, global1[_wgslsmith_index_u32(arg_0, 13u)]) - vec2<f32>(-663f, 308f)))))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(0u, 13u)], global1[_wgslsmith_index_u32(u_input.b.x, 13u)]) * vec2<f32>(1396f, -161f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(arg_0, 13u)], global1[_wgslsmith_index_u32(4294967295u, 13u)])), vec2<bool>(true, true))) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(0u, 13u)], global0.a), vec2<f32>(468f, -755f))))), vec2<f32>(global0.a, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.a, global0.a) + global1[_wgslsmith_index_u32(arg_0, 13u)]))));
    global1 = array<f32, 13>();
    let var_1 = ~u_input.a < ~u_input.c.x;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -847f));
    return _wgslsmith_mod_vec2_u32(~max(u_input.b.xz, u_input.b.zy), _wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 10763u, u_input.b.x, 32498u), ~vec4<u32>(0u, 1u, u_input.b.x, arg_0)), arg_0), vec2<u32>(_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(51042u, u_input.b.x, 13864u, u_input.b.x)), vec4<u32>(0u, u_input.b.x, 0u, 50532u)), 53457u)));
}

fn func_2() -> Struct_1 {
    global4 = array<vec4<i32>, 23>();
    global0 = Struct_1(-505f);
    let var_0 = ~global2.x;
    let var_1 = vec3<i32>(13322i, -27416i, -11272i);
    var var_2 = func_3(~0u);
    return Struct_1(793f);
}

fn func_1() -> f32 {
    global1 = array<f32, 13>();
    let var_0 = func_2();
    global1 = array<f32, 13>();
    let var_1 = !(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -315f), _wgslsmith_f_op_f32(global0.a * global1[_wgslsmith_index_u32(u_input.b.x, 13u)]))))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.a)) - _wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(0u, 13u)]))));
    var var_2 = var_0;
    return _wgslsmith_f_op_f32(global0.a - _wgslsmith_f_op_f32(var_0.a - _wgslsmith_f_op_f32(var_0.a - _wgslsmith_f_op_f32(var_2.a - _wgslsmith_f_op_f32(var_2.a - global1[_wgslsmith_index_u32(62192u, 13u)])))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) - _wgslsmith_f_op_f32(func_1())));
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.a))) * _wgslsmith_f_op_f32(func_1())));
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.b.x | 1u, 13u)])));
    let var_2 = ~abs(global2.x);
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(-1134f, _wgslsmith_f_op_f32(-1093f * 502f), -643f, -312f), vec4<f32>(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(0u, 13u)], 1315f), _wgslsmith_f_op_f32(-1000f + 765f), var_0.a, _wgslsmith_f_op_f32(438f * global1[_wgslsmith_index_u32(6340u, 13u)]))))) * vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(-952f)))), var_1, _wgslsmith_f_op_f32(-804f - _wgslsmith_div_f32(-829f, -440f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)) * 1081f)));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(782f, 1655f));
    var var_5 = true;
    var_0 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(select(29731u, 18757u, true), _wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(u_input.b.x, 0u, 9255u))), 13u)])))), u_input.b.x, min(u_input.c.x, var_2), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) + var_0.a), vec4<f32>(-375f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 + var_0.a)), _wgslsmith_f_op_f32(var_1 * _wgslsmith_f_op_f32(round(-659f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-568f * -196f) * _wgslsmith_f_op_f32(exp2(var_1))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(384f))))));
}

