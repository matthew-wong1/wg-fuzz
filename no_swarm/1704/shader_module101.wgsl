struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec4<f32>,
    d: i32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 9>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.c, vec2<u32>(_wgslsmith_dot_vec3_u32(~abs(vec3<u32>(u_input.a.x, 4294967295u, 0u)), abs(~vec3<u32>(54063u, u_input.a.x, u_input.a.x))), countOneBits(~(~u_input.c))), u_input.b);
}

