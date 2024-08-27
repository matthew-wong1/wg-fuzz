struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: vec3<bool>,
    d: bool,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec3<i32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: vec2<bool>,
    c: Struct_3,
    d: vec3<u32>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 20> = array<Struct_4, 20>(Struct_4(5053i, vec2<bool>(true, false), Struct_3(Struct_1(vec3<i32>(106i, -12856i, -11053i), 7863u, vec3<bool>(false, true, true), true, vec2<bool>(false, false))), vec3<u32>(2u, 4294967295u, 34628u), vec2<u32>(10086u, 16822u)), Struct_4(-59209i, vec2<bool>(true, false), Struct_3(Struct_1(vec3<i32>(2147483647i, 0i, 916i), 4294967295u, vec3<bool>(true, true, false), true, vec2<bool>(true, false))), vec3<u32>(4294967295u, 17420u, 30191u), vec2<u32>(83145u, 3179u)), Struct_4(-48789i, vec2<bool>(true, false), Struct_3(Struct_1(vec3<i32>(i32(-2147483648), i32(-2147483648), 18070i), 0u, vec3<bool>(false, false, false), true, vec2<bool>(true, true))), vec3<u32>(35036u, 39714u, 4294967295u), vec2<u32>(8171u, 1u)), Struct_4(2147483647i, vec2<bool>(false, false), Struct_3(Struct_1(vec3<i32>(-18061i, 79114i, 17354i), 0u, vec3<bool>(false, false, false), false, vec2<bool>(false, true))), vec3<u32>(71277u, 21514u, 34341u), vec2<u32>(88610u, 19333u)), Struct_4(-2382i, vec2<bool>(false, true), Struct_3(Struct_1(vec3<i32>(61004i, 42772i, -38372i), 4294967295u, vec3<bool>(false, true, true), true, vec2<bool>(true, false))), vec3<u32>(4294967295u, 57981u, 20842u), vec2<u32>(0u, 4294967295u)), Struct_4(-6025i, vec2<bool>(false, false), Struct_3(Struct_1(vec3<i32>(2147483647i, i32(-2147483648), 2147483647i), 27342u, vec3<bool>(true, false, true), false, vec2<bool>(true, true))), vec3<u32>(1u, 118957u, 1u), vec2<u32>(4294967295u, 4294967295u)), Struct_4(2147483647i, vec2<bool>(false, true), Struct_3(Struct_1(vec3<i32>(8993i, -40109i, -8787i), 38965u, vec3<bool>(false, true, true), true, vec2<bool>(true, false))), vec3<u32>(19519u, 14253u, 112295u), vec2<u32>(1u, 0u)), Struct_4(1i, vec2<bool>(false, true), Struct_3(Struct_1(vec3<i32>(-27142i, 0i, -1i), 68751u, vec3<bool>(false, true, true), false, vec2<bool>(true, true))), vec3<u32>(4294967295u, 48084u, 22883u), vec2<u32>(0u, 1u)), Struct_4(1i, vec2<bool>(true, true), Struct_3(Struct_1(vec3<i32>(2147483647i, 20321i, i32(-2147483648)), 30424u, vec3<bool>(true, false, false), true, vec2<bool>(true, false))), vec3<u32>(42872u, 34970u, 41588u), vec2<u32>(29360u, 1u)), Struct_4(2147483647i, vec2<bool>(false, false), Struct_3(Struct_1(vec3<i32>(25509i, 50380i, i32(-2147483648)), 0u, vec3<bool>(false, false, false), true, vec2<bool>(true, false))), vec3<u32>(6264u, 4294967295u, 0u), vec2<u32>(9408u, 36251u)), Struct_4(4978i, vec2<bool>(false, false), Struct_3(Struct_1(vec3<i32>(-8595i, 0i, 0i), 0u, vec3<bool>(false, false, true), false, vec2<bool>(true, false))), vec3<u32>(8265u, 1u, 86498u), vec2<u32>(0u, 1u)), Struct_4(i32(-2147483648), vec2<bool>(false, true), Struct_3(Struct_1(vec3<i32>(32895i, 0i, -22468i), 0u, vec3<bool>(true, false, true), false, vec2<bool>(false, false))), vec3<u32>(1u, 62294u, 1u), vec2<u32>(4294967295u, 35935u)), Struct_4(-1i, vec2<bool>(false, false), Struct_3(Struct_1(vec3<i32>(13863i, 45490i, -53510i), 12269u, vec3<bool>(true, false, false), false, vec2<bool>(false, true))), vec3<u32>(53926u, 11844u, 0u), vec2<u32>(82392u, 45234u)), Struct_4(0i, vec2<bool>(true, false), Struct_3(Struct_1(vec3<i32>(-12913i, -1i, -1i), 0u, vec3<bool>(false, true, false), true, vec2<bool>(true, true))), vec3<u32>(19678u, 1u, 1u), vec2<u32>(0u, 0u)), Struct_4(14835i, vec2<bool>(true, false), Struct_3(Struct_1(vec3<i32>(-1i, -10791i, 2147483647i), 1u, vec3<bool>(true, false, false), true, vec2<bool>(false, true))), vec3<u32>(0u, 4294967295u, 24534u), vec2<u32>(4294967295u, 59944u)), Struct_4(73694i, vec2<bool>(false, false), Struct_3(Struct_1(vec3<i32>(i32(-2147483648), 647i, 2147483647i), 1u, vec3<bool>(false, true, false), false, vec2<bool>(false, false))), vec3<u32>(0u, 50154u, 29224u), vec2<u32>(111034u, 1u)), Struct_4(1i, vec2<bool>(false, true), Struct_3(Struct_1(vec3<i32>(0i, 2147483647i, -1i), 17781u, vec3<bool>(false, true, false), true, vec2<bool>(false, true))), vec3<u32>(20232u, 10994u, 1u), vec2<u32>(66492u, 1u)), Struct_4(28986i, vec2<bool>(true, true), Struct_3(Struct_1(vec3<i32>(-1i, 1i, i32(-2147483648)), 1u, vec3<bool>(false, true, false), true, vec2<bool>(true, true))), vec3<u32>(11020u, 60441u, 0u), vec2<u32>(35555u, 76917u)), Struct_4(0i, vec2<bool>(true, false), Struct_3(Struct_1(vec3<i32>(40433i, i32(-2147483648), -16362i), 4294967295u, vec3<bool>(false, false, false), false, vec2<bool>(true, false))), vec3<u32>(1u, 4294967295u, 52207u), vec2<u32>(11425u, 23404u)), Struct_4(-32065i, vec2<bool>(false, false), Struct_3(Struct_1(vec3<i32>(64846i, -3967i, -54942i), 0u, vec3<bool>(false, true, true), true, vec2<bool>(false, true))), vec3<u32>(4294967295u, 0u, 38333u), vec2<u32>(4294967295u, 634u)));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec4<f32>) -> bool {
    global0 = array<Struct_4, 20>();
    let var_0 = arg_0.x;
    let var_1 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(select(-433f, _wgslsmith_f_op_f32(var_0 - arg_0.x), any(vec3<bool>(true, false, true)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -100f))), -1000f, _wgslsmith_f_op_f32(min(-627f, _wgslsmith_f_op_f32(ceil(var_0))))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(199f, 516f, true)), _wgslsmith_f_op_f32(f32(-1f) * -874f), _wgslsmith_div_f32(-339f, -435f), -197f), _wgslsmith_f_op_vec4_f32(arg_0 + _wgslsmith_div_vec4_f32(vec4<f32>(-1000f, 2073f, var_0, arg_0.x), vec4<f32>(-1933f, -673f, var_0, arg_0.x)))), vec4<bool>(select(select(true, false, true), true, true), any(vec4<bool>(true, false, true, true)), any(select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false))), true))), arg_0));
    let var_2 = Struct_1(vec3<i32>(u_input.b >> (~max(u_input.a, u_input.a) % 32u), u_input.b, 1i), _wgslsmith_dot_vec4_u32(vec4<u32>(~u_input.a, ~4294967295u, u_input.a, 11255u), vec4<u32>(~0u, 0u, u_input.a ^ u_input.a, 1u)) << (44779u % 32u), vec3<bool>(true, any(vec2<bool>(true, u_input.a < u_input.a)), !all(select(vec2<bool>(false, false), vec2<bool>(true, true), true))), all(vec4<bool>(true, true, true, true)), !(!select(vec2<bool>(false, true), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false)), all(vec4<bool>(true, true, false, false)))));
    global0 = array<Struct_4, 20>();
    return all(select(vec4<bool>(false & var_2.c.x, any(vec2<bool>(var_2.d, var_2.e.x)), any(vec4<bool>(false, var_2.d, var_2.c.x, true)), var_2.c.x), vec4<bool>(true, var_2.d, any(vec2<bool>(var_2.c.x, true)), !var_2.e.x), !select(vec4<bool>(var_2.d, true, false, var_2.d), vec4<bool>(var_2.c.x, true, var_2.c.x, false), vec4<bool>(false, var_2.d, var_2.d, false)))) == var_2.d;
}

fn func_2(arg_0: bool) -> Struct_3 {
    var var_0 = ~(select(~(~u_input.a), firstTrailingBit(4294967295u), false) >> (u_input.a % 32u));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-596f, _wgslsmith_f_op_f32(f32(-1f) * -554f))));
    var var_2 = Struct_2(!select(vec4<bool>(true, true, true, false), select(!vec4<bool>(arg_0, false, false, arg_0), select(vec4<bool>(arg_0, false, arg_0, true), vec4<bool>(arg_0, arg_0, arg_0, false), vec4<bool>(false, true, arg_0, true)), all(vec2<bool>(arg_0, arg_0))), select(vec4<bool>(arg_0, false, arg_0, arg_0), vec4<bool>(arg_0, arg_0, arg_0, true), func_3(vec4<f32>(184f, 1694f, 1323f, 268f)))), Struct_1(vec3<i32>(-1i, -u_input.b ^ -u_input.b, u_input.b), _wgslsmith_dot_vec4_u32(abs(abs(vec4<u32>(u_input.a, u_input.a, 0u, 80236u))), ~abs(vec4<u32>(u_input.a, 1u, 36938u, u_input.a))), select(vec3<bool>(true, false, true), vec3<bool>(arg_0, true, true), func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(-545f, 579f, -1072f, 2180f) * vec4<f32>(-1000f, -331f, -438f, 1296f)))), arg_0, !(!(!vec2<bool>(false, arg_0)))), _wgslsmith_div_vec3_i32(~vec3<i32>(1i, u_input.b, -1i), _wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, 2147483647i, u_input.b), vec3<i32>(1i, -41512i, 51232i)), reverseBits(vec3<i32>(u_input.b, u_input.b, 41899i)))) ^ ~(~vec3<i32>(u_input.b, 2147483647i, 0i)), Struct_1(~(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(4842i, u_input.b, -7448i), vec3<i32>(u_input.b, u_input.b, u_input.b)) << ((vec3<u32>(1u, u_input.a, 43811u) ^ vec3<u32>(114833u, 18794u, 0u)) % vec3<u32>(32u))), 1390u, vec3<bool>(!(-2651i <= u_input.b), arg_0, arg_0), false, vec2<bool>(!select(arg_0, arg_0, arg_0), arg_0 == arg_0)), Struct_1(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, -54233i, -1i), vec3<i32>(-23809i, u_input.b, -1i)) ^ (~vec3<i32>(u_input.b, -36157i, -2147483647i) << (reverseBits(vec3<u32>(u_input.a, 1u, 4889u)) % vec3<u32>(32u))), _wgslsmith_mult_u32(1u, u_input.a | select(u_input.a, u_input.a, true)), !(!select(vec3<bool>(arg_0, true, true), vec3<bool>(arg_0, true, true), arg_0)), !select(!arg_0, true, arg_0), select(vec2<bool>(!arg_0, any(vec4<bool>(true, false, true, false))), !select(vec2<bool>(false, arg_0), vec2<bool>(arg_0, arg_0), vec2<bool>(true, arg_0)), vec2<bool>(func_3(vec4<f32>(1088f, -156f, -959f, 578f)), true))));
    var_2 = Struct_2(var_2.a, var_2.e, vec3<i32>(u_input.b, ~_wgslsmith_dot_vec4_i32(~vec4<i32>(35688i, var_2.d.a.x, -2147483647i, 10354i), vec4<i32>(-1i, u_input.b, var_2.c.x, u_input.b)), select(-28581i, (-16537i >> (1u % 32u)) & u_input.b, (arg_0 && true) && true)), Struct_1(_wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(0i, -1i), _wgslsmith_add_i32(1i, u_input.b), var_2.b.a.x), select(var_2.d.a, _wgslsmith_sub_vec3_i32(vec3<i32>(4460i, u_input.b, var_2.b.a.x), var_2.b.a), false)), min(_wgslsmith_sub_u32(_wgslsmith_mult_u32(var_2.e.b, 34415u), ~u_input.a), 49933u), !vec3<bool>(all(var_2.a.wyz), !arg_0, var_2.b.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-999f, 285f)) + _wgslsmith_f_op_f32(sign(-1368f))) > _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1211f), _wgslsmith_f_op_f32(1000f + -639f)), select(vec2<bool>(true, true), vec2<bool>(all(var_2.d.e), all(vec2<bool>(arg_0, arg_0))), all(var_2.a))), Struct_1(vec3<i32>(~u_input.b, u_input.b, -u_input.b) ^ vec3<i32>(u_input.b, 1i, -1i >> (0u % 32u)), 1u, var_2.e.c, all(var_2.b.c.yx), !var_2.d.e));
    var_0 = 0u;
    return Struct_3(var_2.e);
}

fn func_1(arg_0: i32) -> vec3<bool> {
    global0 = array<Struct_4, 20>();
    global0 = array<Struct_4, 20>();
    let var_0 = Struct_4(1i, vec2<bool>(true, any(vec3<bool>(false, all(vec3<bool>(false, true, true)), true))), func_2(true), ~vec3<u32>(44437u, _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u), vec4<u32>(1u, u_input.a, u_input.a, u_input.a)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 1u, u_input.a, 5888u), vec4<u32>(u_input.a, 4294967295u, u_input.a, 1u))), ~(u_input.a << (u_input.a % 32u))), vec2<u32>(~reverseBits(firstTrailingBit(u_input.a)), 2998u));
    var var_1 = -286f;
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -607f);
    return !(!func_2(func_2(true).a.c.x).a.c);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_4, 20>();
    global0 = array<Struct_4, 20>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(401f, -890f, true)))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(990f, 2930f)))));
    let var_1 = !select(func_1(i32(-1i) * -28646i), vec3<bool>(!func_2(true).a.c.x, false, func_1(-2147483647i).x), (_wgslsmith_add_i32(17079i, 1i) << (u_input.a % 32u)) <= 2147483647i);
    let var_2 = Struct_4(firstTrailingBit(_wgslsmith_mult_i32(_wgslsmith_div_i32(u_input.b, 2147483647i) << (~0u % 32u), firstTrailingBit(_wgslsmith_div_i32(u_input.b, 0i)))), var_1.yx, func_2(true), ~firstTrailingBit(_wgslsmith_add_vec3_u32(~vec3<u32>(2496u, 4294967295u, u_input.a), ~vec3<u32>(u_input.a, 38743u, 33727u))), _wgslsmith_mod_vec2_u32(vec2<u32>(select(u_input.a, 1u, any(vec3<bool>(var_1.x, var_1.x, true))), ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 12658u), vec2<u32>(18930u, u_input.a))), ~(firstLeadingBit(vec2<u32>(u_input.a, u_input.a)) << (_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a)) % vec2<u32>(32u)))));
    let var_3 = ~_wgslsmith_mult_i32(~u_input.b, firstTrailingBit(_wgslsmith_dot_vec3_i32(max(vec3<i32>(1i, 1i, -1197i), var_2.c.a.a), -vec3<i32>(0i, 1i, u_input.b))));
    var var_4 = abs(firstTrailingBit(abs(~u_input.a >> (_wgslsmith_dot_vec2_u32(var_2.e, vec2<u32>(0u, 7863u)) % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.c.a.a.zz, max(func_2(select(false, var_2.b.x, var_2.b.x)).a.a.yz, var_2.c.a.a.zx), vec3<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.d.x, var_2.d.x, u_input.a, u_input.a), firstLeadingBit(vec4<u32>(16031u, 46839u, 0u, var_2.e.x))), ~1u, abs(u_input.a)), vec2<i32>(reverseBits(abs(u_input.b)), -_wgslsmith_add_i32(var_3, u_input.b)));
}

