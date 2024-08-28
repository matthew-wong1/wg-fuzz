struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: vec3<bool>,
    d: vec4<f32>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: bool,
    d: f32,
    e: vec4<i32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: u32,
    c: f32,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec4<bool>,
    c: vec4<f32>,
    d: Struct_3,
    e: vec2<bool>,
}

struct Struct_5 {
    a: vec2<u32>,
    b: Struct_2,
    c: i32,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, true, false);

var<private> global1: array<i32, 4>;

var<private> global2: vec4<i32> = vec4<i32>(49600i, -20077i, 0i, -44289i);

var<private> global3: array<vec4<u32>, 8>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(_wgslsmith_dot_vec3_u32(~firstLeadingBit(u_input.b), firstLeadingBit(abs(vec3<u32>(37556u, 1027u, 44240u)))), _wgslsmith_dot_vec3_u32(u_input.b, ~(~u_input.b))));
}

