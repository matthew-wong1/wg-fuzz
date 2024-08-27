struct Struct_1 {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: i32,
    d: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
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

var<private> global0: bool = false;

var<private> global1: array<f32, 20> = array<f32, 20>(-1673f, -376f, 336f, 289f, -888f, -2035f, 507f, 2205f, -114f, -1508f, 917f, 561f, -441f, -452f, -625f, -276f, 850f, -1067f, 1279f, 716f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, reverseBits(118964u)), 20u)])))));
}

