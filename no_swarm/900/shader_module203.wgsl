struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(677f, _wgslsmith_dot_vec3_i32(~vec3<i32>(~0i, i32(-1i) * -2147483647i, 2147483647i), ~min(vec3<i32>(0i, -47695i, -2147483647i), vec3<i32>(2147483647i, -22239i, -11493i)) >> (_wgslsmith_add_vec3_u32(vec3<u32>(1u, 38383u, 619u), vec3<u32>(u_input.a, 4294967295u, 1u)) % vec3<u32>(32u))), ~reverseBits(vec3<u32>(u_input.a, ~u_input.a, u_input.a)));
}

