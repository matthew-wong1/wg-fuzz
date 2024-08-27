struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec4<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<f32>,
    c: Struct_1,
    d: u32,
}

struct Struct_5 {
    a: Struct_2,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 11> = array<vec3<i32>, 11>(vec3<i32>(25732i, 11598i, 26462i), vec3<i32>(-1i, 74682i, -67619i), vec3<i32>(31715i, -7345i, 55404i), vec3<i32>(2147483647i, -78631i, 7865i), vec3<i32>(1i, 2147483647i, 2147483647i), vec3<i32>(28975i, -24506i, 2147483647i), vec3<i32>(14460i, i32(-2147483648), -30505i), vec3<i32>(1i, -35312i, 62443i), vec3<i32>(2147483647i, 1469i, -83103i), vec3<i32>(-35490i, 14752i, 6158i), vec3<i32>(31919i, 2147483647i, -71528i));

var<private> global1: bool = true;

var<private> global2: array<bool, 18>;

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c;
    let var_1 = max(64800u, 3754u);
    global2 = array<bool, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, u_input.a);
}

