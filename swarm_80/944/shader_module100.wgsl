struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 9> = array<vec3<i32>, 9>(vec3<i32>(1i, 26884i, -12545i), vec3<i32>(-12219i, i32(-2147483648), 63687i), vec3<i32>(-8674i, 8952i, -1i), vec3<i32>(30956i, 0i, 2147483647i), vec3<i32>(2147483647i, 0i, 10219i), vec3<i32>(i32(-2147483648), -1i, i32(-2147483648)), vec3<i32>(180i, 0i, 9079i), vec3<i32>(9506i, 1i, 1i), vec3<i32>(-1i, -30890i, 2147483647i));

var<private> global1: u32 = 3540u;

var<private> global2: array<bool, 19>;

var<private> global3: array<Struct_1, 28>;

var<private> global4: array<i32, 5>;

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(-1277f, -226f);
}

