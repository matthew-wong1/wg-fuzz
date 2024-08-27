struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec3<f32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_3,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<Struct_1, 17>;

var<private> global2: vec3<f32>;

var<private> global3: array<bool, 9> = array<bool, 9>(false, false, false, true, true, true, true, false, true);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(~abs(reverseBits(0u)), -(~(-_wgslsmith_add_i32(2147483647i, u_input.a.x))), ~(-u_input.c.x));
}

