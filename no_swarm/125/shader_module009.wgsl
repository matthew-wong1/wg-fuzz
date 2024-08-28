struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: u32,
    b: vec4<f32>,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: u32,
    b: vec2<f32>,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: vec4<u32>;

var<private> global2: array<Struct_2, 14>;

var<private> global3: array<vec2<i32>, 12>;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~60677u)), _wgslsmith_add_vec4_i32(~(-vec4<i32>(u_input.d.x, u_input.d.x, -1i, 2548i) ^ vec4<i32>(u_input.d.x, -15148i, 13936i, u_input.d.x)), max(vec4<i32>(0i, 13271i, u_input.d.x, 39489i) ^ vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.d.x), -vec4<i32>(u_input.d.x, 21804i, u_input.d.x, u_input.d.x)) & -vec4<i32>(0i, 42977i, u_input.d.x, -43686i)));
}

