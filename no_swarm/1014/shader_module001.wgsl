struct Struct_1 {
    a: vec2<bool>,
    b: vec4<bool>,
    c: i32,
    d: f32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: bool,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: u32, arg_1: bool) -> u32 {
    var var_0 = -_wgslsmith_clamp_vec2_i32(abs(_wgslsmith_div_vec2_i32(vec2<i32>(0i, -1i), u_input.c)), vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_mult_i32(-2147483647i, u_input.c.x), u_input.c.x), _wgslsmith_add_i32(-10065i, u_input.c.x) & u_input.c.x), u_input.c);
    var_0 = _wgslsmith_mod_vec2_i32(u_input.c, reverseBits(u_input.c));
    let var_1 = !(!(1i < (1i | u_input.c.x))) && arg_1;
    var var_2 = select(!vec4<bool>(!var_1 && !var_1, all(select(vec3<bool>(false, var_1, var_1), vec3<bool>(var_1, var_1, false), vec3<bool>(true, true, var_1))), true, (arg_0 >> (87781u % 32u)) < _wgslsmith_div_u32(7935u, arg_0)), select(!vec4<bool>(var_1, any(vec2<bool>(true, true)), !var_1, var_1), select(select(vec4<bool>(true, true, true, false), select(vec4<bool>(true, false, true, var_1), vec4<bool>(false, var_1, arg_1, arg_1), true), select(vec4<bool>(var_1, arg_1, arg_1, arg_1), vec4<bool>(var_1, arg_1, true, arg_1), vec4<bool>(var_1, true, true, var_1))), !select(vec4<bool>(true, true, true, true), vec4<bool>(var_1, arg_1, var_1, false), vec4<bool>(true, false, false, true)), !select(vec4<bool>(var_1, arg_1, var_1, false), vec4<bool>(false, false, arg_1, true), vec4<bool>(arg_1, var_1, true, false))), vec4<bool>(!arg_1, any(vec4<bool>(true, true, true, true)), true, true)), !(!((true && arg_1) == (false && arg_1))));
    var_2 = select(!vec4<bool>(false, true, !all(vec2<bool>(false, arg_1)), all(vec4<bool>(arg_1, true, false, var_1))), vec4<bool>(all(vec3<bool>(false, any(vec4<bool>(false, var_1, var_2.x, arg_1)), var_1)), !arg_1, var_2.x, any(!vec4<bool>(var_2.x, var_2.x, true, var_2.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-511f + -1000f))))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(961f + 1170f) + _wgslsmith_f_op_f32(341f - -1483f))));
    return _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.b.zww, u_input.b.xwx), ~vec3<u32>(~1u, select(_wgslsmith_mult_u32(32257u, 0u), _wgslsmith_div_u32(u_input.b.x, u_input.a), select(true, var_2.x, arg_1)), ~(u_input.b.x >> (0u % 32u))));
}

fn func_2(arg_0: vec2<f32>) -> bool {
    let var_0 = Struct_2(_wgslsmith_sub_vec4_i32(~select(vec4<i32>(-1i, 1i, -18970i, u_input.c.x), vec4<i32>(u_input.c.x, u_input.c.x, -2147483647i, u_input.c.x), false), firstTrailingBit(vec4<i32>(u_input.c.x, u_input.c.x, 0i, 27645i)) & vec4<i32>(u_input.c.x, u_input.c.x, 76816i, u_input.c.x)) << (abs(vec4<u32>(u_input.a, 43785u, u_input.a, u_input.b.x & u_input.b.x)) % vec4<u32>(32u)));
    var var_1 = u_input.a;
    let var_2 = vec2<u32>(_wgslsmith_div_u32(~(~func_3(0u, true)), u_input.a), 0u);
    let var_3 = Struct_2(abs(var_0.a) >> (~(~(~vec4<u32>(1u, 1u, 72651u, u_input.a))) % vec4<u32>(32u)));
    var_1 = 1u;
    return ~_wgslsmith_mult_u32(u_input.b.x, 1u) <= (u_input.a >> (~4294967295u % 32u));
}

fn func_4(arg_0: bool, arg_1: vec4<bool>, arg_2: bool) -> vec2<bool> {
    let var_0 = 1i;
    let var_1 = vec2<bool>(any(arg_1.xz), arg_1.x);
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(floor(167f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-657f + -148f)))), 186f);
    let var_3 = 28664i;
    var var_4 = _wgslsmith_f_op_f32(trunc(var_2.x));
    return vec2<bool>(arg_2, any(select(vec2<bool>(true, true), arg_1.wz, vec2<bool>(arg_2, true))));
}

fn func_1(arg_0: Struct_3, arg_1: f32) -> u32 {
    let var_0 = arg_0.b;
    var var_1 = 310f < _wgslsmith_f_op_f32(var_0 + arg_0.b);
    var_1 = arg_0.a;
    var_1 = (66853i ^ u_input.c.x) != _wgslsmith_dot_vec2_i32(~(vec2<i32>(u_input.c.x, -48956i) >> ((vec2<u32>(u_input.a, 1u) | vec2<u32>(0u, 31047u)) % vec2<u32>(32u))), vec2<i32>(-1i, u_input.c.x));
    var var_2 = Struct_1(func_4(_wgslsmith_f_op_f32(select(-516f, _wgslsmith_f_op_f32(f32(-1f) * -1768f), arg_0.a)) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0.b)) + _wgslsmith_f_op_f32(-var_0)), vec4<bool>(false, func_2(_wgslsmith_div_vec2_f32(vec2<f32>(arg_1, var_0), vec2<f32>(arg_0.b, 352f))), _wgslsmith_f_op_f32(min(arg_0.b, arg_0.b)) > _wgslsmith_f_op_f32(step(arg_1, arg_0.b)), true), arg_0.a), vec4<bool>(arg_0.a, true, false, any(!(!vec3<bool>(arg_0.a, arg_0.a, false)))), ~(~(-(~u_input.c.x))), 503f, vec3<f32>(-857f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1776f - _wgslsmith_f_op_f32(-arg_0.b))), _wgslsmith_f_op_f32(select(-1852f, arg_1, arg_0.a))));
    return ~(~_wgslsmith_mult_u32(~u_input.b.x, 0u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>(~(func_1(Struct_3(false, 1042f), _wgslsmith_f_op_f32(select(184f, -1000f, true))) & 6223u), select(~28964u, u_input.b.x, select(true, any(vec4<bool>(false, true, true, true)), true) || false));
    var_0 = ~countOneBits(_wgslsmith_sub_vec2_u32(~vec2<u32>(u_input.b.x, 14074u), u_input.b.zx));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(~_wgslsmith_clamp_i32(-2147483647i, -1i << (var_0.x % 32u), 655i), ~u_input.c.x, _wgslsmith_mod_i32(-54735i, reverseBits(u_input.c.x)), -_wgslsmith_div_i32(u_input.c.x, 22884i)));
}

