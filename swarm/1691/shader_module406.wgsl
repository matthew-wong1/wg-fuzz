struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: vec4<i32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_2,
    c: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c;
    let var_1 = Struct_3(vec4<bool>(true, any(vec3<bool>(true, true, 32232u == u_input.a)), true, (false != any(vec4<bool>(false, true, true, true))) | (1i < -u_input.b.x)), _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(var_0.x, u_input.c.x, var_0.x, u_input.c.x), vec4<i32>(2147483647i, -1i, 2147483647i, -596i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, var_0.x, 1i), vec4<i32>(u_input.b.x, -1i, -23723i, u_input.c.x), vec4<i32>(var_0.x, 9166i, var_0.x, 1i))), -u_input.b.x, u_input.b.x, -u_input.b.x), -_wgslsmith_div_vec4_i32(vec4<i32>(60461i, var_0.x, var_0.x, 0i), vec4<i32>(u_input.c.x, var_0.x, u_input.c.x, 1i)) ^ max(-vec4<i32>(u_input.c.x, var_0.x, 14235i, 1i), vec4<i32>(1i, var_0.x, 18488i, var_0.x) >> (vec4<u32>(u_input.a, 4294967295u, 1u, u_input.a) % vec4<u32>(32u)))));
    var var_2 = Struct_1(-29360i);
    var var_3 = var_1.a.zy;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x, ~9334u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -606f) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-902f, 565f), vec2<f32>(1440f, 857f)))))), ~u_input.a);
}

