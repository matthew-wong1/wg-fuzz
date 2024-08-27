struct Struct_1 {
    a: i32,
    b: f32,
    c: bool,
    d: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec4<f32>,
    c: vec3<bool>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: vec3<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 25>;

var<private> global1: array<u32, 23>;

var<private> global2: vec2<i32>;

var<private> global3: Struct_1 = Struct_1(i32(-2147483648), -500f, true, vec2<u32>(4294967295u, 0u));

var<private> global4: Struct_2 = Struct_2(Struct_1(11368i, -1341f, true, vec2<u32>(1079u, 4294967295u)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = Struct_1(~97103i, -762f, false, u_input.b ^ (select(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(select(global4.a.d.x, u_input.c.x, global4.a.c), 23u)], 25u)], firstTrailingBit(vec2<u32>(33655u, u_input.c.x)), !global4.a.c) ^ ~(vec2<u32>(1u, 89986u) ^ vec2<u32>(0u, global1[_wgslsmith_index_u32(global3.d.x, 23u)]))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, global3.a, reverseBits(-global4.a.a), max(_wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(u_input.a, u_input.a), _wgslsmith_div_vec3_i32(u_input.a | vec3<i32>(global4.a.a, 1i, -1i), -u_input.a)), vec3<i32>(i32(-1i) * -global4.a.a, global4.a.a, global2.x)), _wgslsmith_f_op_f32(round(global3.b)));
}

