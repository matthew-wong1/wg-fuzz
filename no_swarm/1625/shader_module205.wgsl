struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: i32,
    d: u32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: i32,
    d: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: bool,
    d: vec2<f32>,
    e: i32,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 5>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32, arg_1: vec4<i32>, arg_2: Struct_5) -> u32 {
    global0 = array<vec2<i32>, 5>();
    global0 = array<vec2<i32>, 5>();
    let var_0 = arg_1.x;
    let var_1 = vec4<i32>(0i, ~(~_wgslsmith_add_i32(-15859i, ~0i)), ~_wgslsmith_mult_i32(-24806i, 1i & select(arg_2.a.e, arg_2.a.e, false)), ~arg_1.x);
    return u_input.a.x;
}

fn func_2(arg_0: Struct_1) -> Struct_4 {
    let var_0 = !(func_3(_wgslsmith_f_op_f32(min(-2077f, _wgslsmith_f_op_f32(119f - arg_0.a))), max(vec4<i32>(-54816i, -21943i, 10541i, -1i), -vec4<i32>(59921i, -9576i, -2147483647i, 59818i)), Struct_5(Struct_4(Struct_3(vec3<bool>(false, true, false), vec4<f32>(arg_0.a, arg_0.a, arg_0.a, 4441f), -40185i, arg_0.a), arg_0.a, false, vec2<f32>(arg_0.a, -1237f), 0i))) < _wgslsmith_sub_u32(4294967295u, u_input.a.x));
    let var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.a, _wgslsmith_div_f32(-413f, _wgslsmith_f_op_f32(-344f + arg_0.a)))), -1004f));
    var var_2 = _wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(min(firstTrailingBit(vec2<i32>(-2147483647i, 0i)), vec2<i32>(8107i << (u_input.a.x % 32u), 1i)), vec2<i32>(-24082i, firstLeadingBit(i32(-1i) * -2147483647i))), -vec2<i32>(0i, ~1i));
    let var_3 = any(vec4<bool>(!var_0, true, all(vec2<bool>(all(vec4<bool>(true, var_0, var_0, false)), false)), true));
    var_2 = vec2<i32>(25967i, -20175i);
    return Struct_4(Struct_3(!(!(!vec3<bool>(var_0, var_0, var_3))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1092f, 1405f, arg_0.a, var_1)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a, 1957f, var_1, -656f) + vec4<f32>(-1682f, -2038f, var_1, 1000f)))), var_2.x, _wgslsmith_f_op_f32(852f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a + -2033f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1190f, 1649f))), var_0, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -501f), arg_0.a), -1i);
}

fn func_4(arg_0: Struct_5) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(510f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.d.x)))), arg_0.a.b, !arg_0.a.a.a.x));
    let var_1 = arg_0.a.a.b;
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(select(-1185f, _wgslsmith_f_op_f32(f32(-1f) * -176f), select(all(!vec4<bool>(true, true, arg_0.a.a.a.x, arg_0.a.c)), true, arg_0.a.a.a.x && true))));
    var var_2 = func_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.d.x * -1000f) - var_1.x))).a.b.x;
    let var_3 = Struct_2(var_1.x, Struct_1(_wgslsmith_f_op_f32(511f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_1.x, 1000f)) * _wgslsmith_f_op_f32(-157f - var_1.x)))), ~_wgslsmith_clamp_i32(arg_0.a.e, ~select(-1i, -28094i, arg_0.a.a.a.x), arg_0.a.a.c), u_input.a.x);
    return func_2(Struct_1(-933f)).a;
}

fn func_1() -> vec4<bool> {
    var var_0 = func_4(Struct_5(func_2(Struct_1(_wgslsmith_div_f32(-782f, -1123f)))));
    global0 = array<vec2<i32>, 5>();
    let var_1 = vec4<u32>(1u, ~u_input.a.x, max(~101507u, u_input.a.x), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, select(u_input.a.x, ~4294967295u, true), min(_wgslsmith_clamp_u32(22532u, 18532u, u_input.a.x), u_input.a.x), _wgslsmith_dot_vec2_u32(u_input.a, u_input.a)), ~(~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)) ^ (~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 281u) & _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 75955u, u_input.a.x), vec4<u32>(u_input.a.x, 28398u, u_input.a.x, u_input.a.x)))));
    var var_2 = func_4(Struct_5(Struct_4(func_2(Struct_1(var_0.d)).a, -669f, var_0.a.x, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.d, var_0.d)))), _wgslsmith_mod_i32(-var_0.c, 0i))));
    let var_3 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-var_2.b.xww)));
    return !select(select(!vec4<bool>(var_2.a.x, var_0.a.x, true, var_0.a.x), vec4<bool>(!var_0.a.x, var_0.a.x, false || var_0.a.x, select(true, var_0.a.x, var_0.a.x)), vec4<bool>(656f >= var_2.d, func_4(Struct_5(Struct_4(Struct_3(vec3<bool>(false, false, var_0.a.x), vec4<f32>(182f, 1086f, var_2.d, 1000f), var_2.c, 1257f), -576f, var_2.a.x, vec2<f32>(-910f, 523f), var_2.c))).a.x, var_0.a.x, true)), vec4<bool>(any(vec3<bool>(true, false, true)), all(vec3<bool>(true, true, true)), var_2.a.x, !(!var_2.a.x)), var_2.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1430f;
    let var_1 = 0i;
    var var_2 = select(select(select(vec4<bool>(any(vec3<bool>(true, true, true)), all(vec2<bool>(true, false)), true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), func_1()), 3420u < (u_input.a.x << (89570u % 32u))), !select(vec4<bool>(true, true, true, true), func_1(), false), false), vec4<bool>(true, !(!func_2(Struct_1(var_0)).a.a.x), true, func_4(Struct_5(func_2(Struct_1(var_0)))).a.x), vec4<bool>(~var_1 != var_1, true, !(select(true, false, false) && func_2(Struct_1(1237f)).c), true));
    let var_3 = firstLeadingBit(_wgslsmith_add_vec4_i32(vec4<i32>(~_wgslsmith_mult_i32(17102i, -1i), 29346i, -120683i, ~var_1), firstTrailingBit(vec4<i32>(var_1, ~var_1, 1i, ~9901i))));
    global0 = array<vec2<i32>, 5>();
    var var_4 = vec2<bool>(!(!select(true, false, var_2.x)), var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(min(2147483647i, _wgslsmith_mult_i32(_wgslsmith_mod_i32(var_3.x, 1i), var_1)));
}

