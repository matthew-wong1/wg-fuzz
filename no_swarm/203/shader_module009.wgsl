struct Struct_1 {
    a: i32,
    b: f32,
    c: vec4<u32>,
    d: i32,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: vec4<bool>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: vec2<i32>,
    d: u32,
    e: Struct_3,
}

struct Struct_5 {
    a: vec3<u32>,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 21> = array<vec2<i32>, 21>(vec2<i32>(2147483647i, 0i), vec2<i32>(-24126i, -9799i), vec2<i32>(-2150i, -41197i), vec2<i32>(i32(-2147483648), -25313i), vec2<i32>(27347i, 7296i), vec2<i32>(0i, 0i), vec2<i32>(1i, 1i), vec2<i32>(2147483647i, -7446i), vec2<i32>(6315i, -31947i), vec2<i32>(2147483647i, -81057i), vec2<i32>(-15354i, 16663i), vec2<i32>(94415i, 2147483647i), vec2<i32>(0i, 2147483647i), vec2<i32>(-1i, -11327i), vec2<i32>(36253i, 22217i), vec2<i32>(-1i, -23977i), vec2<i32>(1i, -30308i), vec2<i32>(-23131i, -1i), vec2<i32>(2147483647i, 23681i), vec2<i32>(-1i, -23664i), vec2<i32>(-44857i, 1i));

var<private> global1: array<vec3<u32>, 8>;

var<private> global2: vec4<bool>;

var<private> global3: Struct_2;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<i32>, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d, -firstLeadingBit(_wgslsmith_mult_vec4_i32(~vec4<i32>(u_input.d, u_input.d, -5204i, 2147483647i), -vec4<i32>(3618i, 0i, -41129i, u_input.a))), 22437u, u_input.d);
}

