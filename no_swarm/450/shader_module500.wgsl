struct Struct_1 {
    a: vec4<f32>,
    b: vec3<u32>,
    c: vec2<bool>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec2<u32>, 27>;

var<private> global2: array<u32, 27> = array<u32, 27>(1u, 22924u, 25818u, 36640u, 1u, 14126u, 37515u, 4294967295u, 57268u, 1u, 16788u, 1u, 4294967295u, 1u, 62209u, 48269u, 0u, 1u, 72859u, 0u, 0u, 0u, 0u, 30663u, 61724u, 26911u, 50621u);

var<private> global3: f32;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 333f;
    let x = u_input.a;
    s_output = StorageBuffer(0u, _wgslsmith_add_u32(4294967295u, u_input.a), u_input.b, vec2<f32>(-185f, -189f));
}

