struct Struct_1 {
    a: vec4<bool>,
    b: vec4<bool>,
    c: f32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: bool,
    c: u32,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 1> = array<vec3<u32>, 1>(vec3<u32>(77564u, 76399u, 1u));

var<private> global1: array<vec2<u32>, 13>;

var<private> global2: array<Struct_2, 3>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<u32>, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(~(vec2<u32>(~u_input.a.x, 1u) | _wgslsmith_mod_vec2_u32(~u_input.a.wx, vec2<u32>(0u, u_input.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-103f + -1304f) - _wgslsmith_f_op_f32(f32(-1f) * -241f)) * _wgslsmith_f_op_f32(f32(-1f) * -1285f)));
}

