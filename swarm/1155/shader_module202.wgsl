struct Struct_1 {
    a: f32,
    b: bool,
    c: bool,
    d: vec2<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: vec4<f32>,
    d: bool,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec2<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec4<f32>(1008f, -703f, 2204f, -433f), Struct_1(1707f, true, true, vec2<f32>(508f, 207f)), vec4<f32>(-1013f, 1020f, 729f, 129f), true, true);

var<private> global1: array<i32, 30> = array<i32, 30>(1i, i32(-2147483648), -4570i, -45325i, 40742i, -11799i, -47619i, 2147483647i, 26158i, 2147483647i, 2147483647i, 36212i, i32(-2147483648), -63349i, 27787i, 1i, -14021i, -18185i, -20985i, 0i, 2147483647i, 25321i, i32(-2147483648), 1i, 2147483647i, 0i, 43521i, 2147483647i, 0i, -1i);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec3<u32>(1u, ~u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(u_input.b, 32368u, 3162u)))));
}

