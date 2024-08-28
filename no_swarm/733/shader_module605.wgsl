struct Struct_1 {
    a: vec4<u32>,
    b: vec2<bool>,
    c: vec3<f32>,
    d: vec3<f32>,
    e: bool,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_1,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_3,
    c: i32,
    d: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~_wgslsmith_sub_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(u_input.a, 2147483647i), _wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, u_input.a), vec2<i32>(u_input.a, u_input.a)) ^ vec2<i32>(36945i, u_input.a)));
    global0 = _wgslsmith_f_op_f32(235f + -315f);
    var var_1 = firstTrailingBit(abs(~vec4<i32>(-2147483647i, -u_input.a, max(-1i, 41568i), ~u_input.a)));
    let x = u_input.a;
    s_output = StorageBuffer(0u);
}

