struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec3<bool>,
    d: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 1>;

var<private> global1: i32;

var<private> global2: bool = false;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~vec2<u32>(~_wgslsmith_clamp_u32(4294967295u, 58553u, u_input.c), u_input.c), 1f, 204f);
    global2 = any(vec4<bool>(any(vec2<bool>(all(vec3<bool>(false, false, false)), true)), !(_wgslsmith_div_f32(var_0.c, -1451f) == -684f), !any(vec4<bool>(true, true, true, true)), !(!(var_0.c >= 682f))));
    global2 = ~2147483647i >= u_input.a;
    global1 = u_input.d.x;
    var var_1 = var_0.b;
    global0 = array<Struct_2, 1>();
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.b, _wgslsmith_f_op_f32(step(var_0.c, -917f)), -340f, _wgslsmith_f_op_f32(-2115f - _wgslsmith_f_op_f32(468f - 1252f))))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(274f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.b - 206f))), var_0.b, var_0.b) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b, var_0.b, -435f, var_0.c) + vec4<f32>(-196f, var_0.c, 1669f, var_0.b)))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(u_input.a ^ u_input.b, -u_input.d.x), max(0u, ~var_0.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + var_0.c)), 36587i);
}

