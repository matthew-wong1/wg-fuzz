struct Struct_1 {
    a: vec3<u32>,
    b: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<i32>,
    d: u32,
    e: vec4<u32>,
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

var<private> global0: array<vec3<u32>, 14>;

var<private> global1: Struct_1;

var<private> global2: array<vec2<f32>, 16> = array<vec2<f32>, 16>(vec2<f32>(-1501f, -1258f), vec2<f32>(1247f, 1219f), vec2<f32>(-1000f, -252f), vec2<f32>(1490f, -2167f), vec2<f32>(-889f, 176f), vec2<f32>(-1572f, 728f), vec2<f32>(276f, 407f), vec2<f32>(1567f, 1461f), vec2<f32>(-360f, -705f), vec2<f32>(1000f, -1060f), vec2<f32>(358f, -1351f), vec2<f32>(252f, 729f), vec2<f32>(-307f, -162f), vec2<f32>(1365f, 159f), vec2<f32>(-839f, -667f), vec2<f32>(583f, -1811f));

var<private> global3: array<bool, 7>;

var<private> global4: array<i32, 5>;

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(~global1.a.x);
}

