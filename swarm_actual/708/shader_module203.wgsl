struct Struct_1 {
    a: vec4<f32>,
    b: vec2<f32>,
    c: u32,
    d: vec2<i32>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
    c: vec4<f32>,
    d: vec3<f32>,
    e: vec2<bool>,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: u32,
    b: i32,
    c: Struct_3,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: vec4<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: array<vec4<u32>, 12> = array<vec4<u32>, 12>(vec4<u32>(10318u, 4294967295u, 4294967295u, 4294967295u), vec4<u32>(2648u, 0u, 25843u, 1u), vec4<u32>(1u, 14409u, 13238u, 39695u), vec4<u32>(0u, 4294967295u, 68553u, 4294967295u), vec4<u32>(0u, 10104u, 36872u, 18017u), vec4<u32>(0u, 4294967295u, 4294967295u, 1u), vec4<u32>(29995u, 47037u, 1u, 44879u), vec4<u32>(1u, 0u, 56296u, 3413u), vec4<u32>(1u, 16274u, 0u, 99223u), vec4<u32>(1u, 0u, 1u, 5323u), vec4<u32>(27938u, 1u, 1u, 42179u), vec4<u32>(4294967295u, 1u, 84142u, 1u));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<u32>, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, u_input.b.zz, 2147483647i, ~abs(global1[_wgslsmith_index_u32(firstTrailingBit(u_input.a), 12u)]), -1i);
}

