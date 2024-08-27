struct Struct_1 {
    a: bool,
    b: bool,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: i32,
}

struct Struct_4 {
    a: i32,
    b: vec2<f32>,
    c: vec4<u32>,
}

struct Struct_5 {
    a: bool,
    b: i32,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: vec3<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 2>;

var<private> global1: array<i32, 21> = array<i32, 21>(63145i, -1i, 3879i, -10387i, -16310i, -34322i, 7989i, 0i, 57670i, -38831i, 71668i, -1i, 0i, -10852i, 1i, i32(-2147483648), -1i, 15029i, 1i, 0i, 0i);

var<private> global2: array<vec2<i32>, 11>;

var<private> global3: Struct_5;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(reverseBits(u_input.a.x), 5671u), i32(-1i) * -6280i, ~vec2<u32>(~(0u << (0u % 32u)), _wgslsmith_div_u32(~u_input.d.x, firstLeadingBit(37779u))));
}

