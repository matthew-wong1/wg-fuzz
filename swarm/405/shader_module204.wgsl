struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec4<f32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(141f, vec4<u32>(1u, 22330u, 1u, 13217u), vec2<u32>(28699u, 51001u), vec4<f32>(139f, -2644f, -1563f, -380f), vec2<i32>(-1i, -21142i));

var<private> global1: array<vec3<u32>, 28>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(global0.c.x), countOneBits(global0.b.wyy), u_input.e, _wgslsmith_mod_u32(u_input.d, _wgslsmith_mod_u32(4294967295u, 22770u)));
}

