struct Struct_1 {
    a: u32,
    b: bool,
    c: f32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: vec2<bool>,
    c: vec3<f32>,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: u32,
    c: vec2<f32>,
}

struct Struct_5 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 7>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(firstLeadingBit(vec2<u32>(~global0[_wgslsmith_index_u32(9835u, 7u)], abs(~u_input.b))));
    global0 = array<u32, 7>();
    global0 = array<u32, 7>();
    global0 = array<u32, 7>();
    global0 = array<u32, 7>();
    let var_1 = -376f;
    var var_2 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(var_1, 1u);
}

