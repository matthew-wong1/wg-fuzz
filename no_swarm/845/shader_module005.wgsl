struct Struct_1 {
    a: f32,
    b: u32,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct Struct_4 {
    a: u32,
    b: bool,
    c: Struct_2,
    d: f32,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-829f, 0u, -1i, -1000f);

var<private> global1: Struct_3;

var<private> global2: Struct_4;

var<private> global3: array<vec2<i32>, 12> = array<vec2<i32>, 12>(vec2<i32>(-32189i, -29279i), vec2<i32>(1i, 1i), vec2<i32>(-42960i, i32(-2147483648)), vec2<i32>(2147483647i, -16477i), vec2<i32>(1i, -41658i), vec2<i32>(4799i, -24513i), vec2<i32>(55706i, 0i), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(0i, -6986i), vec2<i32>(1i, 2147483647i), vec2<i32>(2147483647i, -1i), vec2<i32>(0i, 2147483647i));

var<private> global4: array<bool, 13> = array<bool, 13>(false, false, false, false, false, false, false, true, true, true, true, false, false);

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 61307u;
    let x = u_input.a;
    s_output = StorageBuffer(global1.a);
}

