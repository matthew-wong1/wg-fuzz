struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec4<i32>,
    c: vec3<f32>,
}

struct Struct_4 {
    a: bool,
    b: u32,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_4,
    c: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 20>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_f32(trunc(-673f));
    global0 = array<i32, 20>();
    global0 = array<i32, 20>();
    global0 = array<i32, 20>();
    global0 = array<i32, 20>();
    return abs(select(firstLeadingBit(vec4<u32>(32939u, ~u_input.a.x, 0u, ~u_input.a.x)), ~(~_wgslsmith_add_vec4_u32(vec4<u32>(20393u, u_input.a.x, u_input.a.x, 4860u), vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, u_input.a.x))), select(vec4<bool>(true, var_0 <= -1000f, true, true), vec4<bool>(true, true, true, true), false)));
}

fn func_4(arg_0: vec2<bool>, arg_1: vec2<f32>, arg_2: f32, arg_3: vec4<u32>) -> vec4<bool> {
    let var_0 = arg_0.x;
    var var_1 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_2))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2, _wgslsmith_f_op_f32(101f - 736f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) - _wgslsmith_f_op_f32(-arg_2)))), u_input.b, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1.x, -214f)))), -654f, _wgslsmith_f_op_f32(arg_1.x * -928f)));
    var_1 = Struct_3(arg_1, abs(vec4<i32>(_wgslsmith_mult_i32(-26891i, -33886i), -u_input.b.x, 1i, -1i)), vec3<f32>(529f, _wgslsmith_f_op_f32(sign(arg_2)), 2496f));
    var var_2 = arg_3.x ^ u_input.a.x;
    let var_3 = Struct_5(Struct_3(vec2<f32>(-1047f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.c.x), 1f, arg_1.x >= -215f))), var_1.b, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -892f) + _wgslsmith_div_f32(-1000f, arg_1.x)), var_1.a.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -915f), -1189f, var_0)))), Struct_4(all(!(!vec2<bool>(arg_0.x, false))), arg_3.x), arg_3.x);
    return !vec4<bool>(all(vec4<bool>(false, false, select(arg_0.x, false, var_0), var_0)), any(select(select(vec3<bool>(var_0, var_0, arg_0.x), vec3<bool>(true, false, var_0), vec3<bool>(true, var_0, var_3.b.a)), vec3<bool>(arg_0.x, var_0, true), true)), !var_0, false);
}

fn func_2(arg_0: bool) -> Struct_5 {
    var var_0 = select(func_4(select(!(!vec2<bool>(arg_0, true)), vec2<bool>(false, true), !(!vec2<bool>(arg_0, arg_0))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1000f, -1589f))) + _wgslsmith_div_vec2_f32(vec2<f32>(-263f, -1163f), vec2<f32>(-880f, 902f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1000f, 2105f)))), select(!vec2<bool>(true, arg_0), !vec2<bool>(arg_0, arg_0), arg_0 & false))), 576f, func_3()), select(vec4<bool>(true, true, true, true), vec4<bool>(arg_0, true, true, all(select(vec2<bool>(false, true), vec2<bool>(arg_0, true), true))), select(vec4<bool>(arg_0, any(vec3<bool>(true, arg_0, false)), true, all(vec3<bool>(false, arg_0, false))), vec4<bool>(arg_0, true, true, !arg_0), func_4(!vec2<bool>(false, arg_0), vec2<f32>(-732f, 1713f), _wgslsmith_f_op_f32(round(469f)), ~vec4<u32>(4294967295u, u_input.a.x, 73512u, 4294967295u)).x)), select(func_4(vec2<bool>(true, true), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(705f, 746f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1884f, -1077f)), true)), _wgslsmith_f_op_f32(-1589f - _wgslsmith_f_op_f32(-505f - 1842f)), ~_wgslsmith_mult_vec4_u32(vec4<u32>(293u, u_input.a.x, 1u, 0u), vec4<u32>(18299u, u_input.a.x, u_input.a.x, 1u))), select(select(select(vec4<bool>(true, true, true, arg_0), vec4<bool>(true, arg_0, true, arg_0), false), vec4<bool>(false, arg_0, arg_0, true), true), select(vec4<bool>(arg_0, false, false, true), select(vec4<bool>(false, true, arg_0, true), vec4<bool>(arg_0, arg_0, false, arg_0), arg_0), select(false, false, false)), func_4(!vec2<bool>(arg_0, false), _wgslsmith_f_op_vec2_f32(vec2<f32>(733f, -815f) * vec2<f32>(1169f, 593f)), -917f, ~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 38225u)).x), !select(!vec4<bool>(false, arg_0, true, false), func_4(vec2<bool>(false, arg_0), vec2<f32>(265f, 1075f), 233f, vec4<u32>(18377u, 4294967295u, 79721u, u_input.a.x)), true)));
    return Struct_5(Struct_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)), ~vec4<i32>(_wgslsmith_sub_i32(global0[_wgslsmith_index_u32(u_input.a.x, 20u)], -64019i), u_input.b.x, _wgslsmith_mult_i32(-5975i, u_input.b.x), ~(-19238i)), vec3<f32>(-1155f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + -262f), -2595f)), Struct_4(false, 4294967295u), min(~(_wgslsmith_add_u32(u_input.a.x, u_input.a.x) & _wgslsmith_div_u32(0u, 25756u)), _wgslsmith_sub_u32(~u_input.a.x, u_input.a.x)));
}

fn func_5(arg_0: vec3<i32>, arg_1: u32, arg_2: Struct_5) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-arg_2.a.a.x));
    var var_1 = func_2(!(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(var_0, 445f)), _wgslsmith_f_op_f32(max(2077f, 281f)))) < -1000f)).a;
    var var_2 = Struct_1(select(func_4(select(vec2<bool>(true, true), vec2<bool>(true, true), u_input.a.x > arg_1), var_1.a, 1000f, (vec4<u32>(18016u, u_input.a.x, arg_1, 93296u) << (vec4<u32>(4294967295u, 84093u, u_input.a.x, u_input.a.x) % vec4<u32>(32u))) << (select(vec4<u32>(1u, 4724u, arg_1, arg_1), vec4<u32>(arg_2.b.b, arg_1, 21729u, 384u), vec4<bool>(arg_2.b.a, arg_2.b.a, true, true)) % vec4<u32>(32u))).wx, !vec2<bool>(true, func_4(vec2<bool>(arg_2.b.a, false), var_1.c.xz, 384f, vec4<u32>(arg_2.c, 102596u, arg_2.b.b, u_input.a.x)).x), !(_wgslsmith_f_op_f32(sign(102f)) >= _wgslsmith_f_op_f32(1537f * var_1.c.x))));
    let var_3 = any(!vec3<bool>(!(arg_2.a.b.x >= arg_0.x), (arg_1 >> (4294967295u % 32u)) <= ~u_input.a.x, select(var_2.a.x, 7360u >= arg_1, select(arg_2.b.a, true, arg_2.b.a))));
    var var_4 = vec4<bool>(!var_2.a.x, var_3, all(var_2.a), true | func_4(var_2.a, vec2<f32>(_wgslsmith_f_op_f32(round(1207f)), _wgslsmith_f_op_f32(floor(var_1.a.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(var_1.c.x, var_0)), _wgslsmith_f_op_f32(floor(1000f)), all(vec2<bool>(var_2.a.x, false)))), _wgslsmith_sub_vec4_u32(vec4<u32>(172u, arg_1, arg_2.c, 1u), ~vec4<u32>(1u, arg_1, arg_2.c, arg_2.b.b))).x);
    return arg_2.a;
}

fn func_6(arg_0: Struct_3) -> f32 {
    let var_0 = func_2(!all(select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), false), vec4<bool>(true, true, true, true), func_4(vec2<bool>(true, false), vec2<f32>(1187f, arg_0.a.x), arg_0.a.x, vec4<u32>(u_input.a.x, 21497u, u_input.a.x, u_input.a.x))))).b;
    var var_1 = _wgslsmith_add_u32(~(~_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(4294967295u, u_input.a.x, 11319u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.b, 0u, var_0.b), vec3<u32>(var_0.b, 0u, 13779u), vec3<u32>(12379u, var_0.b, 1u)))), u_input.a.x);
    return arg_0.a.x;
}

fn func_1(arg_0: i32) -> vec3<f32> {
    global0 = array<i32, 20>();
    global0 = array<i32, 20>();
    var var_0 = _wgslsmith_f_op_f32(select(-1196f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_6(func_5(vec3<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 20u)], arg_0, -46579i) << (vec3<u32>(u_input.a.x, 1u, 4294967295u) % vec3<u32>(32u)), 0u, func_2(false))))), (_wgslsmith_f_op_f32(-func_2(false).a.c.x) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -712f))) && true));
    var_0 = _wgslsmith_f_op_f32(select(288f, 732f, true));
    var var_1 = Struct_4(all(select(vec4<bool>(true, true, true, true), func_4(vec2<bool>(true, true), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1203f, -1000f)), 750f, abs(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 21473u))), all(vec3<bool>(true, true, true)))), u_input.a.x);
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-func_5(_wgslsmith_mod_vec3_i32(vec3<i32>(arg_0, u_input.b.x, -2147483647i), u_input.b.wxy), select(reverseBits(var_1.b), _wgslsmith_mult_u32(39770u, u_input.a.x), true), func_2(true)).c));
}

fn func_7(arg_0: Struct_3) -> Struct_5 {
    let var_0 = Struct_2(select(!vec3<bool>(false, true, func_4(vec2<bool>(false, false), vec2<f32>(arg_0.c.x, -1130f), 1372f, vec4<u32>(267u, 0u, 4294967295u, 4294967295u)).x), vec3<bool>(true, true, true), vec3<bool>(true, !(arg_0.a.x <= arg_0.c.x), 2147483647i >= -u_input.b.x)));
    let var_1 = Struct_3(arg_0.c.zy, arg_0.b << (reverseBits(~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x) << (min(vec4<u32>(4294967295u, 27747u, u_input.a.x, 0u), vec4<u32>(2257u, 58172u, u_input.a.x, u_input.a.x)) % vec4<u32>(32u))) % vec4<u32>(32u)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(sign(-1329f)), _wgslsmith_f_op_f32(-arg_0.a.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_0.a.x, arg_0.a.x, -1391f), arg_0.c))) + vec3<f32>(-119f, _wgslsmith_f_op_f32(f32(-1f) * -197f), _wgslsmith_div_f32(-787f, -741f)))));
    global0 = array<i32, 20>();
    global0 = array<i32, 20>();
    var var_2 = countOneBits(vec4<u32>(max(func_3().x, _wgslsmith_add_u32(4294967295u << (u_input.a.x % 32u), ~u_input.a.x)), u_input.a.x, ~_wgslsmith_sub_u32(u_input.a.x, u_input.a.x), _wgslsmith_mod_u32(~abs(u_input.a.x), ~reverseBits(60700u))));
    return Struct_5(func_2(!(!func_4(vec2<bool>(false, var_0.a.x), arg_0.c.yz, -691f, vec4<u32>(var_2.x, 1u, u_input.a.x, 1u)).x)).a, func_2(!any(vec4<bool>(true, true, true, true))).b, _wgslsmith_dot_vec4_u32(vec4<u32>(3384u, _wgslsmith_mod_u32(0u, ~var_2.x), _wgslsmith_sub_u32(u_input.a.x, ~u_input.a.x), var_2.x), countOneBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(38072u, 1u, var_2.x, var_2.x), select(vec4<u32>(var_2.x, var_2.x, var_2.x, 0u), vec4<u32>(78691u, 1u, 19039u, u_input.a.x), vec4<bool>(var_0.a.x, true, true, var_0.a.x)), vec4<u32>(1u, 1u, 1u, 1u)))));
}

fn func_8(arg_0: Struct_5, arg_1: i32, arg_2: vec3<bool>, arg_3: Struct_3) -> Struct_4 {
    global0 = array<i32, 20>();
    let var_0 = _wgslsmith_add_i32(-(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.a.b.x, u_input.b.x, -1i, arg_0.a.b.x), vec4<i32>(u_input.b.x, 51032i, arg_0.a.b.x, arg_1)) >> (u_input.a.x % 32u)), 4086i << (arg_0.b.b % 32u));
    var var_1 = func_4(vec2<bool>(1i >= reverseBits(_wgslsmith_dot_vec3_i32(u_input.b.wwz, vec3<i32>(arg_3.b.x, -1i, 15557i))), arg_0.b.a), arg_0.a.c.zz, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(899f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -971f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(463f - arg_0.a.c.x) - 557f)))), abs(reverseBits(_wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.b.b, arg_0.c, arg_0.b.b, 3408u), vec4<u32>(arg_0.b.b, u_input.a.x, u_input.a.x, arg_0.b.b)), func_3()))));
    let var_2 = false;
    var_1 = vec4<bool>(true, _wgslsmith_clamp_i32(~(arg_0.a.b.x << (1u % 32u)), _wgslsmith_sub_i32(u_input.b.x, arg_1), u_input.b.x) >= _wgslsmith_dot_vec3_i32(arg_0.a.b.yzz, ~vec3<i32>(31986i, arg_1, 14923i)), !arg_0.b.a, arg_2.x);
    return Struct_4(true, _wgslsmith_clamp_u32(func_7(arg_3).b.b, u_input.a.x, func_3().x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 20>();
    var var_0 = func_8(func_7(Struct_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)), select(vec4<i32>(-2147483647i, u_input.b.x, u_input.b.x, u_input.b.x), vec4<i32>(2147483647i, u_input.b.x, -2147483647i, -2147483647i), vec4<bool>(true, false, false, false)) ^ u_input.b, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(func_1(global0[_wgslsmith_index_u32(u_input.a.x, 20u)])))))), _wgslsmith_add_i32(global0[_wgslsmith_index_u32(u_input.a.x, 20u)], -(firstTrailingBit(-45991i) | (global0[_wgslsmith_index_u32(u_input.a.x, 20u)] & u_input.b.x))), !vec3<bool>(true, true, 2147483647i == _wgslsmith_clamp_i32(u_input.b.x, -13575i, u_input.b.x)), func_7(func_7(Struct_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-662f, -577f)), vec4<i32>(-1i, 23753i, global0[_wgslsmith_index_u32(u_input.a.x, 20u)], u_input.b.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1993f, -616f, -739f)))).a).a);
    var_0 = func_8(Struct_5(func_2(var_0.a | true).a, Struct_4(true, _wgslsmith_sub_u32(~u_input.a.x, ~1u)), u_input.a.x), 1i, select(select(!(!vec3<bool>(var_0.a, true, true)), select(vec3<bool>(false, var_0.a, true), !vec3<bool>(false, var_0.a, var_0.a), !vec3<bool>(var_0.a, var_0.a, var_0.a)), true), !(!func_4(vec2<bool>(false, var_0.a), vec2<f32>(597f, -560f), -3585f, vec4<u32>(u_input.a.x, var_0.b, var_0.b, u_input.a.x)).zyx), !func_2(true).b.a), func_7(func_2(~var_0.b < (32218u & var_0.b)).a).a);
    let var_1 = any(vec3<bool>(true, var_0.a, true));
    var var_2 = Struct_4(false, ~4294967295u);
    let var_3 = var_1;
    var_0 = func_2(var_1).b;
    let x = u_input.a;
    s_output = StorageBuffer(abs(u_input.a), vec4<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.b.x, 1i, -20620i, -1i), u_input.b), -28695i), max(-u_input.b.x >> (0u % 32u), -11993i), _wgslsmith_dot_vec4_i32(min(-u_input.b, u_input.b), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b.x, -43332i, 2147483647i, global0[_wgslsmith_index_u32(u_input.a.x, 20u)]), u_input.b, vec4<i32>(1i, u_input.b.x, 49702i, 1i)) << (abs(vec4<u32>(var_2.b, 17664u, 107193u, 0u)) % vec4<u32>(32u))), i32(-1i) * -14612i), select(~firstLeadingBit(vec3<u32>(21333u, u_input.a.x, var_0.b)), min(~(~vec3<u32>(u_input.a.x, var_2.b, 1u)), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, 44237u, u_input.a.x) >> (vec3<u32>(4981u, 5888u, u_input.a.x) % vec3<u32>(32u)), vec3<u32>(var_2.b, 20378u, 28996u))), !(u_input.a.x > _wgslsmith_add_u32(var_2.b, 4294967295u))));
}

