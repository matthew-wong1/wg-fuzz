struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 16> = array<vec3<u32>, 16>(vec3<u32>(1u, 4294967295u, 37805u), vec3<u32>(1u, 1u, 46408u), vec3<u32>(4294967295u, 20536u, 1u), vec3<u32>(46398u, 1u, 0u), vec3<u32>(15041u, 24905u, 0u), vec3<u32>(64074u, 1u, 1u), vec3<u32>(1u, 28828u, 33394u), vec3<u32>(12058u, 0u, 0u), vec3<u32>(4294967295u, 55093u, 24014u), vec3<u32>(81671u, 4294967295u, 31879u), vec3<u32>(0u, 13765u, 4294967295u), vec3<u32>(4294967295u, 0u, 71331u), vec3<u32>(8930u, 26088u, 4294967295u), vec3<u32>(4294967295u, 10488u, 4495u), vec3<u32>(10384u, 27731u, 60652u), vec3<u32>(27966u, 0u, 1u));

var<private> global1: array<vec4<f32>, 8> = array<vec4<f32>, 8>(vec4<f32>(-1000f, 1157f, 2471f, 1074f), vec4<f32>(269f, -587f, 317f, -1000f), vec4<f32>(-148f, -1776f, 704f, -1180f), vec4<f32>(-1521f, 1169f, 1474f, 639f), vec4<f32>(-391f, -688f, -1000f, 128f), vec4<f32>(-352f, 688f, -282f, -420f), vec4<f32>(1757f, -1000f, 1115f, -1124f), vec4<f32>(1468f, 1156f, -1000f, -1291f));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_i32(i32(-1i) * -38649i, u_input.a.x);
    global1 = array<vec4<f32>, 8>();
    global0 = array<vec3<u32>, 16>();
    global1 = array<vec4<f32>, 8>();
    global1 = array<vec4<f32>, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, reverseBits(1u));
}

