struct Struct_1 {
    a: u32,
    b: bool,
    c: vec4<bool>,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: vec3<f32>,
}

struct Struct_4 {
    a: f32,
    b: u32,
    c: vec4<u32>,
    d: i32,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: vec3<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 24>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<u32>, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x, u_input.b.x, u_input.b.xw, u_input.b.xxx, _wgslsmith_sub_i32(u_input.b.x, _wgslsmith_sub_i32((-1i << (u_input.c.x % 32u)) | firstTrailingBit(u_input.b.x), min(min(u_input.b.x, u_input.b.x), u_input.b.x))));
}

