struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<u32>,
    d: f32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3() -> bool {
    global0 = u_input.d.x;
    global0 = countOneBits(~1u);
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1410f, -1813f))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + 212f) - _wgslsmith_f_op_f32(var_0.a + var_0.a))) - var_0.a));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a + -477f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a)))));
    return !any(vec4<bool>(true, true, true, true));
}

fn func_2() -> bool {
    var var_0 = u_input.a.x;
    var_0 = u_input.a.x;
    global0 = _wgslsmith_dot_vec4_u32(max(vec4<u32>(1u, u_input.c.x, 0u, ~u_input.d.x), vec4<u32>(abs(67800u), 1u, 42501u << (u_input.c.x % 32u), 1u & u_input.c.x)) << (~(~vec4<u32>(u_input.c.x, 0u, 1u, 9085u)) % vec4<u32>(32u)), _wgslsmith_add_vec4_u32(reverseBits(~vec4<u32>(u_input.c.x, 26818u, u_input.c.x, u_input.d.x)), select(vec4<u32>(u_input.c.x, 0u, 4294967295u, u_input.d.x) ^ vec4<u32>(45446u, 1u, 4294967295u, u_input.c.x), ~vec4<u32>(u_input.d.x, 1u, 3125u, u_input.d.x), func_3())) << (~(~_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, u_input.c.x, 1u, 1u), vec4<u32>(28614u, u_input.c.x, u_input.d.x, 62152u))) % vec4<u32>(32u)));
    let var_1 = vec2<bool>(true, true);
    let var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(703f, -182f, false))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -457f))) * _wgslsmith_f_op_f32(f32(-1f) * -569f)));
    return any(vec3<bool>(var_1.x, true && var_1.x, reverseBits(~u_input.d.x) > ~(~10664u)));
}

fn func_1(arg_0: vec4<i32>, arg_1: vec4<u32>, arg_2: vec3<u32>) -> Struct_1 {
    global0 = countOneBits(52270u);
    global0 = arg_1.x;
    var var_0 = vec2<bool>(all(vec4<bool>(all(vec2<bool>(false, false)) & any(vec3<bool>(false, true, true)), any(vec4<bool>(true, true, true, true)), !(-48378i < arg_0.x), true)), true);
    var_0 = select(!vec2<bool>(func_2(), !func_3()), !(!select(vec2<bool>(true, true), vec2<bool>(false, true), var_0.x | var_0.x)), false);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(826f + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1560f * 331f), -1251f, true))) + 514f));
    return Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(673f))), var_1.a)))));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: vec2<bool>) -> Struct_1 {
    global0 = ~_wgslsmith_mult_u32(4294967295u, _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(22048u, 53721u), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.d.x, u_input.c.x), vec2<u32>(48835u, 0u))), u_input.d.zy << (u_input.c % vec2<u32>(32u))));
    global0 = u_input.d.x;
    let var_0 = ~vec3<i32>(43671i, _wgslsmith_sub_i32(u_input.a.x ^ u_input.a.x, _wgslsmith_mod_i32(0i, 31979i)) | _wgslsmith_div_i32(~u_input.a.x, u_input.a.x), -2147483647i);
    let var_1 = arg_0.xy;
    global0 = 4294967295u;
    return func_1(u_input.a, ~(~(~select(vec4<u32>(40862u, 49261u, u_input.c.x, u_input.c.x), vec4<u32>(21996u, u_input.d.x, 0u, 17399u), vec4<bool>(false, arg_3.x, arg_3.x, false)))), vec3<u32>(u_input.d.x, reverseBits(~22133u) >> (u_input.c.x % 32u), ~max(67034u, u_input.d.x)));
}

fn func_5(arg_0: vec4<i32>, arg_1: vec2<i32>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = arg_2;
    global0 = 0u;
    let var_1 = -vec2<i32>(_wgslsmith_clamp_i32(~1i, arg_0.x, select(-19573i, -1i, false)) << (u_input.d.x % 32u), ~(-arg_1.x ^ arg_0.x));
    let var_2 = vec2<u32>(abs(u_input.d.x), abs(12887u)) | reverseBits(u_input.c);
    global0 = _wgslsmith_mult_u32(var_2.x, ~(~u_input.c.x));
    return arg_2;
}

fn func_6(arg_0: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(arg_0.a);
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -657f);
    global0 = 57881u;
    let var_2 = _wgslsmith_mult_i32(~u_input.b, 19570i);
    var_0 = func_4(~_wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(u_input.a, u_input.a), var_2, ~u_input.a.x, var_2), _wgslsmith_add_vec4_i32(~u_input.a, firstTrailingBit(vec4<i32>(16952i, u_input.b, -1i, -5364i)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(vec3<f32>(var_1, 481f, -195f), vec3<f32>(arg_0.a, var_1, 510f)))))), Struct_1(1037f), vec2<bool>(any(!select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), select(false, any(select(vec2<bool>(true, true), vec2<bool>(true, false), false)), !any(vec2<bool>(false, true)))));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(func_5(vec4<i32>(17052i, 0i, _wgslsmith_add_i32(u_input.a.x, ~u_input.b), -(~1i)), -u_input.a.wx, func_4(_wgslsmith_mult_vec4_i32(-vec4<i32>(16018i, u_input.b, -9219i, -1356i), u_input.a & u_input.a), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1512f), _wgslsmith_f_op_f32(2230f - -801f), -1722f), func_1(~vec4<i32>(-12740i, -2147483647i, u_input.b, -2147483647i), vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 4294967295u), _wgslsmith_mod_vec3_u32(u_input.d, vec3<u32>(u_input.d.x, 4294967295u, u_input.c.x))), vec2<bool>(true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(func_5(vec4<i32>(~u_input.b, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, 1278i, u_input.b, 0i), vec4<i32>(41531i, 18773i, -32699i, u_input.a.x)), 29353i, u_input.b << (0u % 32u)), firstLeadingBit(_wgslsmith_div_vec2_i32(u_input.a.xz, vec2<i32>(-2469i, 2147483647i))), Struct_1(_wgslsmith_f_op_f32(-var_0.a))).a)), _wgslsmith_f_op_f32(round(var_0.a)), select(vec4<u32>(34935u, 1u, 4294967295u, 45639u), vec4<u32>(~(~u_input.d.x), _wgslsmith_add_u32(0u, 59271u) | u_input.c.x, min(0u, 1u), u_input.d.x), true), _wgslsmith_f_op_f32(-var_0.a), countOneBits(vec4<i32>(max(u_input.a.x, -993i), u_input.a.x, -1i, u_input.b)));
}

