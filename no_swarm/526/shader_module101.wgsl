struct Struct_1 {
    a: vec3<f32>,
    b: vec2<i32>,
    c: f32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: i32,
    b: vec4<f32>,
    c: vec2<bool>,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec4<u32>,
    c: u32,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 24>;

var<private> global1: Struct_3;

var<private> global2: array<vec4<bool>, 2> = array<vec4<bool>, 2>(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(~_wgslsmith_mod_i32(u_input.a, u_input.b), min(1i, -15157i)) << (vec2<u32>(_wgslsmith_mod_u32(reverseBits(global1.b.x), _wgslsmith_add_u32(global1.c, global1.b.x)), ~1u) % vec2<u32>(32u)));
}

