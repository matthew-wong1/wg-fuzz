struct Struct_1 {
    a: u32,
    b: bool,
    c: vec3<u32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: vec2<bool>,
    d: Struct_1,
    e: i32,
}

struct Struct_5 {
    a: f32,
    b: Struct_2,
    c: vec4<u32>,
    d: vec4<i32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> bool {
    var var_0 = Struct_5(-2171f, Struct_2(Struct_1(u_input.b, all(vec2<bool>(false, false)), vec3<u32>(reverseBits(u_input.b), ~38005u, u_input.a.x), i32(-1i) * -19798i), ~(~u_input.a ^ _wgslsmith_clamp_vec2_u32(u_input.a, u_input.a, u_input.a))), vec4<u32>(abs(_wgslsmith_mod_u32(u_input.b, u_input.a.x)), 11979u, ~6779u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 0u, 1u), vec3<u32>(1u, u_input.b, u_input.b))) << (select(~vec4<u32>(u_input.b, u_input.b, 1u, u_input.b) ^ ~vec4<u32>(u_input.b, 13371u, u_input.a.x, 4294967295u), vec4<u32>(u_input.a.x, 20700u, ~u_input.b, 26425u), vec4<bool>(any(vec2<bool>(false, false)), false, true, all(vec3<bool>(false, false, false)))) % vec4<u32>(32u)), select(countOneBits(firstTrailingBit(firstLeadingBit(vec4<i32>(0i, 1i, u_input.e.x, u_input.c)))), select(vec4<i32>(_wgslsmith_div_i32(-9547i, -1789i), ~u_input.e.x, ~u_input.c, 2147483647i), vec4<i32>(_wgslsmith_sub_i32(1138i, 2147483647i), 1i, u_input.e.x | u_input.e.x, -2147483647i), true), vec4<bool>(true, false, any(vec3<bool>(false, true, true)), false)), Struct_2(Struct_1(46176u, false, firstLeadingBit(vec3<u32>(u_input.b, u_input.b, u_input.a.x)), -1i), ~firstTrailingBit(_wgslsmith_mod_vec2_u32(u_input.a, vec2<u32>(u_input.b, 0u)))));
    var_0 = Struct_5(_wgslsmith_f_op_f32(select(var_0.a, _wgslsmith_f_op_f32(var_0.a * var_0.a), false)), var_0.e, vec4<u32>(_wgslsmith_clamp_u32(u_input.a.x | 29397u, 0u, firstLeadingBit(var_0.c.x)) ^ ~firstLeadingBit(u_input.a.x), ~_wgslsmith_add_u32(u_input.a.x, var_0.e.b.x), u_input.a.x, 72501u), -(~_wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(var_0.d, var_0.d), var_0.d, vec4<i32>(var_0.e.a.d, var_0.e.a.d, u_input.c, -11677i))), Struct_2(var_0.e.a, abs(~countOneBits(vec2<u32>(var_0.c.x, 1u)))));
    var var_1 = -min(_wgslsmith_clamp_i32(1i, var_0.d.x, ~(-43118i)), var_0.e.a.d);
    let var_2 = select(!vec2<bool>(!(u_input.a.x > var_0.c.x), true & all(vec2<bool>(var_0.b.a.b, false))), !(!select(select(vec2<bool>(true, var_0.e.a.b), vec2<bool>(false, var_0.b.a.b), var_0.e.a.b), !vec2<bool>(true, var_0.b.a.b), select(vec2<bool>(var_0.e.a.b, var_0.e.a.b), vec2<bool>(true, var_0.e.a.b), vec2<bool>(var_0.b.a.b, true)))), vec2<bool>(true, abs(firstLeadingBit(u_input.b)) != ~u_input.a.x));
    var var_3 = vec2<i32>(~firstTrailingBit(_wgslsmith_div_i32(_wgslsmith_clamp_i32(var_0.e.a.d, -1891i, var_0.b.a.d), ~u_input.c)), 0i);
    return all(!select(!(!vec4<bool>(var_0.b.a.b, false, false, false)), select(vec4<bool>(var_0.e.a.b, true, true, false), select(vec4<bool>(var_2.x, true, var_0.b.a.b, false), vec4<bool>(true, var_0.b.a.b, var_0.e.a.b, var_0.e.a.b), vec4<bool>(var_2.x, var_2.x, var_0.b.a.b, var_2.x)), false || var_0.e.a.b), vec4<bool>(true, true, true, var_2.x != true)));
}

fn func_2() -> vec3<u32> {
    var var_0 = Struct_4(Struct_3(!func_3(), Struct_1(abs(~21476u), all(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), true)), min(~vec3<u32>(u_input.a.x, 10136u, 48336u), ~vec3<u32>(u_input.a.x, u_input.a.x, u_input.b)), ~(~(-42573i)))), !(all(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false))) | true), vec2<bool>(true, true | all(vec4<bool>(true, false, false, false))), Struct_1(0u, true, countOneBits(~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, u_input.b, u_input.a.x), vec3<u32>(u_input.a.x, 1u, 0u))), abs(select(abs(-36808i), ~(-29996i), all(vec2<bool>(true, false))))), _wgslsmith_clamp_i32(abs(~u_input.e.x), u_input.d, -1i));
    var var_1 = vec3<i32>(2147483647i, ~(_wgslsmith_add_i32(-48906i, var_0.e) >> (30331u % 32u)) << (~u_input.b % 32u), u_input.e.x >> (var_0.d.a % 32u));
    let var_2 = vec4<bool>(!(-_wgslsmith_clamp_i32(var_1.x, 0i, 2147483647i) < (i32(-1i) * -1i)), true, true, select(firstLeadingBit(-2147483647i), 19329i, var_1.x == ~2147483647i) < _wgslsmith_add_i32(_wgslsmith_add_i32(21240i, var_1.x) << (~32452u % 32u), var_0.e));
    let var_3 = vec2<bool>(any(select(vec3<bool>(var_2.x, true & var_2.x, true), select(vec3<bool>(true, false, var_2.x), var_2.zxw, vec3<bool>(var_2.x, true, false)), var_2.wyw)), any(var_0.c));
    var var_4 = u_input.a.x | abs(~var_0.d.c.x);
    return vec3<u32>(1u, var_0.a.b.c.x, 6323u);
}

fn func_4(arg_0: Struct_2) -> Struct_5 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_dot_vec3_u32(~vec3<u32>(10060u, 4294967295u, 14303u), vec3<u32>(~1u, firstLeadingBit(4294967295u), firstLeadingBit(u_input.b))), !all(select(vec3<bool>(arg_0.a.b, arg_0.a.b, true), vec3<bool>(arg_0.a.b, true, arg_0.a.b), vec3<bool>(arg_0.a.b, arg_0.a.b, false))), _wgslsmith_mult_vec3_u32(firstLeadingBit(abs(vec3<u32>(4294967295u, arg_0.a.a, arg_0.a.c.x))), _wgslsmith_add_vec3_u32(~arg_0.a.c, ~arg_0.a.c)), 4513i), vec2<u32>(u_input.a.x, firstLeadingBit(~4294967295u | abs(u_input.a.x))));
    let var_1 = Struct_5(-1959f, Struct_2(Struct_1(_wgslsmith_sub_u32(arg_0.b.x, ~u_input.b), true, _wgslsmith_mod_vec3_u32(vec3<u32>(arg_0.a.a, 0u, 1u), vec3<u32>(var_0.b.x, arg_0.b.x, u_input.a.x)), 0i), vec2<u32>(var_0.b.x >> (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, var_0.a.c.x, u_input.a.x, arg_0.a.a), vec4<u32>(arg_0.b.x, 4294967295u, 1u, arg_0.b.x)) % 32u), u_input.a.x)), ~vec4<u32>(_wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(u_input.a.x, 46124u)), _wgslsmith_div_vec2_u32(vec2<u32>(2074u, 0u), u_input.a)), 0u, _wgslsmith_mult_u32(var_0.a.a, var_0.a.a), 28944u << ((u_input.b ^ 12463u) % 32u)), (~countOneBits(vec4<i32>(var_0.a.d, var_0.a.d, -47485i, arg_0.a.d)) | -(vec4<i32>(u_input.c, 1i, u_input.d, u_input.d) | vec4<i32>(-2147483647i, -44894i, u_input.e.x, 55031i))) & (select(vec4<i32>(arg_0.a.d, var_0.a.d, 25826i, 0i), vec4<i32>(var_0.a.d, arg_0.a.d, 40900i, 37178i) | vec4<i32>(-2147483647i, u_input.c, arg_0.a.d, arg_0.a.d), true) >> (vec4<u32>(u_input.b | var_0.a.a, abs(arg_0.b.x), firstLeadingBit(var_0.b.x), ~0u) % vec4<u32>(32u))), Struct_2(Struct_1(arg_0.a.a, !arg_0.a.b, var_0.a.c, abs(countOneBits(1i))), ~select(_wgslsmith_add_vec2_u32(arg_0.b, u_input.a), ~var_0.a.c.yz, select(vec2<bool>(var_0.a.b, true), vec2<bool>(arg_0.a.b, var_0.a.b), vec2<bool>(true, false)))));
    var var_2 = Struct_1(_wgslsmith_sub_u32(~3933u, u_input.b), true, min(var_0.a.c >> (_wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(15378u, arg_0.b.x, 1u), var_1.c.wyz), var_0.a.c << (vec3<u32>(u_input.a.x, 24097u, var_0.b.x) % vec3<u32>(32u))) % vec3<u32>(32u)), var_0.a.c), select(-2147483647i, abs(arg_0.a.d) << (25921u % 32u), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1000f - 508f), _wgslsmith_f_op_f32(-var_1.a))) != _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-220f * var_1.a)))));
    var var_3 = false;
    let var_4 = vec3<f32>(_wgslsmith_f_op_f32(var_1.a * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-203f, -2006f) * _wgslsmith_f_op_f32(-var_1.a))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1076f, var_1.a)))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_1.a - _wgslsmith_div_f32(var_1.a, var_1.a))))), -114f);
    return var_1;
}

fn func_1(arg_0: f32) -> Struct_2 {
    var var_0 = true;
    var_0 = true;
    var var_1 = vec4<u32>(4294967295u, ~(~u_input.b), 19769u, u_input.a.x);
    var var_2 = _wgslsmith_mult_vec2_i32(u_input.e.yy, -u_input.e.yy);
    var var_3 = func_4(Struct_2(Struct_1(4294967295u, true, func_2() ^ var_1.xyz, -1i), vec2<u32>(u_input.a.x, ~var_1.x)));
    return var_3.b;
}

fn func_5(arg_0: vec3<u32>, arg_1: u32, arg_2: Struct_2) -> bool {
    let var_0 = func_4(arg_2).b.a;
    let var_1 = select(select(select(vec2<bool>(true, arg_2.a.d < arg_2.a.d), vec2<bool>(true, true), vec2<bool>(true, arg_2.a.b)), select(!vec2<bool>(var_0.b, true), !vec2<bool>(false, var_0.b), vec2<bool>(true, true)), 949f != _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(1412f, -674f)), _wgslsmith_f_op_f32(trunc(207f)))), !select(vec2<bool>(func_3(), var_0.b), select(vec2<bool>(var_0.b, true), !vec2<bool>(true, var_0.b), true), func_4(Struct_2(var_0, vec2<u32>(arg_2.a.a, arg_1))).b.a.b), select(!select(!vec2<bool>(var_0.b, true), select(vec2<bool>(false, false), vec2<bool>(arg_2.a.b, arg_2.a.b), false), true), select(select(vec2<bool>(true, true), !vec2<bool>(var_0.b, false), vec2<bool>(var_0.b, true)), vec2<bool>(true, true), vec2<bool>(select(arg_2.a.b, arg_2.a.b, true), false)), select(vec2<bool>(true, true), select(vec2<bool>(var_0.b, true), vec2<bool>(false, var_0.b), vec2<bool>(true, false)), vec2<bool>(true, all(vec2<bool>(true, arg_2.a.b))))));
    var var_2 = _wgslsmith_add_vec2_u32(countOneBits(vec2<u32>(arg_1, arg_0.x) >> (vec2<u32>(4294967295u, 8160u) % vec2<u32>(32u))) << (arg_0.xx % vec2<u32>(32u)), arg_0.yx);
    let var_3 = var_0.b;
    var_2 = select(var_0.c.xx, ~var_0.c.xy, !var_1);
    return !(!arg_2.a.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(select(vec2<bool>(func_5(vec3<u32>(u_input.a.x, u_input.b, 23644u), 1u, func_1(1011f)), any(vec2<bool>(true, true))), select(!select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, true), !func_5(vec3<u32>(u_input.a.x, u_input.a.x, u_input.b), 1558u, Struct_2(Struct_1(0u, true, vec3<u32>(u_input.b, 104861u, 20844u), u_input.e.x), u_input.a))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f))) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1469f)) + func_4(Struct_2(Struct_1(u_input.b, false, vec3<u32>(55023u, u_input.b, u_input.b), -35277i), vec2<u32>(u_input.b, u_input.b))).a)));
    let var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1241f) + -567f)) + 2328f)));
    var var_2 = abs(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-422f - -206f) - _wgslsmith_f_op_f32(f32(-1f) * -760f)))).a.d);
    var var_3 = Struct_4(Struct_3((1u != ~u_input.b) & true, func_1(func_4(func_4(Struct_2(Struct_1(u_input.b, false, vec3<u32>(48097u, 4294967295u, u_input.a.x), 0i), u_input.a)).e).a).a), var_0, !(!vec2<bool>(func_5(vec3<u32>(u_input.b, u_input.b, u_input.a.x), u_input.a.x, Struct_2(Struct_1(u_input.a.x, var_0, vec3<u32>(4294967295u, 1u, 0u), -2147483647i), u_input.a)), var_0)), func_4(func_1(-2174f)).b.a, u_input.e.x);
    var var_4 = func_4(func_4(func_4(Struct_2(Struct_1(var_3.d.a, true, var_3.a.b.c, u_input.c), ~vec2<u32>(u_input.a.x, u_input.a.x))).b).b);
    var var_5 = func_2().x;
    var_4 = func_4(func_4(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-628f))))).e);
    var_4 = Struct_5(var_1, Struct_2(var_4.e.a, (var_4.b.b & func_1(var_4.a).b) << (var_3.d.c.yx % vec2<u32>(32u))), ~var_4.c << (var_4.c % vec4<u32>(32u)), func_4(func_1(var_4.a)).d, func_4(Struct_2(func_4(var_4.e).e.a, _wgslsmith_div_vec2_u32(vec2<u32>(var_4.e.a.a, 89991u), _wgslsmith_sub_vec2_u32(var_3.d.c.xy, vec2<u32>(var_3.d.a, 37503u))))).e);
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u);
}

