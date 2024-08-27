struct Struct_1 {
    a: vec3<i32>,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 18> = array<u32, 18>(1u, 71936u, 73757u, 1u, 34736u, 0u, 36247u, 1u, 0u, 24676u, 1u, 52327u, 6079u, 12191u, 65457u, 4294967295u, 78150u, 31214u);

var<private> global1: array<f32, 3> = array<f32, 3>(-212f, -263f, 291f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 3>();
    global1 = array<f32, 3>();
    global1 = array<f32, 3>();
    var var_0 = 0i;
    global0 = array<u32, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(-1414f, _wgslsmith_f_op_f32(round(-658f)), 350f));
}

