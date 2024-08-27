struct Struct_1 {
    a: i32,
    b: u32,
    c: vec4<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: f32,
    c: vec4<i32>,
    d: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: f32,
    d: vec4<f32>,
}

struct Struct_4 {
    a: bool,
    b: vec2<f32>,
    c: Struct_1,
    d: vec2<i32>,
    e: u32,
}

struct Struct_5 {
    a: u32,
    b: f32,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 3>;

var<private> global1: array<i32, 15> = array<i32, 15>(-1i, 0i, -45394i, i32(-2147483648), 29415i, 1i, 0i, 0i, 2147483647i, -7042i, -21288i, 1i, -1i, 71994i, 43242i);

var<private> global2: array<Struct_4, 24>;

var<private> global3: u32;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1[_wgslsmith_index_u32(u_input.a.x & 13743u, 15u)];
    global0 = array<vec2<u32>, 3>();
    var var_1 = u_input.b.zy;
    global2 = array<Struct_4, 24>();
    var var_2 = u_input.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(-925f, 1u);
}

