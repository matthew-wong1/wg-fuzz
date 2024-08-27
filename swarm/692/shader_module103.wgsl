struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: f32,
    d: f32,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<u32>,
    d: i32,
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

var<private> global0: array<u32, 21>;

var<private> global1: array<u32, 18> = array<u32, 18>(0u, 1u, 4294967295u, 28409u, 4294967295u, 0u, 4294967295u, 92282u, 130140u, 49863u, 4294967295u, 75305u, 32061u, 1u, 48936u, 4294967295u, 31117u, 27222u);

var<private> global2: array<Struct_1, 3>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1387f * -898f) + 1691f)))));
}

