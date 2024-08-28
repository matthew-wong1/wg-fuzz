struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: vec4<f32>,
    c: vec2<bool>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 1>;

var<private> global1: f32;

var<private> global2: vec3<bool>;

var<private> global3: array<vec2<u32>, 19> = array<vec2<u32>, 19>(vec2<u32>(1u, 48119u), vec2<u32>(36318u, 0u), vec2<u32>(25097u, 1u), vec2<u32>(32593u, 0u), vec2<u32>(1u, 7712u), vec2<u32>(57621u, 4294967295u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(20122u, 4294967295u), vec2<u32>(4294967295u, 83817u), vec2<u32>(1u, 4294967295u), vec2<u32>(22280u, 55075u), vec2<u32>(33975u, 89774u), vec2<u32>(41698u, 8157u), vec2<u32>(25201u, 1u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(4294967295u, 1u), vec2<u32>(0u, 34076u), vec2<u32>(104742u, 1u), vec2<u32>(0u, 86981u));

var<private> global4: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(vec4<bool>(true, true, false, false)), Struct_1(vec4<bool>(false, false, false, false)), Struct_1(vec4<bool>(true, false, false, true)));

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(min(~min(u_input.c, ~1u), ~0u));
}

