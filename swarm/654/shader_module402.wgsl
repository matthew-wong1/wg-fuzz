struct Struct_1 {
    a: vec3<f32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: Struct_1,
    d: vec3<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: u32,
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

var<private> global0: vec3<bool> = vec3<bool>(false, false, true);

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: u32, arg_1: vec2<bool>) -> vec3<f32> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-800f, -146f, -1545f), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-344f, 1000f, -825f), _wgslsmith_f_op_vec3_f32(vec3<f32>(553f, 201f, -326f) - vec3<f32>(-989f, 1562f, 1372f)), arg_1.x || arg_1.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 1720f, 809f) * vec3<f32>(2757f, 677f, -158f)) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-249f, 1546f, -1152f), vec3<f32>(-1987f, 212f, -544f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(922f, 1646f, 1376f))))), arg_0 < ~u_input.c)), select(_wgslsmith_mod_vec2_u32(u_input.b.xx, ~(~vec2<u32>(33733u, 51014u))), abs(select(u_input.b.zy, u_input.b.yx, global0.xy) ^ ~u_input.b.yy), arg_1.x));
    global0 = select(select(vec3<bool>(select(arg_1.x | false, false, true), true, arg_1.x), !select(!vec3<bool>(arg_1.x, global0.x, false), vec3<bool>(true, true, true), any(vec2<bool>(false, global0.x))), false), vec3<bool>(!any(vec4<bool>(true, false, arg_1.x, true)), (select(1u, arg_0, arg_1.x) <= (arg_0 ^ u_input.b.x)) || !all(vec3<bool>(true, true, arg_1.x)), true), select(arg_1.x, all(!vec3<bool>(arg_1.x, true, true)), !any(vec4<bool>(true, false, arg_1.x, true))));
    global0 = select(select(vec3<bool>(all(!vec4<bool>(global0.x, false, arg_1.x, false)), !all(vec4<bool>(true, true, true, false)), any(select(vec4<bool>(global0.x, true, arg_1.x, true), vec4<bool>(global0.x, global0.x, global0.x, true), false))), vec3<bool>(arg_1.x && all(global0.xy), false, false), !vec3<bool>(arg_1.x, true, true)), vec3<bool>(false, all(vec4<bool>(true, true, arg_1.x, global0.x)), true), select(select(select(select(vec3<bool>(global0.x, true, true), vec3<bool>(false, arg_1.x, true), vec3<bool>(global0.x, true, global0.x)), select(vec3<bool>(global0.x, true, true), vec3<bool>(true, false, false), global0.x), false), select(select(vec3<bool>(false, global0.x, false), vec3<bool>(arg_1.x, false, true), vec3<bool>(global0.x, true, false)), vec3<bool>(arg_1.x, arg_1.x, false), select(vec3<bool>(global0.x, arg_1.x, true), vec3<bool>(global0.x, global0.x, true), arg_1.x)), !select(vec3<bool>(false, false, arg_1.x), vec3<bool>(global0.x, false, false), vec3<bool>(false, true, true))), select(!select(vec3<bool>(arg_1.x, arg_1.x, global0.x), vec3<bool>(global0.x, global0.x, true), true), !vec3<bool>(global0.x, true, true), !vec3<bool>(true, arg_1.x, true)), select(select(select(vec3<bool>(global0.x, global0.x, arg_1.x), vec3<bool>(global0.x, true, arg_1.x), vec3<bool>(true, false, false)), vec3<bool>(false, arg_1.x, false), select(vec3<bool>(true, arg_1.x, true), vec3<bool>(global0.x, false, false), vec3<bool>(arg_1.x, false, false))), select(vec3<bool>(arg_1.x, global0.x, global0.x), vec3<bool>(true, global0.x, false), select(vec3<bool>(false, false, global0.x), vec3<bool>(arg_1.x, arg_1.x, global0.x), true)), true)));
    global0 = vec3<bool>(arg_1.x, all(select(vec2<bool>(true, true == global0.x), vec2<bool>(true, true), any(vec3<bool>(global0.x, arg_1.x, false)))), false);
    let var_1 = Struct_3(~(~_wgslsmith_dot_vec2_u32(~vec2<u32>(48467u, 4294967295u), ~vec2<u32>(var_0.b.x, arg_0))));
    return var_0.a;
}

fn func_2(arg_0: Struct_2) -> Struct_1 {
    global0 = select(!select(vec3<bool>(global0.x, true, false), vec3<bool>(global0.x != true, true, global0.x), !vec3<bool>(global0.x, false, global0.x)), select(!(!(!vec3<bool>(global0.x, global0.x, false))), vec3<bool>(false, global0.x, true), vec3<bool>(true, global0.x & global0.x, any(global0.xy))), any(global0.zy));
    global0 = vec3<bool>(global0.x, select(!(!(true | global0.x)), true, global0.x), all(global0.yx) | global0.x);
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(~arg_0.e.b.x, vec2<bool>(!(false != global0.x), !(global0.x | global0.x)))), vec3<f32>(3221f, 1081f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(539f - arg_0.c.a.x)) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(190f - 1197f))))));
    var var_1 = i32(-1i) * -1i;
    var var_2 = Struct_4(arg_0, false);
    return arg_0.b;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec4<u32>) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.x));
    var var_1 = !(global0.x & true);
    var var_2 = _wgslsmith_add_vec2_u32(vec2<u32>(arg_0.a, (arg_1.b.x << (1u % 32u)) & 46078u) | _wgslsmith_add_vec2_u32(func_2(Struct_2(vec4<f32>(arg_1.a.x, arg_1.a.x, arg_1.a.x, -880f), Struct_1(arg_1.a, u_input.b.zz), Struct_1(vec3<f32>(-2100f, -985f, 1076f), vec2<u32>(u_input.c, arg_0.a)), vec3<u32>(arg_0.a, 67249u, 87781u), Struct_1(arg_1.a, u_input.b.xx))).b, arg_1.b), ~(~abs(_wgslsmith_mult_vec2_u32(arg_2.zy, vec2<u32>(arg_0.a, arg_0.a)))));
    let var_3 = min(max(vec4<i32>(u_input.a.x, 0i, _wgslsmith_mod_i32(-8490i, u_input.a.x), -u_input.a.x) ^ ~select(vec4<i32>(u_input.a.x, u_input.a.x, 2147483647i, -20489i), vec4<i32>(25530i, 56822i, -1i, u_input.a.x), vec4<bool>(global0.x, false, false, false)), vec4<i32>(select(1i << (0u % 32u), u_input.a.x, true), firstLeadingBit(_wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x))), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 19920i, 1i, 32306i), vec4<i32>(56550i, u_input.a.x, u_input.a.x, u_input.a.x)), u_input.a.x)), vec4<i32>(43533i, 11332i, ~min(2147483647i, abs(-2147483647i)), ~(-51624i)));
    var var_4 = func_2(Struct_2(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-547f, _wgslsmith_f_op_f32(arg_1.a.x - arg_1.a.x), _wgslsmith_f_op_f32(trunc(604f)), _wgslsmith_f_op_f32(sign(arg_1.a.x))), _wgslsmith_div_vec4_f32(vec4<f32>(arg_1.a.x, -906f, -2334f, arg_1.a.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1021f, 875f, -1000f, arg_1.a.x) + vec4<f32>(315f, arg_1.a.x, arg_1.a.x, 1008f))))), func_2(Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(774f, arg_1.a.x, arg_1.a.x, arg_1.a.x)), func_2(Struct_2(vec4<f32>(699f, arg_1.a.x, arg_1.a.x, arg_1.a.x), arg_1, arg_1, u_input.b, arg_1)), func_2(Struct_2(vec4<f32>(-117f, 998f, 794f, -1448f), Struct_1(arg_1.a, u_input.b.yx), Struct_1(arg_1.a, vec2<u32>(arg_2.x, arg_0.a)), vec3<u32>(u_input.b.x, u_input.c, 4294967295u), Struct_1(vec3<f32>(arg_1.a.x, arg_1.a.x, -1000f), arg_2.zx))), vec3<u32>(u_input.c, u_input.c, var_2.x), func_2(Struct_2(vec4<f32>(arg_1.a.x, arg_1.a.x, 1000f, arg_1.a.x), arg_1, arg_1, u_input.b, arg_1)))), arg_1, vec3<u32>(arg_0.a, max(arg_2.x, firstLeadingBit(35825u)), u_input.c), Struct_1(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(arg_1.a + arg_1.a))), _wgslsmith_mult_vec2_u32(arg_2.xx, _wgslsmith_mult_vec2_u32(vec2<u32>(var_2.x, 1u), u_input.b.xy)))));
    return Struct_4(Struct_2(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-545f - arg_1.a.x), -845f, _wgslsmith_f_op_f32(round(1085f)), _wgslsmith_f_op_f32(trunc(var_4.a.x))), vec4<f32>(var_4.a.x, var_4.a.x, var_4.a.x, 448f)), func_2(Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a.x, var_4.a.x, arg_1.a.x, var_4.a.x) - vec4<f32>(-649f, -838f, var_4.a.x, -1111f)), Struct_1(vec3<f32>(arg_1.a.x, -1742f, 1000f), vec2<u32>(1u, arg_1.b.x)), Struct_1(vec3<f32>(arg_1.a.x, arg_1.a.x, var_4.a.x), vec2<u32>(1u, 42553u)), _wgslsmith_add_vec3_u32(arg_2.xzw, vec3<u32>(arg_1.b.x, arg_0.a, 13825u)), func_2(Struct_2(vec4<f32>(arg_1.a.x, var_4.a.x, var_4.a.x, var_4.a.x), Struct_1(var_4.a, arg_1.b), Struct_1(arg_1.a, vec2<u32>(30651u, 4294967295u)), u_input.b, arg_1)))), Struct_1(vec3<f32>(_wgslsmith_div_f32(-1000f, var_4.a.x), _wgslsmith_f_op_f32(-arg_1.a.x), -1292f), firstTrailingBit(var_4.b)), _wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(arg_2.zzw, vec3<u32>(50949u, arg_0.a, u_input.b.x)), vec3<u32>(~1u, 30755u, abs(arg_1.b.x))), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(arg_1.a)) * vec3<f32>(var_4.a.x, var_4.a.x, arg_1.a.x)), select(vec2<u32>(50786u, var_4.b.x), vec2<u32>(0u, 0u), vec2<bool>(true, true)))), !select(select(true, global0.x, true) & true, global0.x, global0.x));
}

fn func_5(arg_0: f32, arg_1: Struct_4, arg_2: Struct_3, arg_3: Struct_1) -> Struct_1 {
    var var_0 = func_4(arg_2, func_2(func_4(Struct_3(arg_3.b.x), arg_3, (vec4<u32>(arg_1.a.c.b.x, 20047u, 60868u, arg_3.b.x) >> (vec4<u32>(0u, arg_2.a, 5598u, arg_3.b.x) % vec4<u32>(32u))) << (min(vec4<u32>(0u, arg_2.a, arg_1.a.b.b.x, 124843u), vec4<u32>(arg_3.b.x, arg_3.b.x, 0u, u_input.c)) % vec4<u32>(32u))).a), firstTrailingBit(~vec4<u32>(25346u, arg_2.a, select(arg_1.a.e.b.x, arg_2.a, false), ~1u))).a.c.b;
    let var_1 = u_input.b.zy;
    global0 = vec3<bool>(true, global0.x, arg_3.b.x == 13394u);
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-arg_1.a.e.a), ~vec2<u32>(~arg_2.a, ~4294967295u));
    var var_3 = func_4(Struct_3(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(var_2.b.x, arg_2.a), 77346u, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.a.c.b.x, arg_2.a, arg_2.a), arg_1.a.d), ~65882u), vec4<u32>(0u ^ arg_2.a, ~9466u, 1u, 33109u))), Struct_1(_wgslsmith_f_op_vec3_f32(-arg_1.a.e.a), func_2(arg_1.a).b), vec4<u32>(~(~arg_2.a), u_input.b.x, ~var_0.x, arg_2.a));
    return var_2;
}

fn func_6(arg_0: Struct_2) -> Struct_4 {
    let var_0 = min(_wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(u_input.a.x, u_input.a.x, 0i)), -8178i << (arg_0.b.b.x % 32u)), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), u_input.a.xy), min(firstLeadingBit(u_input.a.x), 1i)), select(~_wgslsmith_mult_vec3_i32(u_input.a, vec3<i32>(u_input.a.x, u_input.a.x, -2147483647i)), reverseBits(-u_input.a), !select(vec3<bool>(global0.x, true, global0.x), vec3<bool>(global0.x, false, true), vec3<bool>(false, global0.x, global0.x)))), _wgslsmith_div_vec3_i32(-u_input.a, vec3<i32>(~firstLeadingBit(u_input.a.x), -1i, _wgslsmith_mod_i32(-2147483647i, ~u_input.a.x))));
    global0 = !vec3<bool>(all(select(select(vec2<bool>(true, true), vec2<bool>(global0.x, true), false), vec2<bool>(false, global0.x), global0.x && false)), any(vec2<bool>(true, true)), all(!select(vec2<bool>(true, global0.x), global0.zx, false)));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(2198f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b.a.x) + arg_0.b.a.x), true)), _wgslsmith_div_f32(629f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1550f * arg_0.b.a.x)))))) - _wgslsmith_f_op_f32(arg_0.b.a.x * arg_0.a.x));
    return Struct_4(Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_0.a + arg_0.a), _wgslsmith_f_op_vec4_f32(max(arg_0.a, arg_0.a))) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-arg_0.a), vec4<f32>(arg_0.a.x, 1164f, -594f, -1546f)))), Struct_1(arg_0.b.a, u_input.b.zz), Struct_1(func_5(_wgslsmith_f_op_f32(-492f * -795f), Struct_4(Struct_2(arg_0.a, Struct_1(arg_0.e.a, u_input.b.yy), arg_0.c, vec3<u32>(17988u, 90328u, arg_0.b.b.x), Struct_1(vec3<f32>(543f, -528f, arg_0.a.x), u_input.b.xz)), true), Struct_3(arg_0.b.b.x), arg_0.c).a, select(vec2<u32>(21034u, arg_0.d.x), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b.x, 44289u), u_input.b.yz), global0.x)), u_input.b, func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.x) - -475f), Struct_4(func_4(Struct_3(10661u), Struct_1(vec3<f32>(1463f, arg_0.c.a.x, arg_0.b.a.x), arg_0.b.b), vec4<u32>(0u, 93811u, u_input.b.x, u_input.c)).a, global0.x), Struct_3(_wgslsmith_dot_vec3_u32(vec3<u32>(19989u, u_input.b.x, 36239u), u_input.b)), Struct_1(_wgslsmith_f_op_vec3_f32(-arg_0.a.wxz), vec2<u32>(0u, 36331u)))), firstTrailingBit(_wgslsmith_dot_vec3_i32(reverseBits(u_input.a), _wgslsmith_mod_vec3_i32(vec3<i32>(var_0.x, var_0.x, -36276i), vec3<i32>(var_0.x, var_0.x, -1i)))) == _wgslsmith_mod_i32(~u_input.a.x, -var_0.x));
}

fn func_1() -> vec3<bool> {
    let var_0 = false;
    var var_1 = u_input.b;
    var_1 = u_input.b;
    var var_2 = func_6(Struct_2(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(131f, -1000f, -924f, -1069f))), vec4<f32>(_wgslsmith_f_op_f32(682f + 383f), 2051f, _wgslsmith_f_op_f32(-2232f - 762f), _wgslsmith_div_f32(-1830f, -1000f)))), Struct_1(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(573f, -1000f, 362f)))), ~_wgslsmith_mod_vec2_u32(vec2<u32>(var_1.x, 4763u), vec2<u32>(var_1.x, var_1.x))), func_5(-1279f, func_4(Struct_3(var_1.x), func_2(Struct_2(vec4<f32>(174f, -265f, -412f, 472f), Struct_1(vec3<f32>(-1000f, 1190f, 496f), u_input.b.zx), Struct_1(vec3<f32>(761f, -1647f, 1545f), vec2<u32>(4294967295u, u_input.c)), vec3<u32>(3312u, u_input.c, u_input.b.x), Struct_1(vec3<f32>(-928f, -1337f, 1765f), vec2<u32>(u_input.b.x, var_1.x)))), vec4<u32>(var_1.x, 14398u, u_input.b.x, u_input.c)), Struct_3(var_1.x), Struct_1(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1115f, -1140f, 1000f))), vec2<u32>(73274u, u_input.b.x) << (var_1.yx % vec2<u32>(32u)))), ~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.c, 48697u, var_1.x), countOneBits(u_input.b)), func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(214f * -119f)), Struct_4(func_4(Struct_3(u_input.c), Struct_1(vec3<f32>(-706f, 861f, -1915f), u_input.b.xz), vec4<u32>(1u, u_input.c, var_1.x, 4294967295u)).a, u_input.a.x < u_input.a.x), Struct_3(u_input.b.x), func_2(Struct_2(vec4<f32>(681f, -1094f, 956f, -128f), Struct_1(vec3<f32>(409f, -608f, 992f), vec2<u32>(var_1.x, u_input.c)), Struct_1(vec3<f32>(684f, -518f, 1158f), var_1.yz), vec3<u32>(var_1.x, u_input.c, 4294967295u), Struct_1(vec3<f32>(748f, -1233f, -1050f), var_1.yx))))));
    var_2 = Struct_4(Struct_2(vec4<f32>(func_4(Struct_3(var_2.a.b.b.x), var_2.a.e, ~vec4<u32>(4294967295u, u_input.b.x, 8899u, 1u)).a.a.x, _wgslsmith_div_f32(func_6(Struct_2(var_2.a.a, Struct_1(vec3<f32>(862f, 588f, 1000f), var_1.zy), var_2.a.b, vec3<u32>(4294967295u, 1u, 89125u), var_2.a.b)).a.a.x, var_2.a.b.a.x), -1641f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-771f, var_2.a.e.a.x)))), var_2.a.e, var_2.a.b, vec3<u32>(1u, var_2.a.d.x, 49644u), func_5(func_6(Struct_2(var_2.a.a, var_2.a.b, var_2.a.e, var_2.a.d, var_2.a.b)).a.a.x, func_6(var_2.a), Struct_3(55134u), var_2.a.e)), var_2.b);
    return select(!vec3<bool>(var_0, !var_0, true), vec3<bool>(all(!vec3<bool>(true, var_2.b, false)), global0.x, true), !select(vec3<bool>(var_1.x == 4294967295u, var_2.b | var_2.b, func_6(var_2.a).b), !(!vec3<bool>(false, true, global0.x)), true));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = select(!select(!(!vec3<bool>(global0.x, true, global0.x)), vec3<bool>(true, any(vec3<bool>(global0.x, false, false)), global0.x), !all(vec3<bool>(global0.x, global0.x, global0.x))), func_1(), true);
    var var_0 = func_4(Struct_3(115387u), func_5(_wgslsmith_f_op_f32(sign(1f)), Struct_4(func_4(Struct_3(1u), func_5(1039f, Struct_4(Struct_2(vec4<f32>(2041f, -293f, 178f, -585f), Struct_1(vec3<f32>(1140f, 1012f, 751f), u_input.b.zz), Struct_1(vec3<f32>(-3305f, 855f, 684f), u_input.b.xy), u_input.b, Struct_1(vec3<f32>(735f, 1000f, -133f), u_input.b.yy)), false), Struct_3(u_input.c), Struct_1(vec3<f32>(-2145f, -528f, -576f), u_input.b.yz)), select(vec4<u32>(u_input.c, 41563u, 53316u, u_input.b.x), vec4<u32>(u_input.b.x, u_input.b.x, u_input.c, 1u), false)).a, any(func_1())), Struct_3(func_2(func_6(Struct_2(vec4<f32>(-726f, 625f, 281f, 309f), Struct_1(vec3<f32>(928f, 1554f, -283f), u_input.b.yy), Struct_1(vec3<f32>(-742f, -1094f, -152f), u_input.b.xz), vec3<u32>(u_input.b.x, 1u, 1u), Struct_1(vec3<f32>(-149f, -251f, -513f), u_input.b.yx))).a).b.x), func_2(func_4(Struct_3(u_input.b.x), func_2(Struct_2(vec4<f32>(-654f, 869f, 1016f, -202f), Struct_1(vec3<f32>(-663f, 930f, 920f), vec2<u32>(u_input.c, 0u)), Struct_1(vec3<f32>(505f, -2379f, -164f), vec2<u32>(u_input.c, u_input.c)), u_input.b, Struct_1(vec3<f32>(424f, 325f, 531f), vec2<u32>(40213u, 1u)))), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, u_input.c, 4294967295u, 25404u), vec4<u32>(1u, u_input.c, u_input.c, u_input.b.x))).a)), _wgslsmith_div_vec4_u32(~(~_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 72090u, u_input.b.x, 55699u), vec4<u32>(33448u, u_input.c, u_input.b.x, u_input.c))), _wgslsmith_clamp_vec4_u32(select(vec4<u32>(u_input.c, 261u, u_input.b.x, u_input.c), min(vec4<u32>(22322u, u_input.b.x, 38587u, u_input.b.x), vec4<u32>(u_input.c, 30581u, 14227u, 16880u)), true), abs(~vec4<u32>(62962u, 0u, u_input.b.x, 0u)), firstLeadingBit(vec4<u32>(u_input.b.x, 67929u, u_input.c, u_input.c) & vec4<u32>(u_input.b.x, u_input.c, 1u, u_input.c))))).a;
    let var_1 = Struct_3(~1u);
    var var_2 = countOneBits(reverseBits(vec2<u32>(var_1.a, var_0.b.b.x & var_1.a) << (~_wgslsmith_div_vec2_u32(vec2<u32>(var_0.e.b.x, 23011u), var_0.b.b) % vec2<u32>(32u))));
    var_0 = func_6(Struct_2(vec4<f32>(_wgslsmith_f_op_f32(-var_0.c.a.x), 1181f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(var_0.b.a.x, var_0.b.a.x)))), var_0.a.x), Struct_1(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(step(var_0.b.a, vec3<f32>(1000f, var_0.c.a.x, 1527f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.a.x, -1394f, 745f) * vec3<f32>(var_0.e.a.x, var_0.c.a.x, -260f)))), abs(~vec2<u32>(var_2.x, 55971u))), var_0.e, _wgslsmith_mod_vec3_u32(~u_input.b, ~vec3<u32>(var_0.d.x, var_2.x, var_2.x)), var_0.b)).a;
    var_2 = var_0.d.xx;
    var_0 = func_4(Struct_3(var_1.a), var_0.c, firstLeadingBit(reverseBits(vec4<u32>(u_input.c, 4468u, var_1.a, 19346u) << (vec4<u32>(u_input.c, var_0.b.b.x, 34570u, var_1.a) % vec4<u32>(32u))) >> ((_wgslsmith_sub_vec4_u32(vec4<u32>(0u, u_input.b.x, var_2.x, 50914u), vec4<u32>(var_0.d.x, 4294967295u, 9687u, var_0.c.b.x)) >> (_wgslsmith_div_vec4_u32(vec4<u32>(1u, u_input.c, var_0.e.b.x, var_2.x), vec4<u32>(var_0.d.x, 11959u, 1u, var_2.x)) % vec4<u32>(32u))) % vec4<u32>(32u)))).a;
    global0 = select(select(select(!select(vec3<bool>(global0.x, false, global0.x), vec3<bool>(true, global0.x, true), vec3<bool>(false, global0.x, global0.x)), !select(vec3<bool>(true, global0.x, true), vec3<bool>(false, true, false), vec3<bool>(global0.x, true, global0.x)), !(!vec3<bool>(global0.x, global0.x, true))), !select(vec3<bool>(false, global0.x, global0.x), vec3<bool>(global0.x, global0.x, global0.x), func_1()), global0.x), vec3<bool>(false, true, !func_4(var_1, Struct_1(vec3<f32>(var_0.e.a.x, var_0.e.a.x, 634f), u_input.b.zz), vec4<u32>(21344u, 71808u, 45410u, 4294967295u)).b), select(!func_1(), vec3<bool>(func_4(var_1, func_5(var_0.e.a.x, Struct_4(Struct_2(vec4<f32>(var_0.c.a.x, var_0.a.x, -342f, 364f), Struct_1(var_0.b.a, u_input.b.xx), var_0.b, u_input.b, Struct_1(vec3<f32>(var_0.b.a.x, var_0.c.a.x, 704f), vec2<u32>(var_1.a, var_2.x))), global0.x), Struct_3(u_input.c), var_0.c), _wgslsmith_sub_vec4_u32(vec4<u32>(34490u, var_2.x, u_input.c, 59429u), vec4<u32>(0u, 40177u, 4294967295u, 4294967295u))).b, true | global0.x, (-2147483647i == u_input.a.x) & global0.x), func_4(var_1, Struct_1(_wgslsmith_f_op_vec3_f32(-var_0.b.a), ~var_0.c.b), max(vec4<u32>(var_2.x, var_1.a, 4294967295u, var_1.a), vec4<u32>(var_0.d.x, 9666u, 4294967295u, 1u) >> (vec4<u32>(130386u, var_1.a, 74341u, 1u) % vec4<u32>(32u)))).b));
    let x = u_input.a;
    s_output = StorageBuffer(5942i);
}

