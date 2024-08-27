struct Struct_1 {
    a: i32,
    b: bool,
    c: vec3<bool>,
}

struct Struct_2 {
    a: bool,
    b: vec2<i32>,
    c: Struct_1,
    d: f32,
    e: bool,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: i32,
    b: f32,
    c: vec3<i32>,
    d: i32,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: u32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<Struct_3, 32>;

var<private> global2: i32 = 27299i;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec3<bool>, arg_2: f32) -> f32 {
    global1 = array<Struct_3, 32>();
    var var_0 = 276f;
    var var_1 = -1531f;
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_2, -1500f)) + arg_2) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -488f));
    return 2374f;
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_2) -> vec4<u32> {
    var var_0 = arg_1.c;
    var var_1 = Struct_5(~abs(~u_input.b), -1000f, ~(-(vec3<i32>(-1i) * -vec3<i32>(20151i, var_0.a, var_0.a))), arg_1.c.a, Struct_1(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(arg_1.b, vec2<i32>(var_0.a, u_input.a)), -(-15767i & var_0.a)), true, select(select(arg_1.c.c, vec3<bool>(true, var_0.b, arg_1.a), true), var_0.c, var_0.c.x)));
    global1 = array<Struct_3, 32>();
    var var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_1.d, _wgslsmith_f_op_f32(-1000f - 806f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1222f - 669f), _wgslsmith_f_op_f32(ceil(-981f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(889f, -352f), vec2<f32>(860f, var_1.b))))))));
    var_2 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.d, 1852f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1104f, 1000f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1141f), _wgslsmith_f_op_f32(trunc(var_1.b))) * vec2<f32>(_wgslsmith_f_op_f32(-var_1.b), _wgslsmith_f_op_f32(var_2.x + var_2.x))))));
    return select(reverseBits(vec4<u32>(0u, u_input.e, 97654u, u_input.e) & u_input.d) | u_input.d, u_input.d, select(vec4<bool>(!global0.x, var_1.e.c.x, false, !(48779i < var_1.a)), vec4<bool>(!global0.x, !select(true, true, false), global0.x, global0.x), vec4<bool>(false, true, arg_1.c.c.x, true)));
}

fn func_4(arg_0: i32, arg_1: vec4<u32>) -> i32 {
    let var_0 = Struct_2(global0.x, ~(~abs(vec2<i32>(35521i, -1i) >> (arg_1.yx % vec2<u32>(32u)))), Struct_1(i32(-1i) * -(~2147483647i), true, vec3<bool>(all(vec4<bool>(true, true, true, true)), any(global0.yx), all(!global0.zz))), _wgslsmith_f_op_f32(f32(-1f) * -263f), any(select(vec4<bool>(true, true, global0.x, all(global0.xy)), vec4<bool>(any(vec2<bool>(false, false)), all(vec3<bool>(global0.x, false, false)), true, any(vec3<bool>(global0.x, false, true))), select(vec4<bool>(global0.x, false, global0.x, false), select(vec4<bool>(global0.x, true, true, global0.x), vec4<bool>(true, false, global0.x, true), vec4<bool>(global0.x, global0.x, false, true)), vec4<bool>(false, global0.x, global0.x, global0.x)))));
    global0 = select(!vec3<bool>(!(!global0.x), var_0.a, true), !select(!(!var_0.c.c), !select(vec3<bool>(true, global0.x, false), var_0.c.c, vec3<bool>(var_0.a, var_0.e, global0.x)), global0.x), var_0.c.c);
    var var_1 = Struct_5(_wgslsmith_div_i32(0i, abs(max(_wgslsmith_mult_i32(var_0.c.a, u_input.b), -15014i))), _wgslsmith_f_op_f32(exp2(var_0.d)), vec3<i32>(var_0.b.x, -2147483647i, u_input.c), _wgslsmith_div_i32(abs(u_input.c), ~u_input.b) | max(u_input.c, max(-52160i, -u_input.c)), Struct_1(var_0.b.x, !any(select(vec2<bool>(true, global0.x), global0.zx, global0.x)), vec3<bool>(all(vec4<bool>(true, var_0.c.c.x, false, true)), global0.x, var_0.c.c.x)));
    var_1 = Struct_5(-_wgslsmith_div_i32(u_input.c, -var_1.e.a), _wgslsmith_f_op_f32(-2116f - -1071f), _wgslsmith_div_vec3_i32(vec3<i32>(0i, 31493i, u_input.a) | select(_wgslsmith_div_vec3_i32(var_1.c, vec3<i32>(var_0.c.a, 0i, arg_0)), var_1.c, var_0.c.b), _wgslsmith_clamp_vec3_i32(vec3<i32>(29560i, 1i, ~arg_0), _wgslsmith_mult_vec3_i32(vec3<i32>(var_1.a, 0i, -17132i), _wgslsmith_sub_vec3_i32(vec3<i32>(0i, 1i, 1i), var_1.c)), select(~vec3<i32>(-16665i, var_1.a, arg_0), var_1.c, vec3<bool>(true, true, true)))), _wgslsmith_clamp_i32(i32(-1i) * -abs(arg_0), var_1.d, ~(-5528i)), var_0.c);
    global0 = vec3<bool>(857f <= _wgslsmith_div_f32(var_0.d, _wgslsmith_f_op_f32(trunc(var_0.d))), !var_0.c.c.x, var_0.c.c.x);
    return -2147483647i;
}

fn func_1(arg_0: bool, arg_1: Struct_3) -> vec4<i32> {
    let var_0 = vec4<f32>(-749f, _wgslsmith_f_op_f32(-193f * -409f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1135f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(941f, 816f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(vec2<bool>(true, true), vec3<bool>(false, global0.x, true), 375f)), -174f), false))), _wgslsmith_f_op_f32(f32(-1f) * -771f));
    let var_1 = vec4<f32>(var_0.x, _wgslsmith_f_op_f32(-var_0.x), -420f, -1000f);
    let var_2 = Struct_2(min(1i, func_4(u_input.a, func_3(u_input.d.zxw, Struct_2(arg_0, vec2<i32>(-6805i, -1i), Struct_1(-2147483647i, global0.x, vec3<bool>(true, arg_0, arg_0)), 1509f, false)))) != (arg_1.a >> ((_wgslsmith_div_u32(43564u, u_input.d.x) & ~u_input.e) % 32u)), vec2<i32>(-1i) * -(~(vec2<i32>(u_input.a, -35987i) & vec2<i32>(u_input.b, 0i))), Struct_1(abs(~arg_1.a), (any(global0.zx) & !global0.x) && true, select(!vec3<bool>(arg_0, global0.x, arg_0), !vec3<bool>(global0.x, global0.x, true), !select(vec3<bool>(true, arg_0, false), vec3<bool>(true, arg_0, true), true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(var_1.x)))))), arg_0);
    global1 = array<Struct_3, 32>();
    return vec4<i32>(firstTrailingBit(~arg_1.a), ~(~var_2.c.a), var_2.b.x, abs(reverseBits(-abs(arg_1.a))));
}

fn func_5(arg_0: vec4<i32>, arg_1: vec3<i32>, arg_2: vec2<u32>, arg_3: vec3<f32>) -> Struct_4 {
    let var_0 = select(vec2<u32>(countOneBits(~u_input.d.x), ~_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(u_input.d.wyx, vec3<u32>(24324u, 74697u, 22175u)), 70218u)), min(~_wgslsmith_sub_vec2_u32(vec2<u32>(69145u, arg_2.x), _wgslsmith_mod_vec2_u32(vec2<u32>(51692u, 0u), vec2<u32>(16023u, arg_2.x))), arg_2 >> (vec2<u32>(u_input.d.x, 33613u) % vec2<u32>(32u))), !vec2<bool>(any(select(vec4<bool>(global0.x, false, global0.x, global0.x), vec4<bool>(true, false, false, false), true)), global0.x));
    let var_1 = 27318u;
    let var_2 = u_input.a;
    let var_3 = u_input.d >> ((u_input.d | u_input.d) % vec4<u32>(32u));
    global0 = select(!vec3<bool>(!(global0.x == true), true, all(vec2<bool>(false, true)) && all(global0.xx)), !select(vec3<bool>(select(true, true, false), false, true), select(vec3<bool>(global0.x, true, global0.x), !vec3<bool>(false, global0.x, true), vec3<bool>(global0.x, global0.x, false)), global0.x && true), global0.x == any(vec3<bool>(true, true, false)));
    return Struct_4(Struct_1(_wgslsmith_div_i32(55608i, _wgslsmith_clamp_i32(arg_1.x, arg_0.x, 1i)) ^ select(select(arg_1.x, arg_0.x, true), arg_0.x ^ var_2, global0.x), global0.x, select(select(select(vec3<bool>(true, false, global0.x), vec3<bool>(true, false, global0.x), global0.x), !vec3<bool>(global0.x, false, true), global0.x == false), vec3<bool>(global0.x, global0.x || global0.x, true), select(select(vec3<bool>(true, global0.x, global0.x), vec3<bool>(global0.x, false, global0.x), false), vec3<bool>(true, false, true), true))));
}

fn func_6(arg_0: Struct_4, arg_1: vec3<bool>) -> Struct_3 {
    var var_0 = vec2<i32>(1i, firstLeadingBit(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, -1i), vec2<i32>(arg_0.a.a, u_input.c)), ~(-50318i)))) & ~(-min(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, 59345i), vec2<i32>(u_input.a, u_input.a), vec2<i32>(1i, 38368i)), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, arg_0.a.a), vec2<i32>(-7493i, u_input.a))));
    global2 = _wgslsmith_add_i32(arg_0.a.a, ~_wgslsmith_clamp_i32(2147483647i, 1329i, min(36508i << (u_input.e % 32u), var_0.x)));
    var var_1 = u_input.d.x;
    global1 = array<Struct_3, 32>();
    let var_2 = arg_0.a.a;
    return Struct_3(_wgslsmith_sub_i32(1i, 1i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstTrailingBit(1i);
    let var_1 = func_6(func_5(~firstLeadingBit(func_1(false, Struct_3(7748i))), vec3<i32>(~(-u_input.c), ~1i, _wgslsmith_clamp_i32(_wgslsmith_add_i32(u_input.c, 2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, u_input.a, 1i), vec3<i32>(1i, 4215i, 8583i)), 1i)), u_input.d.wx, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1815f, 875f, 246f) * vec3<f32>(-2584f, 257f, -894f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1140f, 211f, 1183f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1191f, 1000f, -964f) - vec3<f32>(-1000f, -373f, 702f))), false))), select(vec3<bool>(global0.x, global0.x, !(!global0.x)), vec3<bool>(true, !all(vec3<bool>(true, false, true)), true), func_5((vec4<i32>(u_input.b, -8107i, u_input.a, u_input.a) & vec4<i32>(-2147483647i, u_input.a, -18144i, u_input.c)) | vec4<i32>(-36810i, -2147483647i, u_input.b, -1i), vec3<i32>(abs(u_input.c), -1i, ~u_input.a), reverseBits(vec2<u32>(4294967295u, u_input.d.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(222f, -503f, 336f) * vec3<f32>(-1077f, -760f, -374f)))).a.c));
    let var_2 = Struct_1(abs(firstTrailingBit(_wgslsmith_sub_i32(abs(-1i), 58638i))), true || (false | (abs(2342i) == select(var_1.a, u_input.a, global0.x))), select(vec3<bool>(global0.x || global0.x, _wgslsmith_f_op_f32(round(-819f)) <= _wgslsmith_f_op_f32(-169f - 488f), true), !vec3<bool>(true, true, global0.x), vec3<bool>(!(u_input.e <= 4294967295u), true, global0.x)));
    var_0 = select(var_1.a, var_2.a, !(!(!global0.x)) & (_wgslsmith_f_op_f32(f32(-1f) * -492f) != _wgslsmith_f_op_f32(select(-337f, _wgslsmith_f_op_f32(step(495f, 456f)), select(var_2.b, global0.x, var_2.b)))));
    global0 = !var_2.c;
    var var_3 = u_input.d.ywz;
    var_3 = ~vec3<u32>(143193u, ~44971u, ~(select(u_input.e, 11289u, global0.x) ^ _wgslsmith_mod_u32(u_input.e, 6271u)));
    let var_4 = vec2<i32>(countOneBits(0i), -u_input.c);
    global1 = array<Struct_3, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1073f)) + _wgslsmith_f_op_f32(-643f + -341f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-549f, 339f, var_2.b)))))), 871f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(437f * -967f))))), 1i, ~((abs(u_input.d.x) | _wgslsmith_mod_u32(var_3.x, var_3.x)) | 11038u), ~vec3<u32>(var_3.x, max(u_input.d.x, ~var_3.x), var_3.x));
}

