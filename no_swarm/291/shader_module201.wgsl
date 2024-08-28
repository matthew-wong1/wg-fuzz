struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec4<bool>,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: vec2<i32>,
    b: u32,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: i32,
    e: vec2<bool>,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(1674f, -110f);

var<private> global1: array<u32, 28>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(0u, ~min(-firstTrailingBit(vec4<i32>(0i, u_input.b, u_input.b, u_input.b)), select(vec4<i32>(u_input.b, 0i, 2147483647i, 75259i), vec4<i32>(31849i, 26650i, 11505i, u_input.b), vec4<bool>(true, true, true, false)) >> ((vec4<u32>(1u, global1[_wgslsmith_index_u32(42118u, 28u)], 43121u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(21690u, 28u)], 28u)]) | vec4<u32>(u_input.a, 0u, u_input.a, u_input.a)) % vec4<u32>(32u))));
}

