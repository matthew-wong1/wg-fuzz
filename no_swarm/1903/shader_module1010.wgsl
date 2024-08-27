struct Struct_1 {
    a: i32,
    b: f32,
    c: vec3<f32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: u32,
    d: Struct_1,
    e: vec4<i32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: bool,
    c: bool,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: vec3<u32>,
    d: Struct_1,
    e: u32,
}

struct Struct_5 {
    a: u32,
    b: vec4<f32>,
    c: vec2<f32>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -1863f;
    var var_1 = u_input.a;
    var_1 = _wgslsmith_div_i32(2147483647i, i32(-1i) * -4818i);
    var_1 = 2147483647i;
    var_1 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(1000f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-849f, 290f, 1000f, -1000f))))), u_input.b, ~(~u_input.c.x));
}

