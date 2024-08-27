struct Struct_1 {
    a: f32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 14>;

var<private> global1: array<f32, 32>;

var<private> global2: f32 = -915f;

var<private> global3: array<vec4<i32>, 13> = array<vec4<i32>, 13>(vec4<i32>(-1042i, -18176i, 1i, -1i), vec4<i32>(51489i, -1i, 1i, 2147483647i), vec4<i32>(-3259i, -10842i, -33083i, -1426i), vec4<i32>(-23204i, 0i, -24932i, 0i), vec4<i32>(-36873i, 2147483647i, 6322i, 2147483647i), vec4<i32>(1064i, 23242i, i32(-2147483648), 0i), vec4<i32>(-4023i, 0i, 12511i, 38494i), vec4<i32>(-46996i, 55200i, 4195i, -1i), vec4<i32>(-1i, -1i, -29329i, -18760i), vec4<i32>(-1i, 48280i, i32(-2147483648), 20006i), vec4<i32>(2147483647i, i32(-2147483648), 2147483647i, -7785i), vec4<i32>(29125i, 21942i, -39031i, -10724i), vec4<i32>(2147483647i, -47187i, 0i, 1i));

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(-firstLeadingBit(vec2<i32>(firstLeadingBit(-12955i), 17839i)), u_input.a.x << ((4294967295u ^ _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 1u), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 4294967295u), vec4<u32>(u_input.a.x, 72565u, 1u, u_input.a.x)))) % 32u), global1[_wgslsmith_index_u32(u_input.a.x, 32u)]);
}

