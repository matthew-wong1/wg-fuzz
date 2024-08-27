struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: f32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec2<bool>,
    d: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(709f, vec2<i32>(-28711i, -15595i), vec2<i32>(2147483647i, -13857i), 643f, vec2<f32>(-2592f, 1055f));

var<private> global1: Struct_1 = Struct_1(-1000f, vec2<i32>(1i, 3023i), vec2<i32>(30830i, 2147483647i), -1050f, vec2<f32>(232f, -181f));

var<private> global2: f32 = 517f;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: vec3<bool>, arg_2: vec2<u32>, arg_3: Struct_2) -> bool {
    let var_0 = Struct_1(570f, firstTrailingBit(abs(~global0.b ^ _wgslsmith_clamp_vec2_i32(vec2<i32>(global1.c.x, 42652i), vec2<i32>(global1.b.x, u_input.c), arg_3.a.b))), ~vec2<i32>(1i, _wgslsmith_sub_i32(firstTrailingBit(52686i), -1i)), _wgslsmith_f_op_f32(-1549f * arg_0), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a, 440f))))));
    global2 = _wgslsmith_f_op_f32(-global0.e.x);
    global2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1253f - -965f) + var_0.e.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a + 1002f))));
    global2 = global0.a;
    global1 = Struct_1(_wgslsmith_f_op_f32(315f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1416f))))), ~vec2<i32>(_wgslsmith_sub_i32(abs(u_input.b.x), i32(-1i) * -13387i), i32(-1i) * -2335i), vec2<i32>(select(u_input.c, -15261i, !arg_3.c.x), -1i), _wgslsmith_f_op_f32(820f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-632f - -1169f) - _wgslsmith_f_op_f32(-global0.d))), vec2<f32>(var_0.d, _wgslsmith_f_op_f32(-arg_0)));
    return !arg_1.x;
}

fn func_4(arg_0: bool, arg_1: vec4<bool>, arg_2: Struct_2, arg_3: u32) -> bool {
    var var_0 = ~(-1i);
    global2 = arg_2.a.a;
    var var_1 = vec4<u32>(0u, ~arg_3, arg_3, 0u >> (~u_input.a.x % 32u));
    global1 = Struct_1(global0.e.x, -min(-_wgslsmith_mod_vec2_i32(u_input.b.yz, vec2<i32>(arg_2.a.b.x, global1.c.x)), u_input.b.yz), _wgslsmith_div_vec2_i32(global0.b, ~vec2<i32>(u_input.c, _wgslsmith_mult_i32(u_input.c, 1i))), _wgslsmith_f_op_f32(-1041f * -138f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.d, arg_2.b)))) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_2.a.e.x, arg_2.b))), global0.e.x)));
    global2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1729f - 1419f), _wgslsmith_f_op_f32(sign(1607f)))))))));
    return true;
}

fn func_2() -> vec2<f32> {
    var var_0 = 4294967295u;
    let var_1 = u_input.c | 0i;
    let var_2 = _wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(~countOneBits(firstLeadingBit(vec2<i32>(global1.c.x, u_input.b.x))), global1.c), _wgslsmith_div_vec2_i32(firstLeadingBit(vec2<i32>(-4902i, -u_input.c)), ~vec2<i32>(i32(-1i) * -11758i, 15296i)));
    var var_3 = func_4(false, !vec4<bool>(!select(true, true, false), func_3(global1.d, vec3<bool>(true, true, false), vec2<u32>(u_input.a.x, 62331u), Struct_2(Struct_1(global0.e.x, u_input.b.xx, vec2<i32>(-1i, global0.b.x), global0.d, global1.e), -1000f, vec2<bool>(true, true), global0.a)) && false, any(vec2<bool>(true, true)), true), Struct_2(Struct_1(699f, vec2<i32>(var_1, _wgslsmith_mod_i32(-2147483647i, 2147483647i)), _wgslsmith_mult_vec2_i32(firstTrailingBit(var_2), reverseBits(vec2<i32>(var_1, global0.c.x))), global0.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.e.x, global1.d)) + _wgslsmith_f_op_vec2_f32(global0.e - global0.e))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(222f * _wgslsmith_f_op_f32(-global0.e.x)))), !vec2<bool>(all(vec2<bool>(true, true)), any(vec4<bool>(true, false, true, true))), 459f), 1u);
    let var_4 = var_2.x;
    return vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1020f), 189f);
}

fn func_1(arg_0: f32) -> Struct_1 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-global0.e.x), 2879f);
    global1 = Struct_1(arg_0, -(~(~(vec2<i32>(global1.c.x, global1.b.x) & vec2<i32>(global1.b.x, u_input.b.x)))), select(firstTrailingBit(_wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(global0.c.x, -2147483647i), global1.b), global1.c)), vec2<i32>(-_wgslsmith_add_i32(-21146i, 0i), min(~1955i, _wgslsmith_div_i32(2147483647i, u_input.b.x))), vec2<bool>(false, true)), _wgslsmith_f_op_f32(-837f - _wgslsmith_f_op_f32(arg_0 * 867f)), global0.e);
    global0 = Struct_1(arg_0, ~_wgslsmith_mod_vec2_i32(-(global0.b << (u_input.a.xz % vec2<u32>(32u))), ~max(global0.b, global1.c)), vec2<i32>(-2147483647i, firstTrailingBit(-9660i)), 863f, _wgslsmith_f_op_vec2_f32(func_2()));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1590f + var_0.x), _wgslsmith_f_op_f32(129f * arg_0))) + global0.e.x)), _wgslsmith_clamp_vec2_i32(_wgslsmith_mod_vec2_i32(~_wgslsmith_mod_vec2_i32(global1.c, vec2<i32>(global0.b.x, global0.c.x)), ~_wgslsmith_mod_vec2_i32(vec2<i32>(75009i, 30144i), vec2<i32>(global0.c.x, 0i))), global0.b, countOneBits(global1.b)), global1.c, 1456f, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1083f, global0.a)))), 1f));
    var_0 = var_1.e;
    return var_1;
}

fn func_5(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: f32, arg_3: i32) -> i32 {
    global1 = arg_0;
    let var_0 = -114f;
    let var_1 = Struct_1(-872f, global1.b, u_input.b.wz, global1.e.x, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.d) * _wgslsmith_f_op_f32(f32(-1f) * -1820f)), 1876f) * global0.e));
    let var_2 = func_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - global0.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 + var_0))))));
    var var_3 = _wgslsmith_div_i32(select(abs(arg_0.b.x ^ select(-40042i, u_input.b.x, false)), countOneBits(~_wgslsmith_div_i32(global1.b.x, var_1.b.x)), global1.d >= var_2.a), ~(~var_2.c.x));
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = 1083f;
    var var_0 = max(u_input.b.x, abs(func_5(func_1(global1.e.x), vec3<bool>(2587f <= global0.e.x, true, true), _wgslsmith_f_op_f32(1004f + _wgslsmith_f_op_f32(global0.d + -1022f)), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, 62895i, -36897i), vec3<i32>(u_input.b.x, -1i, -11544i)))));
    let var_1 = Struct_1(global1.a, vec2<i32>(abs(-global0.c.x), -1i), vec2<i32>(~_wgslsmith_mod_i32(abs(global0.b.x), -2147483647i), _wgslsmith_mod_i32(global0.c.x | (32332i << (u_input.a.x % 32u)), ~15407i)), global1.e.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global1.e * _wgslsmith_f_op_vec2_f32(max(global0.e, vec2<f32>(global0.e.x, global0.d))))));
    let var_2 = -global1.b;
    var var_3 = ~var_2.x;
    global1 = var_1;
    var var_4 = u_input.a.x;
    var var_5 = _wgslsmith_f_op_vec2_f32(func_2()).x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global1.e - _wgslsmith_f_op_vec2_f32(select(global1.e, vec2<f32>(global0.a, global1.d), true)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(global0.e, vec2<f32>(615f, 425f))))));
}

