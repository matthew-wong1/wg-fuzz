struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_2,
    c: vec2<f32>,
    d: u32,
}

struct Struct_5 {
    a: vec4<f32>,
    b: u32,
    c: vec4<f32>,
    d: vec3<i32>,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 10>;

var<private> global1: array<Struct_5, 22> = array<Struct_5, 22>(Struct_5(vec4<f32>(718f, -225f, -367f, 1000f), 11730u, vec4<f32>(-1883f, -297f, -430f, 428f), vec3<i32>(59240i, i32(-2147483648), 34426i), vec2<bool>(true, true)), Struct_5(vec4<f32>(-577f, 564f, 218f, 1929f), 6876u, vec4<f32>(-1045f, 1988f, -2026f, 1341f), vec3<i32>(-1i, 1i, -25719i), vec2<bool>(false, false)), Struct_5(vec4<f32>(513f, 805f, 943f, -405f), 4294967295u, vec4<f32>(-631f, -1112f, -1444f, 375f), vec3<i32>(-1i, i32(-2147483648), 1i), vec2<bool>(true, false)), Struct_5(vec4<f32>(678f, 458f, -1000f, -1474f), 56652u, vec4<f32>(321f, 1301f, 724f, -1085f), vec3<i32>(45283i, i32(-2147483648), 1i), vec2<bool>(false, true)), Struct_5(vec4<f32>(1000f, -144f, -959f, -1527f), 19431u, vec4<f32>(-1274f, 503f, -1448f, -173f), vec3<i32>(1i, 17092i, -31664i), vec2<bool>(false, true)), Struct_5(vec4<f32>(-533f, -947f, 244f, -1307f), 12944u, vec4<f32>(1099f, 2066f, 719f, 1604f), vec3<i32>(0i, -30620i, 2147483647i), vec2<bool>(true, true)), Struct_5(vec4<f32>(1205f, 165f, 1040f, 1000f), 4294967295u, vec4<f32>(292f, 200f, -1562f, -309f), vec3<i32>(-5945i, -1i, i32(-2147483648)), vec2<bool>(true, false)), Struct_5(vec4<f32>(1653f, 398f, -973f, 854f), 24985u, vec4<f32>(-116f, -611f, -596f, -1121f), vec3<i32>(24812i, i32(-2147483648), 2147483647i), vec2<bool>(true, false)), Struct_5(vec4<f32>(-105f, 1023f, -1473f, -298f), 0u, vec4<f32>(-1000f, -887f, -501f, 308f), vec3<i32>(51852i, 2147483647i, 2147483647i), vec2<bool>(true, false)), Struct_5(vec4<f32>(-1157f, 1262f, -259f, 1519f), 4294967295u, vec4<f32>(322f, 971f, -693f, 2143f), vec3<i32>(0i, 0i, i32(-2147483648)), vec2<bool>(true, true)), Struct_5(vec4<f32>(140f, -1751f, 936f, -733f), 36709u, vec4<f32>(-1280f, -656f, 686f, -1387f), vec3<i32>(2147483647i, -1i, 2147483647i), vec2<bool>(true, false)), Struct_5(vec4<f32>(-897f, 1925f, 2130f, -1000f), 1u, vec4<f32>(291f, -854f, -286f, 1285f), vec3<i32>(0i, 32072i, -1i), vec2<bool>(true, false)), Struct_5(vec4<f32>(-873f, 206f, 1036f, 1391f), 4294967295u, vec4<f32>(2143f, -686f, 321f, 1202f), vec3<i32>(50610i, 1i, 55i), vec2<bool>(true, true)), Struct_5(vec4<f32>(-314f, -2508f, -704f, -317f), 0u, vec4<f32>(991f, -700f, -423f, -1000f), vec3<i32>(2863i, -1i, -1i), vec2<bool>(true, true)), Struct_5(vec4<f32>(-212f, -146f, 1619f, -840f), 1u, vec4<f32>(865f, -2174f, 1496f, 1143f), vec3<i32>(-881i, -37300i, 76003i), vec2<bool>(false, false)), Struct_5(vec4<f32>(190f, 1218f, -395f, -974f), 0u, vec4<f32>(1087f, -1828f, 1432f, 388f), vec3<i32>(6932i, i32(-2147483648), 1i), vec2<bool>(true, true)), Struct_5(vec4<f32>(1975f, 1379f, 154f, -303f), 4294967295u, vec4<f32>(-251f, 777f, -919f, -309f), vec3<i32>(29670i, 17027i, 1i), vec2<bool>(true, true)), Struct_5(vec4<f32>(-396f, 114f, 1017f, 1575f), 4294967295u, vec4<f32>(306f, 724f, -538f, -556f), vec3<i32>(-11275i, 1i, 1i), vec2<bool>(true, false)), Struct_5(vec4<f32>(1004f, 1104f, 1155f, 691f), 34972u, vec4<f32>(1706f, -457f, 197f, 864f), vec3<i32>(-30565i, i32(-2147483648), -12059i), vec2<bool>(false, true)), Struct_5(vec4<f32>(-294f, -1623f, -145f, 595f), 1u, vec4<f32>(-229f, -780f, 1007f, 284f), vec3<i32>(-1i, 1i, 1i), vec2<bool>(false, true)), Struct_5(vec4<f32>(1463f, 698f, -831f, -1000f), 39722u, vec4<f32>(-1060f, 1088f, 771f, -1597f), vec3<i32>(575i, 24449i, -13326i), vec2<bool>(true, false)), Struct_5(vec4<f32>(1517f, 754f, 1785f, -622f), 5153u, vec4<f32>(562f, -357f, -262f, -1536f), vec3<i32>(11133i, 42202i, i32(-2147483648)), vec2<bool>(false, false)));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, u_input.a.x, ~_wgslsmith_add_u32(0u << (1u % 32u), abs(2030u)) ^ ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 29975u, 5496u, 1u), vec4<u32>(1u, 17204u, 4916u, 0u))));
}

