struct Struct_1 {
    a: vec2<f32>,
    b: vec2<f32>,
    c: i32,
    d: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec4<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec4<f32>,
    d: vec3<i32>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<u32>,
    d: vec3<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 6> = array<Struct_3, 6>(Struct_3(vec3<u32>(20156u, 46618u, 35484u), vec3<i32>(-74830i, 1180i, 28582i), vec4<f32>(983f, 1249f, 729f, -1427f), vec3<i32>(-18202i, -1i, 2147483647i), vec2<u32>(22778u, 24219u)), Struct_3(vec3<u32>(40158u, 0u, 4294967295u), vec3<i32>(95i, 0i, 44823i), vec4<f32>(-353f, 1027f, -1784f, -307f), vec3<i32>(1i, 0i, i32(-2147483648)), vec2<u32>(9359u, 4792u)), Struct_3(vec3<u32>(1u, 40349u, 49252u), vec3<i32>(-1i, -1i, 1i), vec4<f32>(1188f, 488f, -1511f, -419f), vec3<i32>(1i, 2147483647i, 18427i), vec2<u32>(32047u, 0u)), Struct_3(vec3<u32>(4294967295u, 26580u, 38347u), vec3<i32>(-18045i, -68624i, 62905i), vec4<f32>(-662f, -1334f, -751f, -858f), vec3<i32>(2147483647i, 2147483647i, 0i), vec2<u32>(10992u, 1u)), Struct_3(vec3<u32>(0u, 44093u, 67227u), vec3<i32>(0i, -1i, -2915i), vec4<f32>(-402f, -696f, 1312f, 380f), vec3<i32>(2147483647i, -12096i, 5196i), vec2<u32>(1u, 106876u)), Struct_3(vec3<u32>(4294967295u, 0u, 8017u), vec3<i32>(18527i, -47808i, 1i), vec4<f32>(-1252f, 1738f, 180f, -918f), vec3<i32>(-16424i, 1i, i32(-2147483648)), vec2<u32>(13108u, 0u)));

var<private> global1: array<Struct_3, 9>;

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(~countOneBits(vec2<u32>(u_input.c.x, 1u | u_input.d.x)));
}

