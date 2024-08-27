struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: vec3<f32>,
    d: i32,
    e: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: array<Struct_1, 21>;

var<private> global2: vec2<f32> = vec2<f32>(-344f, 668f);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(2388u, ~_wgslsmith_mod_u32(~u_input.e, _wgslsmith_dot_vec2_u32(u_input.a.xy, u_input.a.yw))), 4294967295u, countOneBits(~(-(vec4<i32>(u_input.d, 2147483647i, u_input.d, 51667i) << (vec4<u32>(4294967295u, 20197u, 18948u, 96251u) % vec4<u32>(32u))))));
}

