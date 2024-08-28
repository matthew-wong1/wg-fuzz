struct Struct_1 {
    a: vec2<f32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: u32,
    b: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: f32,
    d: bool,
    e: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 4>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<u32>, 4>();
    let var_0 = ~(~(~19641u) >> ((_wgslsmith_sub_u32(~u_input.d, ~u_input.a.x) << (max(u_input.d, 4294967295u) % 32u)) % 32u));
    global0 = array<vec3<u32>, 4>();
    var var_1 = Struct_2(~(~var_0), _wgslsmith_dot_vec4_u32(~(~(vec4<u32>(6672u, 4294967295u, var_0, 20392u) << (vec4<u32>(var_0, 87802u, 1u, var_0) % vec4<u32>(32u)))), ~abs(_wgslsmith_add_vec4_u32(vec4<u32>(56352u, u_input.a.x, var_0, var_0), vec4<u32>(u_input.a.x, 0u, u_input.d, var_0)))));
    global0 = array<vec3<u32>, 4>();
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(max(~var_1.b, abs(1u)), var_0, 0u, (4294967295u ^ var_0) ^ ~var_0));
}

