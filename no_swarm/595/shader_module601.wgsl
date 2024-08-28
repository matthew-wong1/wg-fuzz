struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: Struct_3,
    d: i32,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1) -> i32 {
    let var_0 = arg_0;
    let var_1 = min(_wgslsmith_div_i32(-min(~0i, countOneBits(90897i)), abs(-_wgslsmith_sub_i32(30112i, 2147483647i))), u_input.b.x);
    var var_2 = Struct_4(Struct_3(_wgslsmith_f_op_vec4_f32(-var_0.b)), true, Struct_3(vec4<f32>(arg_0.c.x, _wgslsmith_div_f32(arg_0.b.x, -378f), _wgslsmith_f_op_f32(f32(-1f) * -109f), var_0.b.x)), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -_wgslsmith_clamp_vec4_i32(u_input.b, u_input.b, u_input.b), u_input.b), abs(abs(-u_input.b.wzw)));
    var var_3 = -1i <= var_2.e.x;
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(851f + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.x) + -292f)))));
    return 43917i;
}

fn func_2(arg_0: vec3<u32>, arg_1: bool) -> f32 {
    var var_0 = ~_wgslsmith_div_u32(u_input.c.x, arg_0.x);
    let var_1 = Struct_2(u_input.b.xzz);
    var var_2 = Struct_2(vec3<i32>(var_1.a.x, _wgslsmith_div_i32(select(-5468i, 8907i, true), 2147483647i), 16447i) & vec3<i32>(var_1.a.x, ~func_3(Struct_1(arg_1, vec4<f32>(1311f, 565f, 1187f, 1000f), vec3<f32>(1171f, -231f, 169f))), _wgslsmith_sub_i32(var_1.a.x ^ var_1.a.x, 0i)));
    let var_3 = vec3<u32>(0u, _wgslsmith_mult_u32(~arg_0.x, ~(u_input.c.x << (u_input.e.x % 32u))), ~u_input.d);
    var_2 = Struct_2(var_1.a);
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-844f - 420f) * -728f))))));
}

fn func_1(arg_0: vec3<u32>, arg_1: u32) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(vec3<u32>(u_input.d, 62993u, 104293u), true)) * -348f)), -135f))));
    return !vec2<bool>(select(any(vec2<bool>(true, false)), true, true) && !all(vec2<bool>(true, false)), !any(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>(41876u, _wgslsmith_dot_vec2_u32(countOneBits(reverseBits(vec2<u32>(28971u, 16436u))), vec2<u32>(countOneBits(u_input.c.x), 0u | u_input.c.x)) >> (u_input.c.x % 32u));
    let var_1 = vec2<bool>((u_input.d == (~u_input.c.x >> (~u_input.e.x % 32u))) && any(func_1(~u_input.e, var_0.x)), !(!all(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), true))));
    let var_2 = u_input.b;
    var var_3 = 0u;
    var var_4 = Struct_4(Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) * vec4<f32>(1416f, -225f, -115f, 928f)))), var_1.x, Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2111f, -1075f, -268f, 1794f)) - vec4<f32>(-421f, 1327f, -330f, -567f)))), -(countOneBits(~var_2.x) & 2147483647i), var_2.wyw);
    let x = u_input.a;
    s_output = StorageBuffer(var_4.c.a.ww, u_input.b.x);
}

