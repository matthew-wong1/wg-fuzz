struct Struct_1 {
    a: vec2<u32>,
    b: vec3<f32>,
    c: vec2<u32>,
    d: u32,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
    c: u32,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec3<u32> {
    var var_0 = Struct_5(_wgslsmith_add_i32(_wgslsmith_div_i32(-60636i, firstTrailingBit(2147483647i)), _wgslsmith_dot_vec3_i32(abs(vec3<i32>(-11716i, -65027i, -18443i)), select(vec3<i32>(0i, 52866i, u_input.c), vec3<i32>(u_input.c, -28509i, u_input.c), false))) < 0i);
    var var_1 = ~37368i;
    var var_2 = 1151u ^ ~firstTrailingBit(abs(u_input.b.x));
    let var_3 = max(u_input.c, firstLeadingBit(_wgslsmith_mult_i32(select(u_input.a, u_input.a, global0.a), select(u_input.c, 1i, false))) | _wgslsmith_mult_i32(select(-1i, 1i, true), 2147483647i));
    var_0 = Struct_5(all(select(!select(vec2<bool>(true, true), vec2<bool>(false, var_0.a), vec2<bool>(var_0.a, true)), vec2<bool>(any(vec4<bool>(false, global0.a, true, true)), any(vec2<bool>(true, true))), var_0.a)));
    return _wgslsmith_sub_vec3_u32(vec3<u32>(1u << (1u % 32u), u_input.b.x, 1u), ~select(vec3<u32>(u_input.b.x, u_input.b.x, 69187u) | (vec3<u32>(u_input.b.x, 1u, u_input.b.x) | vec3<u32>(22045u, u_input.b.x, 66827u)), ~(~vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)), select(select(vec3<bool>(true, true, var_0.a), vec3<bool>(true, var_0.a, true), true), select(vec3<bool>(false, true, global0.a), vec3<bool>(var_0.a, false, var_0.a), vec3<bool>(global0.a, false, var_0.a)), !vec3<bool>(false, var_0.a, var_0.a))));
}

fn func_2() -> Struct_1 {
    var var_0 = 0u;
    var var_1 = !global0.a;
    var var_2 = Struct_2(func_3(), Struct_1(u_input.b, vec3<f32>(-258f, _wgslsmith_f_op_f32(max(-2398f, _wgslsmith_f_op_f32(1546f * -1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1533f)) - 1000f)), ~u_input.b, abs(_wgslsmith_add_u32(firstTrailingBit(u_input.b.x), _wgslsmith_clamp_u32(9754u, 96833u, 4294967295u))), vec3<u32>(~u_input.b.x, countOneBits(51195u), _wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)), vec3<u32>(24173u, 21880u, 3337u)))), Struct_1(abs(abs(vec2<u32>(u_input.b.x, 102856u))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(sign(-505f)), _wgslsmith_f_op_f32(min(204f, -795f)), _wgslsmith_f_op_f32(min(-591f, -1558f))))), u_input.b, ~5950u, ~(~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b.x, 115636u, u_input.b.x), vec3<u32>(u_input.b.x, u_input.b.x, 17434u)))));
    let var_3 = Struct_4(Struct_1(reverseBits(var_2.b.c ^ ~u_input.b), var_2.b.b, vec2<u32>(~var_2.b.c.x, ~reverseBits(u_input.b.x)), u_input.b.x, var_2.a), ~(u_input.b.x | (~70374u ^ _wgslsmith_sub_u32(var_2.a.x, 35734u))), var_2.c.a.x);
    let var_4 = global0.a;
    return var_3.a;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<bool>) -> vec3<u32> {
    var var_0 = Struct_3(~25458u >= arg_0.e.x);
    let var_1 = func_2();
    let var_2 = 640f;
    var_0 = Struct_3(any(select(select(vec2<bool>(arg_2.x, true), !arg_2, select(arg_2, arg_2, arg_2)), select(vec2<bool>(arg_2.x, arg_2.x), vec2<bool>(false, false), !vec2<bool>(true, global0.a)), arg_2)));
    let var_3 = Struct_3(any(select(select(select(vec3<bool>(false, arg_2.x, false), vec3<bool>(false, var_0.a, var_0.a), vec3<bool>(false, true, false)), !vec3<bool>(true, global0.a, arg_2.x), select(vec3<bool>(false, global0.a, arg_2.x), vec3<bool>(false, false, arg_2.x), false)), vec3<bool>(!var_0.a, false && arg_2.x, var_1.b.x < var_1.b.x), !(!vec3<bool>(arg_2.x, false, global0.a)))));
    return arg_1.e;
}

fn func_5(arg_0: Struct_4, arg_1: vec3<u32>, arg_2: bool, arg_3: u32) -> i32 {
    var var_0 = arg_0;
    var var_1 = _wgslsmith_f_op_f32(-func_2().b.x);
    var var_2 = _wgslsmith_mod_vec3_u32(vec3<u32>(~0u, 1u, abs(_wgslsmith_add_u32(select(arg_3, 0u, arg_2), 1u))), vec3<u32>(min(firstLeadingBit(~u_input.b.x), 36146u), 27305u | ~u_input.b.x, ~18524u));
    global0 = Struct_3(all(!(!vec2<bool>(arg_2, true))));
    global0 = Struct_3(false);
    return u_input.c;
}

fn func_1() -> Struct_5 {
    let var_0 = _wgslsmith_f_op_f32(189f * _wgslsmith_f_op_f32(f32(-1f) * -110f)) >= _wgslsmith_f_op_f32(trunc(438f));
    var var_1 = vec3<i32>(u_input.c, 1i & func_5(Struct_4(Struct_1(vec2<u32>(u_input.b.x, u_input.b.x), vec3<f32>(1567f, 1409f, -1373f), vec2<u32>(u_input.b.x, 39385u), 0u, vec3<u32>(u_input.b.x, 625u, u_input.b.x)), firstLeadingBit(0u), 4294967295u >> (0u % 32u)), func_4(Struct_1(u_input.b, vec3<f32>(1593f, 559f, -2481f), vec2<u32>(41836u, 0u), 28088u, vec3<u32>(1u, u_input.b.x, u_input.b.x)), func_2(), select(vec2<bool>(var_0, global0.a), vec2<bool>(var_0, global0.a), false)), !(0i != u_input.a), 4294967295u), firstLeadingBit(1i));
    var var_2 = select(vec3<u32>(_wgslsmith_sub_u32(u_input.b.x, 21u), ~u_input.b.x & _wgslsmith_mult_u32(u_input.b.x, u_input.b.x), _wgslsmith_add_u32(~5099u, 1u)), vec3<u32>(~(~u_input.b.x), 4294967295u, u_input.b.x), select(vec3<bool>(true, true, any(vec4<bool>(var_0, global0.a, global0.a, true))), select(select(vec3<bool>(var_0, false, true), vec3<bool>(true, false, global0.a), global0.a), vec3<bool>(var_0, var_0, var_0), var_0), !global0.a)) ^ func_2().e;
    let var_3 = Struct_5(!global0.a);
    let var_4 = var_1.xy;
    return Struct_5(true);
}

fn func_6(arg_0: Struct_5) -> vec2<bool> {
    global0 = Struct_3(u_input.c > countOneBits(u_input.c));
    var var_0 = Struct_4(Struct_1(vec2<u32>(53618u, 1u), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-683f, -297f, -1041f) + vec3<f32>(-1000f, 2055f, -100f))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-676f, 357f, 494f)))))), ~vec2<u32>(_wgslsmith_sub_u32(u_input.b.x, u_input.b.x), u_input.b.x >> (u_input.b.x % 32u)), reverseBits(select(firstLeadingBit(u_input.b.x), func_4(Struct_1(u_input.b, vec3<f32>(-2243f, 1189f, 1257f), u_input.b, 0u, vec3<u32>(u_input.b.x, 80785u, u_input.b.x)), Struct_1(u_input.b, vec3<f32>(-194f, -372f, 643f), vec2<u32>(32884u, 1u), u_input.b.x, vec3<u32>(u_input.b.x, 45884u, u_input.b.x)), vec2<bool>(arg_0.a, false)).x, true)), ~vec3<u32>(u_input.b.x, ~8411u, ~u_input.b.x)), countOneBits(~u_input.b.x), 4294967295u);
    let var_1 = vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(-vec3<i32>(2604i, -26385i, 2742i), vec3<i32>(u_input.a, countOneBits(u_input.a), ~0i)), select(-2147483647i, -1i, select(any(vec4<bool>(false, true, true, false)), false, global0.a))), -u_input.a | ((-u_input.a & u_input.c) ^ -40653i), _wgslsmith_div_i32(22737i, _wgslsmith_dot_vec4_i32(min(~vec4<i32>(u_input.a, u_input.a, 1i, u_input.c), vec4<i32>(0i, u_input.c, -2147483647i, 0i) ^ vec4<i32>(u_input.a, u_input.c, -8655i, u_input.a)), _wgslsmith_mult_vec4_i32(~vec4<i32>(u_input.a, u_input.a, u_input.c, u_input.a), vec4<i32>(u_input.a, 2147483647i, -7132i, 0i) >> (vec4<u32>(29720u, 81u, var_0.b, 2469u) % vec4<u32>(32u))))), min(u_input.c & u_input.c, 2147483647i));
    var var_2 = select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -908f), -1542f) < _wgslsmith_f_op_f32(sign(-1596f)), all(vec3<bool>(false, !arg_0.a, global0.a)) && !(false & arg_0.a), !(var_0.a.b.x <= _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.a.b.x), _wgslsmith_f_op_f32(f32(-1f) * -430f), !arg_0.a))));
    let var_3 = firstLeadingBit(_wgslsmith_div_i32(select(_wgslsmith_mod_i32(func_5(Struct_4(var_0.a, var_0.a.d, var_0.b), var_0.a.e, arg_0.a, 24184u), var_1.x & -1i), var_1.x, global0.a), 5765i));
    return !select(vec2<bool>(var_3 > -var_1.x, any(!vec2<bool>(false, arg_0.a))), vec2<bool>(all(vec3<bool>(global0.a, arg_0.a, arg_0.a)), any(vec3<bool>(true, true, true)) & !global0.a), true);
}

fn func_7(arg_0: vec2<u32>, arg_1: f32, arg_2: u32, arg_3: bool) -> Struct_1 {
    var var_0 = Struct_3(arg_3);
    var var_1 = _wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(u_input.a, ~0i), ~1i, -_wgslsmith_add_i32(~u_input.c, ~(-2147483647i)), 1i), vec4<i32>(func_5(Struct_4(func_2(), 35213u, _wgslsmith_sub_u32(arg_0.x, 0u)), ~func_2().e, true, arg_2), -2464i, _wgslsmith_mult_i32(max(abs(u_input.c), 30112i), -1i), _wgslsmith_sub_i32(0i, u_input.a)));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_7(~(_wgslsmith_mod_vec2_u32(u_input.b ^ u_input.b, u_input.b) ^ reverseBits(~u_input.b)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-113f - _wgslsmith_f_op_f32(-226f * -543f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1878f) - _wgslsmith_f_op_f32(select(304f, -455f, global0.a)))), _wgslsmith_f_op_f32(f32(-1f) * -309f))), ~0u, any(func_6(func_1())));
    let var_1 = 997f;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(830f, var_0.b.x)));
    let var_3 = Struct_5(!(!(!global0.a)) && !(!func_6(Struct_5(global0.a)).x));
    var var_4 = 614f > var_0.b.x;
    let var_5 = _wgslsmith_add_u32(1423u, func_4(func_7(var_0.e.yz, var_1, func_3().x, select(false, false, false)), Struct_1(abs(vec2<u32>(0u, 34463u)), _wgslsmith_f_op_vec3_f32(select(var_0.b, var_0.b, false)), _wgslsmith_clamp_vec2_u32(u_input.b, u_input.b, u_input.b), firstLeadingBit(var_0.a.x), var_0.e), vec2<bool>(global0.a, true)).x & ~u_input.b.x);
    let var_6 = func_1();
    let var_7 = Struct_1(vec2<u32>(abs(var_5), 1u), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1551f, -1098f, -903f), vec3<f32>(733f, 1f, -1740f)) * _wgslsmith_f_op_vec3_f32(sign(func_7(max(vec2<u32>(var_5, var_0.e.x), vec2<u32>(var_5, 20790u)), _wgslsmith_f_op_f32(-var_1), ~var_5, false && global0.a).b))), ~(~func_3().xx), 12471u, ~func_2().e);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(var_7.b)) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(942f, var_0.b.x, -721f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-858f, -963f, 158f), vec3<f32>(-178f, -269f, var_2)) * var_7.b), select(select(vec3<bool>(var_6.a, var_3.a, false), vec3<bool>(true, true, true), vec3<bool>(true, global0.a, global0.a)), vec3<bool>(true, true, true), !vec3<bool>(global0.a, true, global0.a))))), var_5);
}

