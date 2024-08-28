struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: bool,
    b: vec4<u32>,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 11>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 11>();
    var var_0 = u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(~reverseBits(_wgslsmith_sub_u32(u_input.c.x, u_input.c.x)));
}

