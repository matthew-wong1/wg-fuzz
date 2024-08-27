struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 6> = array<vec2<bool>, 6>(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false));

var<private> global1: i32 = 0i;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> vec4<bool> {
    var var_0 = Struct_2(Struct_1(select(vec3<u32>(~u_input.e, u_input.c, 0u), ~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, 0u, u_input.e), vec3<u32>(13786u, 4294967295u, 6705u)), true), 0u, _wgslsmith_mult_i32(-(i32(-1i) * -1i), _wgslsmith_div_i32(2147483647i, -25974i))), Struct_1(vec3<u32>(~(~u_input.a), u_input.a, _wgslsmith_div_u32(39077u, u_input.b.x) & (u_input.c >> (1u % 32u))), u_input.b.x, firstLeadingBit(2147483647i)));
    let var_1 = var_0.b.c;
    let var_2 = vec4<bool>(any(global0[_wgslsmith_index_u32(var_0.b.b, 6u)]) & (_wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(var_0.a.c, var_0.a.c, var_0.b.c, var_0.a.c)), max(vec4<i32>(0i, 1i, 2147483647i, var_0.a.c), vec4<i32>(var_0.b.c, -2147483647i, var_0.a.c, 30483i))) == min(16586i, -1i)), true, all(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~u_input.b.x, abs(u_input.a)), 6u)]), !(u_input.b.x >= reverseBits(var_0.a.a.x)) && true);
    let var_3 = !any(!vec2<bool>(var_2.x, true));
    global1 = _wgslsmith_mod_i32(max(reverseBits(abs(~(-1i))), -1i), 2147483647i);
    return var_2;
}

fn func_2(arg_0: vec2<i32>, arg_1: bool) -> vec3<i32> {
    var var_0 = firstTrailingBit(-20973i);
    var var_1 = vec4<bool>(any(select(func_3(), select(select(vec4<bool>(arg_1, false, false, arg_1), vec4<bool>(arg_1, arg_1, arg_1, true), vec4<bool>(arg_1, false, arg_1, arg_1)), !vec4<bool>(false, arg_1, arg_1, true), select(vec4<bool>(false, arg_1, true, false), vec4<bool>(arg_1, arg_1, false, arg_1), true)), !select(vec4<bool>(false, false, false, arg_1), vec4<bool>(false, arg_1, arg_1, false), false))), !func_3().x, func_3().x, !(u_input.c != (u_input.d & ~47375u)));
    global1 = arg_0.x;
    var_0 = abs(~(-69524i) | arg_0.x);
    global0 = array<vec2<bool>, 6>();
    return _wgslsmith_mult_vec3_i32(vec3<i32>(select(arg_0.x, 1i, (i32(-1i) * -17339i) != ~arg_0.x), arg_0.x, ~arg_0.x), min(vec3<i32>(~(-17818i), -7549i, max(0i, i32(-1i) * -14429i)), -vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, 1i, 35925i), vec3<i32>(2147483647i, arg_0.x, arg_0.x)), -arg_0.x, 41128i)));
}

fn func_4(arg_0: vec3<i32>, arg_1: vec2<u32>, arg_2: Struct_2, arg_3: vec3<u32>) -> Struct_1 {
    let var_0 = -min(_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_0.x, reverseBits(21025i), 1i), arg_0, func_2(max(arg_0.zx, vec2<i32>(arg_2.a.c, arg_0.x)), true)), arg_0);
    global0 = array<vec2<bool>, 6>();
    var var_1 = arg_3;
    let var_2 = abs(var_0);
    let var_3 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-2103f - _wgslsmith_f_op_f32(select(-190f, -1531f, false))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(1636f, -1481f), _wgslsmith_f_op_f32(floor(-258f)))) * _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-195f, -607f)))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-788f, _wgslsmith_div_f32(-608f, 920f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-547f, -2311f, true))), true)))));
    return arg_2.b;
}

fn func_1(arg_0: u32, arg_1: vec2<u32>) -> vec2<f32> {
    global0 = array<vec2<bool>, 6>();
    let var_0 = Struct_1(~vec3<u32>(~arg_0, 557u, ~(~arg_0)), _wgslsmith_add_u32(countOneBits(0u | u_input.b.x) ^ firstTrailingBit(max(arg_0, 53317u)), arg_0), -1i);
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1000f, -2365f)) - -150f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -310f))))));
    let var_2 = func_4(~func_2(~vec2<i32>(1662i, 15214i), select(false, true, true) || true), abs(vec2<u32>(~_wgslsmith_mod_u32(arg_0, arg_1.x), ~arg_1.x)), Struct_2(var_0, Struct_1(_wgslsmith_add_vec3_u32(var_0.a, abs(var_0.a)), 4294967295u, 19284i)), select(vec3<u32>(arg_0, arg_1.x, max(27037u, u_input.a)) | var_0.a, vec3<u32>(~1u, arg_0, arg_1.x), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), func_3().x), vec3<bool>(true, false, true))));
    let var_3 = all(vec2<bool>(true, true)) || !(!(var_0.b >= abs(4294967295u)));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-614f, var_1) - vec2<f32>(var_1, -436f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, var_1) * vec2<f32>(-631f, var_1)), true)) * _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1865f, var_1))))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, _wgslsmith_f_op_f32(max(var_1, var_1))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-668f, -468f) - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-470f, var_1), vec2<f32>(var_1, var_1)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.e;
    let var_1 = ~max(39382u, 1u);
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(669f, 1553f))) + vec2<f32>(1626f, _wgslsmith_f_op_f32(782f + -1000f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1(1u, u_input.b)) - _wgslsmith_f_op_vec2_f32(func_1(var_1 | u_input.d, ~u_input.b))))));
    var var_3 = vec2<bool>(!func_3().x, true);
    var var_4 = firstLeadingBit(_wgslsmith_mult_vec3_i32(min(vec3<i32>(firstTrailingBit(1i), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 9490i, 2147483647i, 0i), vec4<i32>(-11283i, -3458i, 33758i, -2147483647i)), min(-29551i, 2147483647i)), _wgslsmith_add_vec3_i32(vec3<i32>(0i, -9439i, 2147483647i), select(vec3<i32>(2147483647i, -2147483647i, -8347i), vec3<i32>(17171i, 20978i, -38987i), false))), vec3<i32>(~(-26827i), 0i, ~_wgslsmith_mod_i32(0i, -1i))));
    let var_5 = Struct_2(Struct_1(_wgslsmith_clamp_vec3_u32(vec3<u32>(37521u, var_0, u_input.d), vec3<u32>(1u, var_0, u_input.a) | vec3<u32>(1u, var_1, 52523u), _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 1u, 107601u), vec3<u32>(49955u, 0u, var_0))) | ~(vec3<u32>(var_1, u_input.a, 4294967295u) ^ vec3<u32>(1u, var_0, var_1)), abs(abs(41803u)), var_4.x), func_4(_wgslsmith_mod_vec3_i32(reverseBits(vec3<i32>(var_4.x, var_4.x, var_4.x)) << (vec3<u32>(4294967295u, var_0, u_input.c) % vec3<u32>(32u)), _wgslsmith_mod_vec3_i32(vec3<i32>(var_4.x, 23337i, var_4.x), vec3<i32>(var_4.x, var_4.x, var_4.x) << (vec3<u32>(var_1, 4294967295u, var_0) % vec3<u32>(32u)))), vec2<u32>(_wgslsmith_mod_u32(1u, u_input.e), 10617u) | (u_input.b ^ ~vec2<u32>(34031u, 25602u)), Struct_2(func_4(vec3<i32>(var_4.x, var_4.x, 2147483647i), ~u_input.b, Struct_2(Struct_1(vec3<u32>(var_0, 4294967295u, var_0), var_1, var_4.x), Struct_1(vec3<u32>(22760u, 1u, var_1), var_0, 0i)), _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 1u, 79892u), vec3<u32>(8718u, var_0, u_input.b.x), vec3<u32>(var_0, u_input.b.x, 0u))), func_4(vec3<i32>(-12356i, -21079i, var_4.x), vec2<u32>(var_0, var_0), Struct_2(Struct_1(vec3<u32>(69588u, 42715u, 44636u), var_0, var_4.x), Struct_1(vec3<u32>(u_input.b.x, u_input.e, u_input.a), 4294967295u, var_4.x)), vec3<u32>(21175u, var_0, var_1))), _wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(firstLeadingBit(vec3<u32>(0u, 13926u, u_input.d)), firstTrailingBit(vec3<u32>(0u, 0u, 67490u))), firstLeadingBit(~vec3<u32>(var_0, 65874u, var_1)))));
    let var_6 = var_0 == var_5.b.b;
    var var_7 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(~vec3<i32>(-2147483647i, -var_5.b.c, 68656i), vec3<i32>(~(-45942i), var_4.x, ~var_5.a.c) ^ vec3<i32>(~(-2147483647i), var_5.b.c, var_5.a.c)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1460f, -219f, 1000f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_7.x, -170f, 555f)))))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(681f, var_2.x))), _wgslsmith_f_op_f32(var_7.x - var_7.x), 275f))));
}

