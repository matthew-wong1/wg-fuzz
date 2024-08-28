struct Struct_1 {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec3<f32>,
    d: f32,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: Struct_1,
    d: vec3<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
    c: u32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -53051i;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> u32 {
    let var_0 = vec3<u32>(u_input.c.x, 1u, 63623u);
    global0 = _wgslsmith_div_i32(u_input.a, -1i);
    var var_1 = u_input.d.x;
    var var_2 = ~vec4<u32>(_wgslsmith_dot_vec2_u32(~reverseBits(vec2<u32>(62620u, var_0.x)), _wgslsmith_mod_vec2_u32(~vec2<u32>(var_0.x, 40220u), vec2<u32>(u_input.c.x, 26812u))), _wgslsmith_div_u32(1u, _wgslsmith_dot_vec2_u32(max(var_0.xz, var_0.zy), vec2<u32>(var_0.x, 2296u))), 18147u, _wgslsmith_dot_vec4_u32(vec4<u32>(firstTrailingBit(0u), 0u, countOneBits(var_0.x), var_0.x ^ 1u), vec4<u32>(_wgslsmith_sub_u32(1522u, 1u), var_0.x | 3497u, 1489u, _wgslsmith_mod_u32(0u, 37356u))));
    var var_3 = _wgslsmith_f_op_f32(trunc(1f));
    return _wgslsmith_add_u32(1u, ~1827u);
}

fn func_2() -> vec3<f32> {
    global0 = -(~1i);
    let var_0 = vec3<u32>(_wgslsmith_mult_u32(9405u, ~(~u_input.c.x >> (~27604u % 32u))), ~max(select(_wgslsmith_mod_u32(14979u, 7250u), 0u, true), func_3() | 46532u), ~0u);
    var var_1 = Struct_2(u_input.a, ~1u, Struct_1(abs(abs(-vec2<i32>(u_input.a, u_input.d.x))), reverseBits(var_0.xy), vec3<f32>(1f, 336f, -1843f), -2503f), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-384f, 530f) - _wgslsmith_f_op_f32(select(742f, -1015f, false))) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1270f + 765f)))), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(1725f + -1398f)), Struct_1(max(vec2<i32>(max(u_input.a, -18307i), -2918i), vec2<i32>(u_input.a, 1i)), u_input.c.yy, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(836f, -283f, 181f)), vec3<f32>(695f, 2274f, 175f)) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-946f, -1020f, -140f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 1000f, 779f)))), -1317f));
    var var_2 = _wgslsmith_f_op_f32(var_1.d.x - 438f);
    var var_3 = 60348u;
    return vec3<f32>(-124f, -156f, 547f);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: u32) -> Struct_1 {
    var var_0 = !select(vec2<bool>(-1449f > _wgslsmith_f_op_f32(sign(-511f)), true), vec2<bool>(true, true), false);
    let var_1 = arg_0.e;
    var_0 = !select(vec2<bool>(!any(vec2<bool>(true, var_0.x)), var_0.x & (var_1.b.x >= arg_0.c.b.x)), select(!(!vec2<bool>(var_0.x, var_0.x)), vec2<bool>(!var_0.x, true), false), !select(true, var_0.x, true) & var_0.x);
    var_0 = vec2<bool>(!any(select(!vec3<bool>(true, var_0.x, true), !vec3<bool>(var_0.x, var_0.x, var_0.x), !vec3<bool>(var_0.x, var_0.x, var_0.x))), var_0.x);
    let var_2 = any(!select(vec3<bool>(var_0.x, true, true), select(!vec3<bool>(false, true, var_0.x), select(vec3<bool>(var_0.x, true, false), vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(false, false, true)), -1i != var_1.a.x), _wgslsmith_f_op_f32(-475f + 1691f) >= arg_0.e.c.x));
    return Struct_1(~vec2<i32>(var_1.a.x, arg_0.a), select(vec2<u32>(_wgslsmith_dot_vec4_u32(u_input.b & vec4<u32>(19129u, 4294967295u, 1u, 9678u), _wgslsmith_mod_vec4_u32(vec4<u32>(var_1.b.x, arg_0.b, arg_1.e.b.x, 13501u), vec4<u32>(u_input.b.x, arg_0.e.b.x, arg_1.c.b.x, arg_2))), 260u), _wgslsmith_clamp_vec2_u32(vec2<u32>(~arg_0.b, 1u), _wgslsmith_clamp_vec2_u32(countOneBits(arg_0.c.b), vec2<u32>(10784u, 0u), select(vec2<u32>(34830u, u_input.b.x), var_1.b, var_0.x)), countOneBits(~vec2<u32>(60660u, u_input.b.x))), select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(true, arg_0.e.a.x > 0i), var_0.x)), var_1.c, -2444f);
}

fn func_5(arg_0: Struct_2) -> i32 {
    global0 = _wgslsmith_mod_i32(_wgslsmith_sub_i32(-1i, arg_0.c.a.x), 2147483647i);
    var var_0 = 60762u;
    global0 = u_input.d.x;
    global0 = 1i & (_wgslsmith_clamp_i32(_wgslsmith_sub_i32(~84878i, -2147483647i), arg_0.a, _wgslsmith_clamp_i32(-arg_0.a, 1i, -u_input.d.x)) >> (~max(max(arg_0.b, u_input.b.x), 4294967295u) % 32u));
    var var_1 = false;
    return arg_0.c.a.x;
}

fn func_1(arg_0: i32) -> vec2<bool> {
    let var_0 = ~(~max(~(~u_input.b.x), u_input.c.x));
    global0 = func_5(Struct_2(~(-1i), var_0, Struct_1(vec2<i32>(u_input.d.x, _wgslsmith_sub_i32(u_input.a, u_input.d.x)), u_input.c.zy, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 489f, -254f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(2748f + -313f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1257f, 2040f, -2090f)), vec3<f32>(1877f, 962f, 624f), true))), func_4(Struct_2(arg_0, ~17117u, Struct_1(vec2<i32>(arg_0, u_input.d.x), vec2<u32>(u_input.b.x, 53455u), vec3<f32>(-630f, 1274f, 1000f), -485f), _wgslsmith_f_op_vec3_f32(func_2()), Struct_1(u_input.d.zx, vec2<u32>(u_input.c.x, var_0), vec3<f32>(843f, -2475f, 549f), 1205f)), Struct_2(arg_0, 4294967295u, Struct_1(u_input.d.yy, u_input.c.yy, vec3<f32>(350f, 2582f, 325f), 451f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1722f, 726f, 808f)), Struct_1(vec2<i32>(u_input.d.x, 0i), u_input.c.zx, vec3<f32>(-493f, 256f, 1129f), -462f)), max(17871u, var_0 << (10745u % 32u)))));
    global0 = (_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, arg_0, 12926i), vec3<i32>(arg_0, u_input.a, arg_0)), abs(vec3<i32>(-9218i, u_input.a, -37007i))) & u_input.d.x) >> (min(var_0, 4294967295u) % 32u);
    let var_1 = abs(_wgslsmith_clamp_i32(2147483647i, min(arg_0, ~func_4(Struct_2(u_input.a, u_input.b.x, Struct_1(u_input.d.yw, vec2<u32>(u_input.c.x, u_input.b.x), vec3<f32>(929f, 2036f, 2170f), -436f), vec3<f32>(-1139f, 1395f, -682f), Struct_1(vec2<i32>(-3275i, u_input.d.x), vec2<u32>(1u, 148316u), vec3<f32>(506f, -1000f, -1025f), -957f)), Struct_2(-1i, 4294967295u, Struct_1(u_input.d.zw, vec2<u32>(4294967295u, 18189u), vec3<f32>(786f, -1000f, 552f), -1713f), vec3<f32>(-463f, 1000f, -607f), Struct_1(u_input.d.ww, u_input.b.wz, vec3<f32>(756f, -417f, 1550f), 365f)), 17904u).a.x), ~(-arg_0 ^ 23942i)));
    global0 = _wgslsmith_add_i32(arg_0 | countOneBits(func_4(Struct_2(-4610i, 1u, Struct_1(vec2<i32>(u_input.a, var_1), vec2<u32>(33999u, 28626u), vec3<f32>(1715f, 1773f, 110f), -276f), vec3<f32>(1500f, -607f, -1057f), Struct_1(u_input.d.xx, vec2<u32>(0u, 4294967295u), vec3<f32>(105f, 917f, -1774f), -245f)), Struct_2(29726i, 4294967295u, Struct_1(u_input.d.xw, u_input.b.wy, vec3<f32>(1163f, 778f, -394f), -772f), vec3<f32>(1917f, -553f, 581f), Struct_1(u_input.d.zz, u_input.b.yy, vec3<f32>(-806f, -1208f, -473f), 1311f)), u_input.c.x).a.x), _wgslsmith_div_i32(u_input.a, ~(-54308i >> (0u % 32u))) & 0i);
    return !select(vec2<bool>(true, true), !(!select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true))), true);
}

fn func_6(arg_0: bool, arg_1: f32, arg_2: vec2<i32>, arg_3: u32) -> Struct_1 {
    global0 = -40592i;
    global0 = firstTrailingBit(-arg_2.x) | (2147483647i & u_input.a);
    var var_0 = _wgslsmith_div_f32(arg_1, 2251f);
    var var_1 = Struct_1(vec2<i32>(-12587i, _wgslsmith_div_i32(~(-u_input.a), -2147483647i)), ~(vec2<u32>(~143836u, firstLeadingBit(u_input.c.x)) ^ ~u_input.c.zx), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-432f, arg_1, arg_1), vec3<f32>(470f, -569f, -876f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 531f, -1409f) - vec3<f32>(arg_1, arg_1, arg_1)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(arg_1, 517f, -948f), vec3<f32>(arg_1, arg_1, arg_1)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_1, arg_1, arg_1))))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_1, -500f, arg_1))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-480f, arg_1, arg_1) - vec3<f32>(675f, 139f, 1930f)))))), arg_1);
    global0 = u_input.a;
    return Struct_1(var_1.a, ~(vec2<u32>(1u, arg_3) ^ _wgslsmith_mod_vec2_u32(select(var_1.b, vec2<u32>(var_1.b.x, u_input.b.x), false), ~vec2<u32>(u_input.c.x, 1u))), vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1605f * var_1.c.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-117f * 1280f), arg_1)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1312f) - _wgslsmith_f_op_f32(arg_1 * arg_1)))), 1543f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_2(var_1.a.x, 1u, Struct_1(vec2<i32>(-1i, arg_2.x), var_1.b, var_1.c, arg_1), vec3<f32>(-545f, -2640f, arg_1), Struct_1(var_1.a, u_input.b.yx, var_1.c, var_1.d)), Struct_2(-59760i, 4294967295u, Struct_1(vec2<i32>(0i, 8939i), vec2<u32>(u_input.b.x, arg_3), var_1.c, var_1.c.x), vec3<f32>(-660f, var_1.d, arg_1), Struct_1(u_input.d.yy, vec2<u32>(4019u, 4294967295u), vec3<f32>(1708f, arg_1, 962f), arg_1)), u_input.b.x).d * _wgslsmith_f_op_f32(trunc(-832f)))) * 300f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -581f))), -908f));
    var var_1 = func_6(any(select(select(vec2<bool>(true, true), vec2<bool>(false, true), func_1(-1i)), vec2<bool>(true, true), vec2<bool>(true, true))), var_0, vec2<i32>(-1i, reverseBits(~abs(u_input.a))), u_input.b.x);
    global0 = select(u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d.x, firstTrailingBit(-26121i)), vec2<i32>(u_input.a ^ u_input.a, ~2147483647i) ^ ~(~u_input.d.yw)), _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(0u, var_1.b.x, 4294967295u) >> (vec3<u32>(8196u, var_1.b.x, u_input.c.x) % vec3<u32>(32u))), u_input.b.zyx) < _wgslsmith_add_u32(_wgslsmith_add_u32(0u, 48984u << (1u % 32u)), _wgslsmith_clamp_u32(var_1.b.x, 1u | var_1.b.x, var_1.b.x)));
    var var_2 = func_4(Struct_2(firstTrailingBit(2661i), 14512u, Struct_1(vec2<i32>(func_6(true, var_0, var_1.a, var_1.b.x).a.x, -11550i), var_1.b, _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1990f, -1339f, var_0))), _wgslsmith_f_op_f32(abs(var_1.d))), func_6(true, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_1.c.x, var_1.c.x, true)), _wgslsmith_f_op_f32(-var_0)), vec2<i32>(_wgslsmith_add_i32(var_1.a.x, -1i), -2147483647i), ~0u).c, Struct_1(max(vec2<i32>(var_1.a.x, u_input.d.x) << (vec2<u32>(4294967295u, u_input.c.x) % vec2<u32>(32u)), abs(var_1.a)), select(var_1.b, vec2<u32>(4294967295u, u_input.b.x), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(max(var_1.c, var_1.c)))), var_1.c.x)), Struct_2(-select(0i, u_input.a >> (var_1.b.x % 32u), true), ~(~u_input.c.x & u_input.b.x), func_6(_wgslsmith_add_i32(10035i, var_1.a.x) <= reverseBits(-2147483647i), 783f, _wgslsmith_sub_vec2_i32(~vec2<i32>(0i, u_input.d.x), vec2<i32>(6492i, -33213i) | u_input.d.zx), var_1.b.x), vec3<f32>(-285f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(-var_0)), _wgslsmith_f_op_f32(f32(-1f) * -1607f)), Struct_1(func_6(true, -1113f, var_1.a, 1u).a ^ ~u_input.d.yw, min(u_input.b.ww, vec2<u32>(1u, 1u)), var_1.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0))))), max(countOneBits(~func_3()), u_input.b.x));
    let var_3 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.c.x)))), var_1.c.x), vec2<f32>(_wgslsmith_f_op_f32(abs(func_4(Struct_2(var_2.a.x, 45411u, Struct_1(vec2<i32>(7578i, u_input.a), u_input.b.wy, vec3<f32>(194f, 458f, var_2.d), var_0), var_1.c, Struct_1(var_2.a, vec2<u32>(var_1.b.x, var_2.b.x), var_2.c, var_1.d)), Struct_2(-56730i, var_1.b.x, Struct_1(vec2<i32>(var_1.a.x, 45424i), u_input.b.yw, vec3<f32>(502f, var_0, -580f), var_2.c.x), var_2.c, Struct_1(var_2.a, vec2<u32>(u_input.c.x, 42128u), vec3<f32>(-1085f, var_1.c.x, 1000f), -990f)), var_2.b.x).d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_6(true, -155f, vec2<i32>(14496i, var_1.a.x), 79458u).c.x))), true));
    var var_4 = 0u;
    let x = u_input.a;
    s_output = StorageBuffer(func_6(func_1(56180i).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0)) - _wgslsmith_f_op_f32(-246f * var_1.c.x))), _wgslsmith_sub_vec2_i32(func_4(Struct_2(u_input.a, 1u, Struct_1(vec2<i32>(u_input.d.x, u_input.d.x), vec2<u32>(52282u, var_1.b.x), vec3<f32>(var_3.x, var_3.x, -145f), -317f), vec3<f32>(358f, -627f, var_1.c.x), Struct_1(u_input.d.xx, u_input.c.xz, var_1.c, 1270f)), Struct_2(var_2.a.x, var_1.b.x, Struct_1(var_2.a, var_1.b, vec3<f32>(766f, var_3.x, var_2.c.x), var_0), vec3<f32>(var_2.c.x, -1565f, var_1.c.x), Struct_1(vec2<i32>(0i, 31722i), vec2<u32>(29501u, var_1.b.x), vec3<f32>(-106f, var_0, var_0), 914f)), 0u).a, select(vec2<i32>(-1i, var_1.a.x), u_input.d.yy, vec2<bool>(true, false))), var_1.b.x).c, ~u_input.d << (~vec4<u32>(~u_input.c.x, _wgslsmith_div_u32(20379u, var_1.b.x), ~36346u, var_2.b.x) % vec4<u32>(32u)), var_1.b.x, vec4<f32>(var_1.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_2.d))), _wgslsmith_div_f32(-820f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1.c.x)))), _wgslsmith_f_op_f32(292f * 521f)));
}

