struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: vec4<bool>,
    e: vec4<u32>,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
    c: bool,
}

struct Struct_5 {
    a: bool,
    b: i32,
    c: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 23>;

var<private> global1: u32;

var<private> global2: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(10799u), Struct_1(0u), Struct_1(66943u), Struct_1(0u), Struct_1(106982u), Struct_1(4294967295u), Struct_1(37677u), Struct_1(11870u), Struct_1(0u), Struct_1(4294967295u), Struct_1(44826u), Struct_1(1u), Struct_1(4294967295u), Struct_1(55869u), Struct_1(1u));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(~u_input.a.x, u_input.c << (u_input.c % 32u), u_input.a.x), ~(~u_input.a.x))), 343f);
}

