struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: vec3<f32>,
    d: Struct_1,
    e: vec3<i32>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_3,
    c: Struct_1,
    d: f32,
    e: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 9>;

var<private> global1: array<vec3<bool>, 4> = array<vec3<bool>, 4>(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false));

var<private> global2: array<vec3<f32>, 11> = array<vec3<f32>, 11>(vec3<f32>(-941f, -1000f, 579f), vec3<f32>(-768f, -200f, -549f), vec3<f32>(-431f, 261f, 235f), vec3<f32>(-1000f, -229f, -706f), vec3<f32>(201f, 693f, -346f), vec3<f32>(-220f, 421f, 224f), vec3<f32>(1459f, 767f, -115f), vec3<f32>(-1713f, 926f, 516f), vec3<f32>(-168f, -203f, 324f), vec3<f32>(-715f, 1018f, -2848f), vec3<f32>(1000f, 1192f, 809f));

var<private> global3: f32 = -591f;

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<bool>, 4>();
    let x = u_input.a;
    s_output = StorageBuffer(-544f);
}

