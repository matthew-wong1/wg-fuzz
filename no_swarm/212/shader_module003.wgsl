struct Struct_1 {
    a: vec3<f32>,
    b: vec4<u32>,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<f32>,
    d: i32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: vec3<u32>) -> i32 {
    var var_0 = arg_1;
    let var_1 = arg_1.d;
    var_0 = arg_1;
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(step(var_0.e.a, vec3<f32>(_wgslsmith_f_op_f32(ceil(407f)), _wgslsmith_f_op_f32(min(-1000f, 2325f)), -113f))), _wgslsmith_mod_vec4_u32(vec4<u32>(0u, 19341u, arg_2.x, u_input.a.x), var_0.c.b) ^ vec4<u32>(~var_0.c.b.x, ~arg_1.c.b.x, arg_1.a.b.x >> (12145u % 32u), ~18471u), _wgslsmith_dot_vec3_u32(select(vec3<u32>(0u, 4294967295u, arg_2.x), ~arg_1.a.b.zyy, any(vec3<bool>(false, var_0.d, false))), reverseBits(abs(arg_1.e.b.zyx))), -(~arg_0)), var_0.e.d, Struct_1(var_0.a.a, var_0.c.b, ~select(reverseBits(465u), u_input.a.x, var_0.d), 1i), !any(!select(vec4<bool>(var_1, false, var_0.d, true), vec4<bool>(true, true, arg_1.d, arg_1.d), vec4<bool>(false, var_1, arg_1.d, arg_1.d))), arg_1.c);
    var_0 = Struct_2(arg_1.e, arg_1.a.d, var_0.e, any(vec3<bool>(!(true || arg_1.d), all(vec4<bool>(false, true, true, arg_1.d)), var_1)), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.e.a.x, -1000f, 2482f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(217f, var_0.e.a.x, var_2.e.a.x)), select(vec3<bool>(false, var_0.d, arg_1.d), vec3<bool>(var_2.d, false, true), vec3<bool>(arg_1.d, var_1, arg_1.d)))) * vec3<f32>(arg_1.c.a.x, _wgslsmith_f_op_f32(-408f * var_0.c.a.x), -763f)), var_0.c.b, select(~(~var_0.c.b.x), var_0.e.b.x, true), var_2.c.d));
    return _wgslsmith_mod_i32(arg_0, ~countOneBits(var_0.c.d));
}

fn func_2() -> i32 {
    var var_0 = select(vec2<bool>(true, true), !(!(!select(vec2<bool>(false, false), vec2<bool>(true, false), true))), (i32(-1i) * -func_3(1i, Struct_2(Struct_1(vec3<f32>(-221f, -1095f, -164f), vec4<u32>(u_input.a.x, 41637u, 27134u, 19422u), u_input.b, 34826i), 2983i, Struct_1(vec3<f32>(-380f, 430f, 583f), vec4<u32>(14613u, 28203u, 4294967295u, u_input.b), u_input.a.x, 2147483647i), true, Struct_1(vec3<f32>(-371f, 470f, 589f), vec4<u32>(u_input.b, 4294967295u, u_input.a.x, 1u), u_input.b, -1i)), vec3<u32>(u_input.b, 4294967295u, u_input.a.x))) <= func_3(_wgslsmith_dot_vec4_i32(-vec4<i32>(0i, 0i, 30625i, 73579i), vec4<i32>(44865i, 2147483647i, -10215i, 0i)), Struct_2(Struct_1(vec3<f32>(-601f, -331f, -1500f), vec4<u32>(4294967295u, 4230u, u_input.a.x, 41107u), u_input.a.x, -19734i), 2147483647i >> (u_input.a.x % 32u), Struct_1(vec3<f32>(1917f, -1472f, 1195f), vec4<u32>(83714u, u_input.a.x, u_input.b, u_input.b), 47056u, 12418i), true, Struct_1(vec3<f32>(-238f, 214f, 402f), vec4<u32>(u_input.a.x, 37677u, u_input.a.x, u_input.b), u_input.a.x, 7907i)), select(vec3<u32>(4294967295u, 93031u, 0u) & vec3<u32>(38552u, 0u, u_input.b), _wgslsmith_div_vec3_u32(vec3<u32>(25034u, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, u_input.b, 0u)), any(vec4<bool>(false, true, false, true)))));
    var_0 = vec2<bool>(any(!select(select(vec2<bool>(var_0.x, false), vec2<bool>(var_0.x, true), vec2<bool>(var_0.x, var_0.x)), !vec2<bool>(var_0.x, var_0.x), select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(false, true), true))), var_0.x && all(vec3<bool>(select(var_0.x, var_0.x, false), true, false)));
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(344f, -624f, 1919f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-798f, 140f, 138f) - vec3<f32>(-255f, -1217f, -1906f))) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-234f, -106f, -1661f))))), ~abs(vec4<u32>(2683u, 1u, u_input.b, 0u)), firstTrailingBit(_wgslsmith_dot_vec4_u32(~vec4<u32>(87721u, u_input.b, u_input.a.x, 24526u), ~vec4<u32>(u_input.b, 0u, 36819u, 4294967295u))), _wgslsmith_sub_i32(reverseBits(~1i), -_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -1i, 2147483647i, -2147483647i), vec4<i32>(2147483647i, -28287i, -10345i, -1i)))), 0i, Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-217f, -865f, -564f), vec3<f32>(1000f, -1353f, 200f), false))))), ~reverseBits(~vec4<u32>(11249u, 25385u, u_input.a.x, u_input.a.x)), 1u, 1i), select(!any(vec2<bool>(var_0.x, false)), var_0.x, var_0.x & all(vec2<bool>(var_0.x, true))), Struct_1(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1277f, _wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(ceil(-1000f))))), max(_wgslsmith_div_vec4_u32(~vec4<u32>(28953u, 10186u, 0u, u_input.b), ~vec4<u32>(u_input.a.x, u_input.b, u_input.b, u_input.a.x)), select(vec4<u32>(u_input.b, 1u, u_input.b, 43359u), vec4<u32>(u_input.b, 4294967295u, 1u, 1u), var_0.x) | (vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, 1u) & vec4<u32>(1u, 29581u, u_input.a.x, 100771u))), firstLeadingBit(firstLeadingBit(~0u)), reverseBits(abs(~40408i))));
    var var_2 = var_1.a.b.zy;
    let var_3 = _wgslsmith_mod_u32(4294967295u, 44412u);
    return -36911i;
}

fn func_4(arg_0: bool, arg_1: Struct_2) -> vec3<bool> {
    var var_0 = Struct_1(vec3<f32>(321f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1683f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(383f - arg_1.c.a.x) + -1638f))), arg_1.e.b, 4294967295u >> (arg_1.a.c % 32u), -13204i);
    var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(var_0.a + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, -1078f, var_0.a.x)))), abs(_wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_div_u32(arg_1.e.c, var_0.b.x), abs(var_0.b.x), abs(u_input.a.x), _wgslsmith_sub_u32(arg_1.e.b.x, var_0.c)), var_0.b)), arg_1.e.b.x, 2147483647i);
    var_0 = arg_1.e;
    var var_1 = arg_1;
    let var_2 = arg_1.c.c;
    return select(!vec3<bool>(var_1.d, false, true), vec3<bool>(arg_1.d, false, true), ~_wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(-12566i, var_0.d)), max(vec2<i32>(137i, var_0.d), vec2<i32>(var_0.d, arg_1.b))) < var_0.d);
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: Struct_2) -> i32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(697f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + arg_1)), 1000f)) + _wgslsmith_div_vec3_f32(vec3<f32>(-2050f, 744f, 356f), arg_2.a.a));
    var var_1 = Struct_2(Struct_1(arg_2.a.a, vec4<u32>(4294967295u, min(28133u, arg_2.a.c) >> (u_input.b % 32u), 1u, 1u), 1u, _wgslsmith_mod_i32(i32(-1i) * -18471i, min(-2147483647i, 25934i) | arg_2.c.d)), -21079i | arg_2.e.d, arg_2.e, min(~664i, arg_2.b) < ~(-389i), arg_2.c);
    let var_2 = select(vec3<bool>(any(select(select(vec3<bool>(false, arg_0, false), vec3<bool>(false, arg_2.d, false), vec3<bool>(arg_2.d, true, false)), select(vec3<bool>(false, arg_2.d, true), vec3<bool>(true, arg_2.d, false), vec3<bool>(arg_2.d, false, true)), true || arg_2.d)), true, select(!arg_2.d, all(select(vec3<bool>(arg_2.d, var_1.d, arg_0), vec3<bool>(arg_2.d, var_1.d, arg_0), vec3<bool>(var_1.d, true, var_1.d))), all(!vec4<bool>(true, arg_2.d, arg_0, var_1.d)))), func_4(func_2() < min(1i >> (arg_2.c.b.x % 32u), countOneBits(arg_2.a.d)), Struct_2(var_1.c, reverseBits(var_1.b), Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(-762f, 184f, 971f), vec3<f32>(-1445f, 1612f, arg_2.a.a.x)), ~var_1.c.b, 69328u, ~1i), arg_0, Struct_1(vec3<f32>(-186f, var_1.e.a.x, 967f), ~arg_2.e.b, 1u, func_3(-2147483647i, Struct_2(Struct_1(vec3<f32>(-737f, arg_2.e.a.x, var_1.c.a.x), vec4<u32>(22336u, var_1.a.c, var_1.c.c, u_input.a.x), arg_2.a.b.x, arg_2.e.d), arg_2.e.d, arg_2.a, false, Struct_1(vec3<f32>(arg_2.c.a.x, var_1.a.a.x, var_1.c.a.x), var_1.e.b, 26242u, arg_2.a.d)), arg_2.a.b.wxy)))), vec3<bool>(true, arg_2.d, !all(select(vec2<bool>(arg_2.d, var_1.d), vec2<bool>(false, arg_0), vec2<bool>(false, true)))));
    var_1 = arg_2;
    let var_3 = var_1.c.b;
    return _wgslsmith_mult_i32(1i, ~(-8479i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstLeadingBit(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), ~vec4<i32>(-2147483647i, 0i, -2147483647i, -2147483647i)), -firstTrailingBit(10546i))) & _wgslsmith_sub_vec2_i32(-vec2<i32>(func_1(true, 623f, Struct_2(Struct_1(vec3<f32>(-1578f, -852f, -1193f), vec4<u32>(61162u, u_input.b, 33334u, u_input.b), u_input.a.x, 1i), -2147483647i, Struct_1(vec3<f32>(-275f, 1071f, 1810f), vec4<u32>(0u, u_input.b, u_input.a.x, 4294967295u), u_input.b, -2147483647i), false, Struct_1(vec3<f32>(231f, 786f, -716f), vec4<u32>(10618u, u_input.a.x, 4294967295u, u_input.b), 38382u, 1i))), 0i), vec2<i32>(0i, -2147483647i << (u_input.a.x % 32u)));
    var_0 = _wgslsmith_clamp_vec2_i32(-(~_wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(var_0.x, var_0.x), vec2<i32>(-1i, var_0.x)), vec2<i32>(-2147483647i, var_0.x))), vec2<i32>(0i, -_wgslsmith_div_i32(var_0.x, countOneBits(-52706i))), ~(~(~vec2<i32>(var_0.x, 2147483647i))));
    let var_1 = _wgslsmith_dot_vec2_u32(~(~u_input.a), countOneBits(vec2<u32>(u_input.a.x, _wgslsmith_add_u32(u_input.a.x, 12283u)))) >= firstLeadingBit(min(u_input.a.x, u_input.a.x));
    var var_2 = Struct_2(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -639f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-135f, -207f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -526f))), ~select(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, 1u, u_input.b, 1u), vec4<u32>(u_input.a.x, 19715u, 4294967295u, 0u), vec4<u32>(44891u, 37905u, 6557u, 4294967295u)), _wgslsmith_div_vec4_u32(vec4<u32>(0u, 4294967295u, 1u, u_input.b), vec4<u32>(u_input.a.x, 33769u, 0u, 88069u)), !vec4<bool>(false, true, var_1, var_1)), 0u, 8764i), -31670i, Struct_1(vec3<f32>(1f, 1f, 1f), ~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, 28291u, u_input.b, 1u), vec4<u32>(u_input.a.x, u_input.b, u_input.a.x, u_input.a.x)) ^ ~abs(vec4<u32>(1u, u_input.a.x, 0u, 22119u)), u_input.b, _wgslsmith_mod_i32(~_wgslsmith_add_i32(var_0.x, var_0.x), var_0.x & func_1(var_1, -1102f, Struct_2(Struct_1(vec3<f32>(662f, 787f, 1054f), vec4<u32>(u_input.b, 22712u, u_input.a.x, 1u), 18244u, 1i), var_0.x, Struct_1(vec3<f32>(768f, -185f, 422f), vec4<u32>(1u, 8416u, u_input.b, u_input.a.x), u_input.b, 0i), true, Struct_1(vec3<f32>(1822f, 1000f, -517f), vec4<u32>(4294967295u, 4294967295u, u_input.a.x, u_input.a.x), 1u, 0i))))), true, Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(529f)), 699f, _wgslsmith_f_op_f32(831f - -1180f)) + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(2655f, 1031f, 2004f)))))), _wgslsmith_div_vec4_u32(vec4<u32>(74205u, 1u, 53344u, 1u) | vec4<u32>(0u, 8785u, u_input.a.x, 88388u), _wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, 1u, u_input.b, 10672u), vec4<u32>(1u, 0u, 19514u, 4294967295u), vec4<u32>(0u, 5266u, u_input.b, u_input.b)), vec4<u32>(0u, u_input.a.x, 53227u, 4294967295u))), ~(~4294967295u << (_wgslsmith_add_u32(56119u, u_input.a.x) % 32u)), ~(-27261i ^ (var_0.x >> (43833u % 32u)))));
    var var_3 = 24327i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(var_0.x, _wgslsmith_clamp_i32(func_1(true, -889f, Struct_2(var_2.c, var_2.a.d, Struct_1(var_2.e.a, var_2.e.b, 0u, 1i), false, var_2.a)), _wgslsmith_clamp_i32(-29982i, -var_0.x, func_2()), -(-1i ^ var_2.e.d))), abs(-2147483647i), var_2.c.a.zx, var_0.x, vec3<u32>(~(~var_2.a.c) << (_wgslsmith_mod_u32(firstLeadingBit(1u), ~71406u) % 32u), ~_wgslsmith_dot_vec4_u32(reverseBits(var_2.c.b), _wgslsmith_add_vec4_u32(vec4<u32>(1u, u_input.a.x, 0u, 4294967295u), var_2.c.b)), _wgslsmith_add_u32(~(var_2.c.b.x | 0u), ~4294967295u)));
}

