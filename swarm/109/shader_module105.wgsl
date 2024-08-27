struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: u32,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec4<f32>, 12> = array<vec4<f32>, 12>(vec4<f32>(-1225f, 921f, -990f, 201f), vec4<f32>(2520f, -1000f, 109f, -428f), vec4<f32>(1163f, 200f, -1243f, -637f), vec4<f32>(-2028f, -361f, 1000f, -1687f), vec4<f32>(-290f, -2140f, 483f, -1402f), vec4<f32>(-1240f, 143f, -460f, -973f), vec4<f32>(108f, 399f, -1378f, -3307f), vec4<f32>(1509f, 347f, -181f, -301f), vec4<f32>(862f, 653f, 1392f, -1000f), vec4<f32>(154f, -1110f, 818f, 1057f), vec4<f32>(501f, -675f, 108f, 1000f), vec4<f32>(2516f, -202f, -727f, 450f));

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_mod_vec3_u32(~vec3<u32>(global0.c, 20301u, global0.a.x), min(global0.a.yyz, vec3<u32>(0u, global0.c, 1u)))) | global0.a.wzz, firstTrailingBit(-_wgslsmith_dot_vec3_i32(reverseBits(u_input.b.xxw), _wgslsmith_clamp_vec3_i32(vec3<i32>(2862i, u_input.b.x, 32217i), vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x)))));
}

