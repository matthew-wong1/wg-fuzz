struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: Struct_1,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(-6168i, 28373i, -7417i, 37203i);

var<private> global1: array<vec2<f32>, 15>;

var<private> global2: array<vec2<i32>, 28>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<f32>, 15>();
    let x = u_input.a;
    s_output = StorageBuffer(~(-2147483647i ^ -_wgslsmith_sub_i32(u_input.d.x, -1i)), countOneBits(-13028i), global0.wxx, 8391i << ((_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, u_input.c, u_input.e, u_input.b), vec4<u32>(u_input.a, u_input.c, 17886u, u_input.c) | vec4<u32>(u_input.a, u_input.a, u_input.e, u_input.b)) >> (1u % 32u)) % 32u));
}

