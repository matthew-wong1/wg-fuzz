struct Struct_1 {
    a: i32,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_2,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_2,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 7>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -1i;
    global1 = array<Struct_1, 7>();
    let var_1 = vec3<bool>(false, true, max(u_input.b.x, u_input.b.x) < -3195i);
    let var_2 = 380f;
    var var_3 = reverseBits(u_input.c.xyz);
    global1 = array<Struct_1, 7>();
    let var_4 = global1[_wgslsmith_index_u32(~abs(select(u_input.a.x, global0.b, select(var_3.x > -6921i, var_1.x, true))), 7u)];
    global1 = array<Struct_1, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(global0.a, 45172i);
}

