struct Struct_1 {
    a: bool,
    b: f32,
    c: u32,
    d: vec3<f32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 2> = array<vec3<u32>, 2>(vec3<u32>(9941u, 41227u, 0u), vec3<u32>(36363u, 0u, 84603u));

var<private> global1: u32 = 4294967295u;

var<private> global2: array<vec2<bool>, 23>;

var<private> global3: array<vec3<bool>, 19>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(~firstTrailingBit(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(39125u, 4294967295u))), ~(~vec2<u32>(~25715u, min(4294967295u, 0u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -184f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1233f, 567f))), -1848f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-522f, -266f) - _wgslsmith_f_op_f32(-2735f * -1281f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-288f - -169f) * -1389f))), u_input.a.x);
}

