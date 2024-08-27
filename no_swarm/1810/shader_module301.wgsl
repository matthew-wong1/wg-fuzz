struct Struct_1 {
    a: bool,
    b: vec3<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: u32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: u32,
    b: vec2<i32>,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<vec2<u32>, 17>;

var<private> global2: array<bool, 13> = array<bool, 13>(true, false, false, false, false, true, true, true, true, true, false, false, false);

var<private> global3: u32 = 0u;

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -45185i >> (0u % 32u);
    global1 = array<vec2<u32>, 17>();
    var var_1 = global0.a.www;
    global2 = array<bool, 13>();
    let var_2 = true;
    global3 = 4294967295u;
    var_1 = global0.a.wzz;
    let x = u_input.a;
    s_output = StorageBuffer(1170f, abs(17899i << (global0.c.b.x % 32u)));
}

