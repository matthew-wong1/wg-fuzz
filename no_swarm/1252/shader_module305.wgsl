struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: vec3<f32>,
    d: i32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: f32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = u_input.b.x;
    global1 = _wgslsmith_f_op_f32(ceil(-1016f));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(min(max(global0.b.x, global0.b.x), global0.b.x | u_input.c.x) << (u_input.c.x % 32u), 50616u), ~36982u, 2308f);
}

