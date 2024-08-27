struct Struct_1 {
    a: vec3<i32>,
    b: vec3<u32>,
    c: bool,
    d: u32,
    e: vec3<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 5>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1(arg_0: f32, arg_1: bool, arg_2: i32, arg_3: vec2<u32>) -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - arg_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0)) + _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2304f * -2574f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(452f, 635f, -2242f, arg_0) - vec4<f32>(arg_0, arg_0, -977f, arg_0)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, -2270f, 2043f)))), select(vec4<bool>(false, false, arg_1, true), select(vec4<bool>(arg_1, false, false, false), vec4<bool>(false, arg_1, arg_1, false), arg_1), vec4<bool>(arg_1, arg_1, arg_1, arg_1)))))));
    let var_1 = 159f;
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-114f, arg_0, -1554f, var_0.x) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(559f, var_1, -1072f, arg_0), _wgslsmith_f_op_vec4_f32(max(var_0, var_0)))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, -128f, var_1, arg_0)))) - var_0));
    global0 = array<vec2<f32>, 5>();
    global0 = array<vec2<f32>, 5>();
    return -324f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(vec2<i32>(countOneBits(_wgslsmith_mult_i32(u_input.a.x, countOneBits(u_input.c.x))), _wgslsmith_div_i32(_wgslsmith_sub_i32(abs(u_input.c.x), u_input.a.x), _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(8787i, 1i, -1i, 0i)), vec4<i32>(-19379i, u_input.c.x, 17418i, 0i)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-2147483647i, -10695i, var_0.a.x >> (u_input.b.x % 32u), 39882i & firstLeadingBit(_wgslsmith_div_i32(u_input.a.x, 53638i))), -352f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(-615f, true, i32(-1i) * -25579i, u_input.b.zz)))));
}

