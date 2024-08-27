struct Struct_1 {
    a: vec2<u32>,
    b: vec3<bool>,
    c: f32,
    d: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec2<f32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: vec4<u32>,
    c: vec4<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: i32 = i32(-2147483648);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: u32) -> vec4<i32> {
    let var_0 = vec3<i32>(_wgslsmith_add_i32(-1i, ~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, -8967i, u_input.a.x), vec4<i32>(-1i, 0i, u_input.a.x, -84939i)) ^ 36964i), -reverseBits(-16687i), -83595i >> (0u % 32u));
    let var_1 = _wgslsmith_clamp_u32(_wgslsmith_add_u32(u_input.b.x, firstLeadingBit(4294967295u)), ~(~(arg_0.a.a.x >> (arg_0.a.a.x % 32u))) >> (abs(~select(50771u, arg_1, arg_0.a.b.x)) % 32u), 1u & (0u | (~arg_0.a.a.x >> ((arg_1 << (arg_0.a.a.x % 32u)) % 32u))));
    let var_2 = Struct_1(u_input.b, vec3<bool>(true, true & ((arg_0.a.d.x <= 1000f) == true), arg_0.a.b.x), 894f, _wgslsmith_f_op_vec3_f32(-arg_0.a.d));
    global1 = 2147483647i;
    let var_3 = Struct_1(~vec2<u32>(1u, arg_1), select(var_2.b, vec3<bool>(true, all(select(vec2<bool>(global0.x, true), vec2<bool>(global0.x, arg_0.a.b.x), vec2<bool>(global0.x, arg_0.a.b.x))), !(!var_2.b.x)), arg_0.a.b), 216f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(arg_0.a.d + var_2.d), _wgslsmith_f_op_vec3_f32(var_2.d + vec3<f32>(var_2.d.x, var_2.d.x, var_2.d.x)))), vec3<f32>(_wgslsmith_f_op_f32(-1474f * var_2.d.x), arg_0.a.d.x, -170f))));
    return -(vec4<i32>(u_input.a.x >> (arg_0.a.a.x % 32u), 31518i, _wgslsmith_sub_i32(1i, var_0.x), -21638i) | _wgslsmith_mult_vec4_i32(vec4<i32>(var_0.x, 0i, 36775i, -112520i) | vec4<i32>(u_input.a.x, var_0.x, -1i, 2147483647i), -vec4<i32>(u_input.a.x, u_input.a.x, -2147483647i, var_0.x))) | _wgslsmith_add_vec4_i32(vec4<i32>(firstTrailingBit(select(var_0.x, var_0.x, true)), firstLeadingBit(_wgslsmith_mod_i32(27857i, var_0.x)), var_0.x, _wgslsmith_mod_i32(-1i, u_input.a.x) ^ _wgslsmith_mult_i32(u_input.a.x, -1i)), _wgslsmith_add_vec4_i32(select(vec4<i32>(u_input.a.x, -1i, -2147483647i, 3311i), _wgslsmith_add_vec4_i32(vec4<i32>(23290i, var_0.x, 2147483647i, var_0.x), vec4<i32>(0i, -1i, -48428i, var_0.x)), var_3.b.x), -(vec4<i32>(var_0.x, -35795i, 1i, var_0.x) | vec4<i32>(var_0.x, u_input.a.x, 1i, 0i))));
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_2) -> Struct_1 {
    let var_0 = Struct_2(arg_1.a);
    let var_1 = Struct_4((_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.c + 2327f) - 1711f) >= _wgslsmith_f_op_f32(_wgslsmith_div_f32(-704f, 1847f) + _wgslsmith_f_op_f32(step(arg_1.a.d.x, 2095f)))) && any(vec4<bool>(arg_1.a.b.x, all(vec4<bool>(arg_1.a.b.x, false, global0.x, true)), true, arg_0.x != -1238f)), abs(~vec4<u32>(4294967295u, 0u, u_input.b.x, 22968u)), vec4<i32>(-1i) * -_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, 76904i, u_input.a.x, u_input.a.x) >> (vec4<u32>(60876u, 4294967295u, arg_1.a.a.x, 15051u) % vec4<u32>(32u)), func_3(Struct_2(var_0.a), arg_1.a.a.x), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, -28075i, 9665i, u_input.a.x), vec4<i32>(u_input.a.x, -18981i, u_input.a.x, -18160i))), Struct_1(~u_input.b, var_0.a.b, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0.x + _wgslsmith_div_f32(arg_0.x, 619f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(860f, arg_0.x, arg_0.x)))))));
    global1 = 23605i;
    let var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d.d.x))));
    var var_3 = Struct_1(var_1.b.zz, vec3<bool>(any(var_1.d.b.zx), !any(!vec4<bool>(true, true, var_0.a.b.x, true)), false), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-618f, var_2)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.c, var_0.a.d.x, -1000f)))), vec3<f32>(_wgslsmith_div_f32(var_2, -2452f), _wgslsmith_f_op_f32(trunc(arg_0.x)), _wgslsmith_f_op_f32(var_1.d.d.x * -483f))))));
    return Struct_1(~select(vec2<u32>(arg_1.a.a.x, 75313u), ~arg_1.a.a, var_3.b.yy) | _wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.b.x, var_1.b.x), select(u_input.b, vec2<u32>(1u, u_input.b.x), vec2<bool>(false, var_1.d.b.x))), arg_1.a.a, var_3.a), select(vec3<bool>(var_1.c.x != ~u_input.a.x, all(!vec3<bool>(true, global0.x, var_0.a.b.x)), false), vec3<bool>(true, true, all(select(vec2<bool>(global0.x, var_0.a.b.x), var_3.b.yy, vec2<bool>(true, var_0.a.b.x)))), var_0.a.b), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1604f * _wgslsmith_f_op_f32(step(-771f, var_0.a.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1128f, -783f)) - -159f) * _wgslsmith_div_f32(var_0.a.c, _wgslsmith_f_op_f32(var_3.c - var_0.a.c)))), arg_1.a.d);
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: Struct_4, arg_3: Struct_1) -> bool {
    let var_0 = _wgslsmith_div_u32(arg_2.b.x, 4489u);
    let var_1 = arg_2.d.b.yy;
    var var_2 = u_input.a.x << (arg_3.a.x % 32u);
    var var_3 = !vec4<bool>(1u < func_2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1523f, arg_3.c, -316f, arg_0.d.x), vec4<f32>(arg_0.d.x, -1825f, arg_3.c, arg_3.d.x), arg_1)), Struct_2(arg_0)).a.x, !any(vec2<bool>(true, true)), false, global0.x || false);
    var_2 = abs(_wgslsmith_clamp_i32(select(-26649i | ~arg_2.c.x, u_input.a.x >> ((arg_0.a.x | arg_0.a.x) % 32u), var_1.x), u_input.a.x, u_input.a.x));
    return true;
}

fn func_1() -> f32 {
    global0 = !vec2<bool>(func_4(func_2(vec4<f32>(-596f, -1073f, -1050f, -225f), Struct_2(Struct_1(vec2<u32>(30442u, u_input.b.x), vec3<bool>(global0.x, global0.x, global0.x), 325f, vec3<f32>(953f, -338f, -803f)))), true, Struct_4(true, vec4<u32>(1u, 94473u, u_input.b.x, 780u), vec4<i32>(u_input.a.x, u_input.a.x, 70522i, 4088i), Struct_1(vec2<u32>(u_input.b.x, 63414u), vec3<bool>(global0.x, false, global0.x), 777f, vec3<f32>(704f, 1768f, -429f))), func_2(vec4<f32>(-284f, 153f, 1613f, -100f), Struct_2(Struct_1(vec2<u32>(4294967295u, u_input.b.x), vec3<bool>(false, true, global0.x), -1899f, vec3<f32>(642f, 691f, 1000f))))) || (0u >= firstTrailingBit(11387u)), _wgslsmith_f_op_f32(step(-1000f, -157f)) > -773f);
    var var_0 = Struct_1(select(max(~vec2<u32>(4926u, u_input.b.x), ~u_input.b) | select(reverseBits(u_input.b), ~u_input.b, true), vec2<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b.x, 4294967295u), u_input.b), ~u_input.b.x), !vec2<bool>(false, u_input.b.x == u_input.b.x)), !vec3<bool>(any(vec2<bool>(global0.x, global0.x)), true, global0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1959f * 1123f))), -1987f, false)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1084f, 1285f)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-790f, 376f, 337f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(482f + -1000f), _wgslsmith_f_op_f32(f32(-1f) * -1473f), 234f))));
    var var_1 = 122f;
    var var_2 = Struct_4(!var_0.b.x, firstLeadingBit(~abs(abs(vec4<u32>(var_0.a.x, 10396u, var_0.a.x, 1u)))), vec4<i32>(u_input.a.x & 1i, _wgslsmith_mod_i32(~u_input.a.x, ~u_input.a.x), _wgslsmith_sub_i32(u_input.a.x, ~u_input.a.x) >> (u_input.b.x % 32u), u_input.a.x | u_input.a.x), func_2(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_0.c), _wgslsmith_f_op_f32(-981f * var_0.d.x), 222f, _wgslsmith_f_op_f32(-401f + var_0.d.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(616f, var_0.c, 1000f, 1180f), vec4<f32>(var_0.c, -1027f, -1000f, var_0.c))))), Struct_2(func_2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.d.x, -931f, var_0.c, var_0.c), vec4<f32>(1000f, 401f, 231f, -1250f), true)), Struct_2(Struct_1(vec2<u32>(var_0.a.x, var_0.a.x), vec3<bool>(true, true, global0.x), var_0.c, var_0.d))))));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_2.d.d.x, -1052f)))))) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-408f, var_0.c)) - _wgslsmith_f_op_f32(-var_2.d.c)), 1000f)));
    return -1000f;
}

fn func_5(arg_0: vec4<f32>, arg_1: vec4<f32>) -> Struct_4 {
    var var_0 = arg_0.zyz;
    var var_1 = func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_1))), Struct_2(Struct_1(~(~vec2<u32>(61178u, 108356u)), func_2(arg_0, Struct_2(Struct_1(u_input.b, vec3<bool>(global0.x, false, true), 1229f, arg_1.xyx))).b, _wgslsmith_f_op_f32(ceil(257f)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(floor(arg_0.zzz)))))));
    var var_2 = Struct_4(!(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-256f, 1363f)) < _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -707f)))), ~vec4<u32>(~countOneBits(4294967295u), u_input.b.x, 1u, u_input.b.x), _wgslsmith_div_vec4_i32(abs(vec4<i32>(i32(-1i) * -39941i, u_input.a.x, u_input.a.x, i32(-1i) * -1i)), vec4<i32>(u_input.a.x << (_wgslsmith_clamp_u32(3475u, 107948u, 46199u) % 32u), -countOneBits(-38793i), u_input.a.x, abs(u_input.a.x))), func_2(arg_1, Struct_2(func_2(vec4<f32>(363f, arg_1.x, 349f, -700f), Struct_2(Struct_1(var_1.a, vec3<bool>(var_1.b.x, false, false), 1000f, vec3<f32>(-497f, 1226f, -1000f)))))));
    let var_3 = Struct_3(_wgslsmith_mult_vec4_i32(-vec4<i32>(var_2.c.x, ~4776i, 0i, func_3(Struct_2(var_2.d), 12002u).x), countOneBits(-vec4<i32>(u_input.a.x, 41062i, var_2.c.x, var_2.c.x) << (vec4<u32>(var_1.a.x, var_1.a.x, u_input.b.x, 28114u) % vec4<u32>(32u)))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.x, _wgslsmith_f_op_f32(-var_2.d.d.x)), func_2(arg_1, Struct_2(func_2(vec4<f32>(-788f, 650f, -177f, var_0.x), Struct_2(Struct_1(vec2<u32>(86270u, var_2.b.x), var_1.b, -1336f, var_1.d))))).d.zz, true)), var_2.d, func_2(vec4<f32>(_wgslsmith_f_op_f32(var_1.d.x - 1803f), 1643f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c) * _wgslsmith_f_op_f32(abs(-519f))), -656f), Struct_2(Struct_1(~vec2<u32>(var_2.d.a.x, 39274u), !vec3<bool>(global0.x, false, var_2.a), 1105f, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-636f, arg_0.x, -644f))))));
    let var_4 = Struct_2(func_2(_wgslsmith_f_op_vec4_f32(-arg_0), Struct_2(var_3.c)));
    return Struct_4(true, _wgslsmith_clamp_vec4_u32(var_2.b, vec4<u32>(1u, 29401u, ~(~var_3.d.a.x), ~(~u_input.b.x)), ~vec4<u32>(~1u, 1u, max(24816u, 4294967295u), min(var_2.b.x, var_2.b.x))), ~(-countOneBits(~vec4<i32>(u_input.a.x, var_3.a.x, 2147483647i, var_2.c.x))), Struct_1(var_4.a.a, vec3<bool>(false, !(var_4.a.b.x & false), var_2.d.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x - arg_1.x) + var_0.x) * _wgslsmith_f_op_f32(1000f + 528f)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.x, var_1.d.x, var_4.a.d.x)))), var_2.d.d))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1f, 1f, 1f, 1f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(2055f, 919f, -2937f, 1000f), vec4<f32>(875f, -527f, -707f, 1683f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1051f, -198f, -1590f, 1332f)))), abs(u_input.a.x) >= ~1i)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(-1649f, -330f)), _wgslsmith_f_op_f32(-922f - 1057f), _wgslsmith_f_op_f32(trunc(983f)), _wgslsmith_f_op_f32(func_1())) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1419f, 958f, 1000f, 190f) + vec4<f32>(-1725f, -1439f, 670f, 970f)) - vec4<f32>(1463f, -1534f, -205f, 401f))), vec4<f32>(-1248f, 1f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-810f)), -255f)), 297f))));
    var var_1 = func_5(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.d.d.x, 1563f, -969f, 852f))) - vec4<f32>(_wgslsmith_f_op_f32(step(var_0.d.d.x, 1302f)), -135f, _wgslsmith_f_op_f32(min(323f, -2001f)), _wgslsmith_f_op_f32(f32(-1f) * -987f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1427f, _wgslsmith_f_op_f32(ceil(-383f)), _wgslsmith_div_f32(-550f, var_0.d.d.x), _wgslsmith_f_op_f32(-var_0.d.d.x)) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(242f, var_0.d.c, var_0.d.c, 327f)), vec4<f32>(var_0.d.c, 1120f, -1067f, 1000f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.d.c, 971f, -586f, var_0.d.d.x), vec4<f32>(var_0.d.d.x, var_0.d.c, var_0.d.c, var_0.d.d.x))) * vec4<f32>(var_0.d.d.x, -1000f, var_0.d.c, -1630f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.d.d.x, var_0.d.c, 1008f, -1000f) + vec4<f32>(606f, var_0.d.d.x, 694f, 339f)))))).d;
    global1 = u_input.a.x;
    var var_2 = ~var_0.c.x;
    var var_3 = -abs(_wgslsmith_add_i32(-var_0.c.x, i32(-1i) * -52500i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(var_0.c.x, _wgslsmith_clamp_i32(-1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, var_0.c.x, -2147483647i, 0i), vec4<i32>(2147483647i, u_input.a.x, u_input.a.x, u_input.a.x)), abs(max(u_input.a.x, 0i)))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-var_0.d.d.xz))), vec4<f32>(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1467f * var_1.c)) - 1f), var_1.c, -652f));
}

