struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
}

struct Struct_4 {
    a: vec3<i32>,
    b: i32,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
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

var<private> global0: array<Struct_4, 9>;

var<private> global1: array<vec2<f32>, 20>;

fn func_1() -> Struct_1 {
    global1 = array<vec2<f32>, 20>();
    return Struct_1(select(reverseBits(u_input.a.yw), select(u_input.a.wz, max(u_input.a.xw, ~u_input.a.yw), vec2<bool>(true, u_input.a.x == u_input.a.x)), false));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!(u_input.a.x < u_input.a.x));
    global1 = array<vec2<f32>, 20>();
    global0 = array<Struct_4, 9>();
    global0 = array<Struct_4, 9>();
    let var_1 = func_1();
    let var_2 = 0i;
    let x = u_input.a;
    s_output = StorageBuffer(752f);
}

