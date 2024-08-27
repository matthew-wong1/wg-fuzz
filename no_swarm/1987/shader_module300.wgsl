struct Struct_1 {
    a: vec3<f32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec2<bool>,
    c: vec4<bool>,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
}

struct Struct_4 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(1i | firstLeadingBit(_wgslsmith_dot_vec3_i32(-u_input.b.yyz, -u_input.a.zwz)));
    var_0 = 0i;
    var_0 = -1i;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(4687i));
}

