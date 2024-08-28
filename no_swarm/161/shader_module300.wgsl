struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec4<i32>,
    c: bool,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec2<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 2>;

var<private> global1: array<vec2<f32>, 31> = array<vec2<f32>, 31>(vec2<f32>(-729f, -547f), vec2<f32>(-133f, -949f), vec2<f32>(-1645f, 1510f), vec2<f32>(1273f, 529f), vec2<f32>(-1210f, 598f), vec2<f32>(-646f, -1260f), vec2<f32>(474f, -441f), vec2<f32>(-1447f, -1282f), vec2<f32>(815f, 283f), vec2<f32>(697f, -180f), vec2<f32>(176f, 1736f), vec2<f32>(-2436f, 169f), vec2<f32>(-439f, -394f), vec2<f32>(449f, 1452f), vec2<f32>(-1631f, -1134f), vec2<f32>(787f, 115f), vec2<f32>(668f, 462f), vec2<f32>(-1440f, -330f), vec2<f32>(-237f, -1000f), vec2<f32>(1731f, 709f), vec2<f32>(2140f, -744f), vec2<f32>(1285f, 768f), vec2<f32>(-1450f, -666f), vec2<f32>(546f, 1000f), vec2<f32>(1000f, 1195f), vec2<f32>(1634f, -1714f), vec2<f32>(-2160f, 361f), vec2<f32>(885f, 1926f), vec2<f32>(855f, 808f), vec2<f32>(1885f, -1749f), vec2<f32>(-1652f, -776f));

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(1i, ~(~_wgslsmith_clamp_vec4_u32(firstLeadingBit(vec4<u32>(38921u, 4294967295u, 53383u, 1u)), ~vec4<u32>(32603u, 1u, 63448u, global0[_wgslsmith_index_u32(4294967295u, 2u)]), ~vec4<u32>(6649u, u_input.d.x, u_input.e.x, 2692u))));
}

