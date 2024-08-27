struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: vec4<f32>,
    d: vec3<i32>,
    e: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: u32,
    d: vec2<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 3>;

var<private> global1: array<vec4<i32>, 7> = array<vec4<i32>, 7>(vec4<i32>(-18192i, 1i, -21067i, -50513i), vec4<i32>(i32(-2147483648), 0i, -6916i, i32(-2147483648)), vec4<i32>(-3378i, 19918i, 13622i, -25046i), vec4<i32>(-2981i, 0i, i32(-2147483648), 13371i), vec4<i32>(41339i, -66892i, -1280i, 34748i), vec4<i32>(-1104i, i32(-2147483648), 24474i, 0i), vec4<i32>(-39199i, -24365i, i32(-2147483648), -1i));

var<private> global2: u32;

var<private> global3: array<f32, 2> = array<f32, 2>(-1327f, 359f);

var<private> global4: array<bool, 2>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.xzx;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mult_vec3_u32(vec3<u32>(14952u, 0u, 58896u) | vec3<u32>(35565u, u_input.d, u_input.d), select(vec3<u32>(u_input.b, 1u, u_input.c), vec3<u32>(u_input.c, u_input.c, 1u) << (vec3<u32>(13412u, u_input.d, 27619u) % vec3<u32>(32u)), !vec3<bool>(global4[_wgslsmith_index_u32(4294967295u, 2u)], true, true))), firstLeadingBit(vec2<u32>(select(u_input.b, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.c), vec2<u32>(0u, u_input.b)), true), u_input.c)), 34339u, select(var_0.xy, var_0.xy, !select(select(vec2<bool>(true, global4[_wgslsmith_index_u32(u_input.c, 2u)]), vec2<bool>(true, global4[_wgslsmith_index_u32(u_input.d, 2u)]), vec2<bool>(global4[_wgslsmith_index_u32(24139u, 2u)], global4[_wgslsmith_index_u32(u_input.d, 2u)])), vec2<bool>(true, global4[_wgslsmith_index_u32(u_input.c, 2u)]), global4[_wgslsmith_index_u32(24405u >> (u_input.d % 32u), 2u)])), u_input.b);
}

