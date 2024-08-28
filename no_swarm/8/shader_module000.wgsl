struct Struct_1 {
    a: vec3<i32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<f32>,
    c: bool,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec4<bool>,
}

struct Struct_4 {
    a: bool,
    b: bool,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 12>;

var<private> global1: array<Struct_4, 7>;

var<private> global2: vec3<i32> = vec3<i32>(1i, 14336i, 1i);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_4, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(global2.yx, 0i, ~_wgslsmith_dot_vec3_u32(u_input.e.xww, reverseBits(u_input.e.ywz) >> (u_input.e.ywx % vec3<u32>(32u))));
}

