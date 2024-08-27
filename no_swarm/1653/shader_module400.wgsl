struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_4 {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: Struct_1,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_3,
    c: bool,
    d: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(-vec2<i32>(1i, 7770i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(u_input.b, u_input.d), vec2<i32>(-_wgslsmith_dot_vec3_i32(u_input.e, firstTrailingBit(vec3<i32>(19307i, -9885i, -18504i))), _wgslsmith_clamp_i32(countOneBits(2147483647i), var_0.x, -6503i)));
}

