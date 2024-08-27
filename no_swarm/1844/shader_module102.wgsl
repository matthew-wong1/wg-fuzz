struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: u32,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: f32,
    b: vec2<i32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: vec4<u32>,
    d: vec2<bool>,
    e: vec4<u32>,
}

struct Struct_5 {
    a: vec3<u32>,
    b: vec4<u32>,
    c: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: f32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 26> = array<f32, 26>(1250f, 642f, 669f, 1515f, -603f, 264f, -518f, -484f, 1073f, -187f, 736f, 718f, -187f, -194f, 146f, 673f, -568f, 361f, -1000f, -2103f, 119f, 1000f, -1999f, 705f, -613f, 718f);

var<private> global1: Struct_2;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 9029u;
    global1 = Struct_2(vec4<bool>(all(vec3<bool>(all(vec4<bool>(global1.a.x, true, true, global1.a.x)), false, global1.a.x | true)), !(!any(global1.a)), any(!select(vec2<bool>(global1.a.x, global1.a.x), vec2<bool>(false, global1.a.x), global1.a.zz)), firstLeadingBit(~u_input.a.x) < global1.d), 1u, Struct_1(~var_0, ~_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(26856i, global1.c.b, global1.c.b, u_input.a.x), vec4<i32>(9802i, u_input.a.x, global1.c.b, global1.d)), _wgslsmith_add_vec4_i32(vec4<i32>(4460i, 2147483647i, 1i, u_input.a.x), vec4<i32>(global1.d, u_input.a.x, 65876i, 0i)))), ~global1.c.b);
    global0 = array<f32, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(global1.c.b, u_input.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(min(_wgslsmith_mult_u32(global1.b, global1.c.a), u_input.b.x), 26u)] * 1518f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(52357u, u_input.b.x), 26u)]) - -1396f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(453f, global0[_wgslsmith_index_u32(var_0, 26u)], 472f, global0[_wgslsmith_index_u32(u_input.c.x, 26u)]) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(0u, 26u)], 921f, global0[_wgslsmith_index_u32(global1.b, 26u)], global0[_wgslsmith_index_u32(4294967295u, 26u)]))), vec4<f32>(_wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(global1.b, 26u)], global0[_wgslsmith_index_u32(1u, 26u)])), global0[_wgslsmith_index_u32(1u, 26u)], 1316f, _wgslsmith_f_op_f32(2548f - global0[_wgslsmith_index_u32(var_0, 26u)]))))));
}

