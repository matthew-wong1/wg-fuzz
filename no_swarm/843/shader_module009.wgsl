struct Struct_1 {
    a: vec3<f32>,
    b: i32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec4<bool>,
    c: Struct_1,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 31> = array<vec4<f32>, 31>(vec4<f32>(1000f, 528f, 678f, 1087f), vec4<f32>(-1010f, -599f, 2430f, 1000f), vec4<f32>(-684f, 532f, 1000f, -2491f), vec4<f32>(1623f, -791f, -1138f, -224f), vec4<f32>(-1306f, -552f, 347f, -1000f), vec4<f32>(480f, -2808f, 485f, -1690f), vec4<f32>(-270f, 976f, -1000f, 1147f), vec4<f32>(640f, -301f, 191f, -725f), vec4<f32>(-382f, 2074f, 472f, -220f), vec4<f32>(-944f, 1113f, -1048f, -2350f), vec4<f32>(1000f, 2184f, 466f, -1787f), vec4<f32>(1225f, -435f, 1898f, 247f), vec4<f32>(-797f, -1410f, 1542f, 1000f), vec4<f32>(-284f, -1207f, 562f, -353f), vec4<f32>(723f, -815f, 157f, -1385f), vec4<f32>(-1049f, 1084f, 420f, 791f), vec4<f32>(-312f, -1501f, -123f, -118f), vec4<f32>(1778f, -511f, -834f, 456f), vec4<f32>(526f, -973f, -1145f, 885f), vec4<f32>(-1408f, 726f, -1025f, 2018f), vec4<f32>(-212f, 539f, 225f, -1000f), vec4<f32>(-1469f, -395f, -247f, 960f), vec4<f32>(772f, 1710f, 692f, 1717f), vec4<f32>(1810f, 840f, -374f, 119f), vec4<f32>(-366f, -1000f, 1451f, 2308f), vec4<f32>(2183f, 1310f, 759f, -653f), vec4<f32>(-992f, -1898f, 265f, -916f), vec4<f32>(1154f, -135f, 1206f, -319f), vec4<f32>(759f, -224f, 563f, 119f), vec4<f32>(539f, -261f, 944f, -1404f), vec4<f32>(248f, -1000f, 1467f, -1000f));

var<private> global1: array<f32, 3> = array<f32, 3>(-1000f, 2027f, 1007f);

var<private> global2: vec3<f32> = vec3<f32>(-1610f, -574f, -255f);

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(1u, ~((reverseBits(u_input.a.x) << (69460u % 32u)) << (u_input.b.x % 32u)));
}

