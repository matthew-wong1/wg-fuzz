struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: f32,
    c: vec3<u32>,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: u32,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(Struct_2(vec4<bool>(false, true, true, false), 1227f, vec3<u32>(1u, 0u, 113526u)));

var<private> global1: bool;

var<private> global2: array<vec4<f32>, 5>;

var<private> global3: f32;

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(min(u_input.b.x, firstLeadingBit(0i)), u_input.b.x | -2147483647i, firstLeadingBit(u_input.a.x), global0.a);
    let var_1 = u_input.b;
    var var_2 = var_0.d;
    let var_3 = var_2.c.x;
    let var_4 = !var_2.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.d.c);
}

