struct Struct_1 {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: u32,
    c: i32,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<f32>,
    c: vec2<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 26>;

var<private> global1: array<vec2<i32>, 17> = array<vec2<i32>, 17>(vec2<i32>(0i, 0i), vec2<i32>(22017i, 53595i), vec2<i32>(-19287i, -12793i), vec2<i32>(21672i, -28023i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(-1i, -1i), vec2<i32>(-1i, 0i), vec2<i32>(-2158i, 1116i), vec2<i32>(-33276i, 203i), vec2<i32>(1i, 2147483647i), vec2<i32>(22514i, 0i), vec2<i32>(-1i, -7660i), vec2<i32>(0i, -18567i), vec2<i32>(1i, 0i), vec2<i32>(0i, 2147483647i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(-1i, 27098i));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<i32>, 17>();
    global0 = array<Struct_2, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(~_wgslsmith_div_i32(-u_input.e.x, _wgslsmith_sub_i32(u_input.e.x, u_input.e.x)), ~(~_wgslsmith_div_i32(u_input.e.x, u_input.e.x)), -u_input.e.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(532f, 255f) - vec2<f32>(-1879f, 1000f)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1011f, 1032f))))))), vec2<u32>(~0u, ~(~u_input.d)), u_input.c.x);
}

