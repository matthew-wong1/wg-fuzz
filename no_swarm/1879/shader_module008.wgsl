struct Struct_1 {
    a: i32,
    b: u32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: bool,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
    c: bool,
    d: vec3<i32>,
}

struct Struct_5 {
    a: Struct_1,
    b: vec3<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: u32,
    d: u32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 51463u;

var<private> global1: vec3<u32>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(280f, _wgslsmith_f_op_f32(923f - _wgslsmith_f_op_f32(f32(-1f) * -1197f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(629f)) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-142f))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-780f * 275f)))), _wgslsmith_add_u32(global1.x, ~_wgslsmith_mod_u32(0u, ~56046u)), 11112u, 0u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 789f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(701f * -673f) - _wgslsmith_div_f32(205f, 137f)), 549f)));
}

