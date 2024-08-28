struct Struct_1 {
    a: vec2<bool>,
    b: vec2<u32>,
    c: vec3<bool>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec3<i32>,
    d: f32,
    e: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
    c: vec2<f32>,
    d: u32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 1> = array<Struct_2, 1>(Struct_2(354f, Struct_1(vec2<bool>(false, false), vec2<u32>(23095u, 68095u), vec3<bool>(false, true, false), vec3<bool>(false, true, true)), vec3<i32>(0i, -25685i, 816i), -580f, vec3<u32>(8462u, 58799u, 32377u)));

var<private> global1: vec4<bool> = vec4<bool>(false, true, false, true);

var<private> global2: array<i32, 15>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 1>();
    let var_0 = vec4<bool>(global1.x, !global1.x, global1.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1463f), _wgslsmith_f_op_f32(select(-2068f, -1226f, global1.x)))) <= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1368f), _wgslsmith_f_op_f32(f32(-1f) * -879f))))));
    global2 = array<i32, 15>();
    global1 = select(select(var_0, select(select(select(var_0, vec4<bool>(global1.x, global1.x, var_0.x, false), vec4<bool>(true, var_0.x, true, var_0.x)), select(var_0, var_0, false), !vec4<bool>(var_0.x, global1.x, global1.x, var_0.x)), select(vec4<bool>(var_0.x, var_0.x, var_0.x, true), vec4<bool>(global1.x, global1.x, false, global1.x), select(vec4<bool>(global1.x, var_0.x, true, true), vec4<bool>(true, global1.x, var_0.x, global1.x), true)), true), var_0), var_0, true);
    var var_1 = ~(~(~(~(~u_input.a.zxz))));
    var var_2 = global1.x;
    global0 = array<Struct_2, 1>();
    let var_3 = u_input.a.x << (~(~1u) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(-2281f, -1198f), ~(-vec4<i32>(max(0i, 2147483647i), abs(11076i), abs(u_input.e.x), u_input.e.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-118f - -373f), -1441f), _wgslsmith_f_op_f32(-2156f + _wgslsmith_div_f32(1477f, -923f))) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(838f, -642f), vec2<f32>(-113f, 708f)))))), firstLeadingBit(~4294967295u), _wgslsmith_mod_vec4_u32(u_input.a, ~_wgslsmith_sub_vec4_u32(u_input.a, u_input.a)));
}

