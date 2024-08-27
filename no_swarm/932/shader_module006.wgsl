struct Struct_1 {
    a: vec3<f32>,
    b: vec4<i32>,
    c: vec3<bool>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec2<i32>,
    b: i32,
    c: i32,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<vec2<i32>, 8> = array<vec2<i32>, 8>(vec2<i32>(965i, 0i), vec2<i32>(i32(-2147483648), 26921i), vec2<i32>(59978i, 56869i), vec2<i32>(2147483647i, -1i), vec2<i32>(27332i, -1i), vec2<i32>(20804i, -69428i), vec2<i32>(-1i, 31374i), vec2<i32>(16256i, -2475i));

var<private> global2: f32;

var<private> global3: array<Struct_4, 14>;

var<private> global4: i32 = i32(-2147483648);

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_4, 14>();
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1546f)) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-729f)) * 208f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(806f, -1674f, false)))), -305f, true)));
    var var_0 = u_input.c;
    let var_1 = Struct_3(_wgslsmith_add_vec2_i32(abs(select(vec2<i32>(var_0.x, var_0.x), -vec2<i32>(-48514i, u_input.a), vec2<bool>(true, true))), ~var_0.yz & ~_wgslsmith_div_vec2_i32(var_0.zx, vec2<i32>(u_input.a, 4741i))), var_0.x, var_0.x);
    let var_2 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(177f, var_2);
}

