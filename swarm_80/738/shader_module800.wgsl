struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: Struct_1,
    d: bool,
    e: f32,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: vec3<f32>,
    d: Struct_1,
    e: vec4<u32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: u32,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_1(arg_0: vec4<i32>) -> StorageBuffer {
    return StorageBuffer(vec3<f32>(-754f, 225f, _wgslsmith_f_op_f32(select(2467f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -864f)), any(vec4<bool>(true, false, false, true))))), 1000f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-2443f, 1280f, 644f, 348f) - vec4<f32>(1379f, -2595f, 2045f, -108f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(_wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(~vec4<i32>(-11667i, 64626i, u_input.d, u_input.b), vec4<i32>(-53889i, u_input.d, -2147483647i, u_input.a)) & ~vec4<i32>(u_input.b, -2147483647i, u_input.b, u_input.d), (vec4<i32>(u_input.b, 26028i, u_input.b, u_input.b) << ((vec4<u32>(u_input.c, u_input.c, 61614u, 4686u) & vec4<u32>(21316u, 30101u, 0u, 24477u)) % vec4<u32>(32u))) & vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 2147483647i, 21922i), vec3<i32>(u_input.b, u_input.a, u_input.d)), 40755i, u_input.b, u_input.a ^ 38811i)));
}

