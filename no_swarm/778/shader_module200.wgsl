struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(vec3<u32>(1u, 1u, 16628u), 1232f, vec4<f32>(-498f, -552f, 1431f, -906f)), Struct_1(vec3<u32>(4294967295u, 49963u, 61579u), 147f, vec4<f32>(-257f, -447f, -1226f, 988f)), Struct_1(vec3<u32>(57445u, 3576u, 83277u), 101f, vec4<f32>(-290f, -951f, 782f, 255f)), Struct_1(vec3<u32>(1u, 63464u, 4294967295u), -840f, vec4<f32>(-910f, -804f, 1861f, -171f)), Struct_1(vec3<u32>(4294967295u, 1u, 0u), 470f, vec4<f32>(-2615f, 746f, 1811f, -1158f)), Struct_1(vec3<u32>(16473u, 0u, 0u), 774f, vec4<f32>(-773f, 662f, 276f, -209f)), Struct_1(vec3<u32>(81656u, 510u, 4294967295u), 1763f, vec4<f32>(-1921f, -1000f, -1129f, 292f)), Struct_1(vec3<u32>(0u, 1u, 4294967295u), 548f, vec4<f32>(1545f, 597f, -2020f, -562f)), Struct_1(vec3<u32>(21632u, 68020u, 1u), -1142f, vec4<f32>(-405f, 122f, -965f, -2103f)), Struct_1(vec3<u32>(65246u, 66552u, 33048u), 101f, vec4<f32>(-1634f, 964f, 257f, -961f)), Struct_1(vec3<u32>(1u, 0u, 41960u), -209f, vec4<f32>(1015f, -689f, -313f, 1000f)), Struct_1(vec3<u32>(4294967295u, 28300u, 1u), -1000f, vec4<f32>(-363f, 1075f, -862f, 512f)), Struct_1(vec3<u32>(0u, 13823u, 12083u), -184f, vec4<f32>(1153f, 1505f, -640f, 1034f)), Struct_1(vec3<u32>(46644u, 46881u, 30876u), 486f, vec4<f32>(1657f, -289f, -748f, 1399f)), Struct_1(vec3<u32>(1u, 62155u, 33566u), 352f, vec4<f32>(2332f, 439f, 311f, -1245f)), Struct_1(vec3<u32>(0u, 4294967295u, 44092u), -177f, vec4<f32>(115f, -397f, -826f, -441f)), Struct_1(vec3<u32>(4294967295u, 19760u, 4294967295u), 198f, vec4<f32>(675f, -730f, -410f, 417f)), Struct_1(vec3<u32>(0u, 10641u, 5328u), 1000f, vec4<f32>(-331f, -376f, 129f, 606f)), Struct_1(vec3<u32>(505u, 0u, 0u), -1144f, vec4<f32>(548f, 665f, -2293f, -682f)));

var<private> global1: vec3<f32>;

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(64888u, abs(65957u), 1027f);
}

