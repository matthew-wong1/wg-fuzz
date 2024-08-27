struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: vec2<u32>,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<i32>,
    d: vec4<bool>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec3<bool>,
    c: vec3<bool>,
    d: vec4<bool>,
    e: Struct_2,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec2<bool>,
    d: vec4<f32>,
    e: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_3, arg_3: f32) -> vec2<u32> {
    var var_0 = select(!arg_2.d, arg_2.d, !(firstTrailingBit(1i) > _wgslsmith_clamp_i32(u_input.c.x, u_input.a.x, 23523i)) && arg_1.x);
    var_0 = !vec4<bool>(all(arg_2.b), any(select(vec4<bool>(var_0.x, true, var_0.x, true), select(arg_2.d, vec4<bool>(false, true, true, true), arg_2.d.x), !var_0.x)), 7767i <= arg_2.e.b.a.x, true);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(round(arg_3)), _wgslsmith_f_op_f32(-293f * arg_3), arg_3), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2211f, -1000f, -224f)))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-578f, _wgslsmith_f_op_f32(f32(-1f) * -211f), _wgslsmith_f_op_f32(f32(-1f) * -814f)) - vec3<f32>(_wgslsmith_f_op_f32(abs(arg_3)), arg_3, _wgslsmith_f_op_f32(max(-556f, -317f))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3, arg_3, arg_3))))));
    var_2 = vec3<f32>(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-762f))))), var_2.x, 697f);
    return ~(~(~arg_2.e.b.c));
}

fn func_2(arg_0: vec3<f32>) -> bool {
    var var_0 = ~select(vec3<i32>(-u_input.c.x, -_wgslsmith_mult_i32(14382i, u_input.c.x), -min(6002i, u_input.a.x)), select((u_input.a << (vec3<u32>(58536u, 1u, 15357u) % vec3<u32>(32u))) << (vec3<u32>(63023u, u_input.b, u_input.b) % vec3<u32>(32u)), -u_input.a, !select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), true);
    let var_1 = Struct_1(abs(vec4<i32>(var_0.x, 2147483647i, u_input.c.x, 53765i)), _wgslsmith_clamp_u32(4294967295u, 4294967295u, reverseBits(_wgslsmith_dot_vec2_u32(func_3(Struct_1(vec4<i32>(var_0.x, u_input.c.x, -2147483647i, -1i), 4294967295u, vec2<u32>(u_input.b, 36630u), 1u, u_input.c.x), vec2<bool>(false, true), Struct_3(vec4<u32>(u_input.b, u_input.b, 37235u, 24215u), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec4<bool>(false, false, false, false), Struct_2(Struct_1(vec4<i32>(var_0.x, var_0.x, 5024i, u_input.c.x), 9331u, vec2<u32>(u_input.b, 0u), u_input.b, var_0.x), Struct_1(vec4<i32>(-1i, 0i, -1i, -2147483647i), 49372u, vec2<u32>(1u, 4294967295u), 81188u, 1i), vec3<i32>(2147483647i, u_input.a.x, -2147483647i), vec4<bool>(true, true, false, true))), arg_0.x), vec2<u32>(u_input.b, u_input.b) >> (vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u))))), ~firstLeadingBit(vec2<u32>(~u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(u_input.b, u_input.b, u_input.b)))), 12121u, _wgslsmith_dot_vec3_i32(firstLeadingBit(u_input.a), vec3<i32>(-47188i, ~abs(46806i), u_input.c.x)));
    let var_2 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-arg_0), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-arg_0)))));
    var_0 = select(~vec3<i32>(-47681i, -1i, var_1.e), vec3<i32>(-1i) * -(~(~var_1.a.xzz)), all(select(vec4<bool>(true, -2147483647i <= var_1.e, true, true), vec4<bool>(true, true, 34468u > var_1.b, all(vec3<bool>(false, true, true))), true)));
    let var_3 = select(vec2<u32>(_wgslsmith_mod_u32(~13318u, ~u_input.b), _wgslsmith_mod_u32(4294967295u, 1u)), vec2<u32>(~var_1.c.x, ~u_input.b), select(vec2<bool>(any(vec4<bool>(true, true, true, true)), 1f > arg_0.x), vec2<bool>(true, true), select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(false, false), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true))), true | any(vec2<bool>(false, false)))));
    return !(!(abs(var_0.x) > (var_1.e ^ -35248i))) && select(any(vec3<bool>(true, true, true)), true, all(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true))));
}

fn func_1() -> Struct_4 {
    let var_0 = func_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(562f, -660f, 1000f))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -481f), _wgslsmith_f_op_f32(f32(-1f) * -100f), _wgslsmith_f_op_f32(327f + 1892f)))) | (true || (select(~u_input.b, firstTrailingBit(49644u), true) != u_input.b));
    var var_1 = _wgslsmith_dot_vec2_u32(firstLeadingBit(~(~vec2<u32>(104959u, 1u)) & countOneBits(~vec2<u32>(u_input.b, 12205u))), firstTrailingBit(vec2<u32>(u_input.b | 4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(38266u, u_input.b, u_input.b, 0u), vec4<u32>(u_input.b, u_input.b, u_input.b, 14325u))) | ~select(vec2<u32>(1u, 4294967295u), vec2<u32>(u_input.b, 1u), vec2<bool>(true, var_0))));
    var_1 = 20774u;
    var var_2 = func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(458f)), -793f, _wgslsmith_f_op_f32(2187f - -1905f)))) | false;
    var var_3 = vec4<u32>(min(4294967295u, u_input.b), _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 11768u) ^ vec2<u32>(u_input.b, u_input.b), ~vec2<u32>(0u, 1u) ^ firstLeadingBit(vec2<u32>(u_input.b, 0u))), ~u_input.b), firstTrailingBit(select(reverseBits(abs(55243u)), max(10391u >> (u_input.b % 32u), u_input.b << (25370u % 32u)), true)), 1u);
    return Struct_4(~(~_wgslsmith_div_vec4_u32(vec4<u32>(0u, 21268u, 4294967295u, 1u), abs(vec4<u32>(u_input.b, var_3.x, u_input.b, 22096u)))), select(min(~select(var_3.yy, vec2<u32>(4294967295u, u_input.b), var_0), ~_wgslsmith_div_vec2_u32(vec2<u32>(1u, 20564u), vec2<u32>(35192u, 4294967295u))), min(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, var_3.x)), vec2<u32>(var_3.x, 1u) << (vec2<u32>(33362u, var_3.x) % vec2<u32>(32u))) | ~var_3.zx, !vec2<bool>(any(vec4<bool>(false, var_0, false, var_0)), true)), vec2<bool>(var_0, true), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(776f, -1223f, 272f, 633f) * vec4<f32>(715f, 936f, -775f, 486f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -1815f, -1376f, -1000f)), !vec4<bool>(var_0, var_0, false, true)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-285f, -1234f)) - _wgslsmith_f_op_f32(ceil(-876f))), -1288f, 553f, -1251f))), var_0);
}

fn func_4(arg_0: u32, arg_1: Struct_4, arg_2: Struct_2, arg_3: vec3<u32>) -> StorageBuffer {
    var var_0 = !(!func_1().c);
    let var_1 = firstTrailingBit(firstLeadingBit(~(u_input.b & 45279u))) & ~_wgslsmith_add_u32(~5068u, arg_3.x);
    var_0 = vec2<bool>(!arg_1.e, arg_1.e);
    let var_2 = arg_2;
    var_0 = arg_2.d.yx;
    return StorageBuffer(vec4<f32>(arg_1.d.x, 103f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1637f) * _wgslsmith_f_op_f32(ceil(arg_1.d.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.d.x)))), arg_2.b.a, reverseBits(arg_3.zx) << (~_wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(arg_3.zx, arg_3.zy), _wgslsmith_sub_vec2_u32(arg_3.xx, vec2<u32>(var_1, 1009u))) % vec2<u32>(32u)), 1i, arg_1.d.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(318f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -172f), _wgslsmith_f_op_f32(f32(-1f) * -249f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1431f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -338f) - _wgslsmith_f_op_f32(127f + -443f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-432f))))));
    let var_1 = 631f;
    let var_2 = u_input.a.yx;
    var_0 = vec2<f32>(-807f, _wgslsmith_f_op_f32(f32(-1f) * -274f));
    var var_3 = _wgslsmith_mult_i32(var_2.x, _wgslsmith_dot_vec4_i32(vec4<i32>(~_wgslsmith_sub_i32(63512i, u_input.c.x), ~(-var_2.x), 59816i, -min(u_input.a.x, var_2.x)), countOneBits(vec4<i32>(14370i, 2147483647i, u_input.c.x, var_2.x)) | _wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, u_input.c.x, -3710i, var_2.x), vec4<i32>(var_2.x, -1672i, u_input.a.x, u_input.c.x), vec4<i32>(var_2.x, 0i, 2147483647i, var_2.x)), vec4<i32>(var_2.x, -7276i, u_input.c.x, u_input.c.x) >> (vec4<u32>(u_input.b, u_input.b, 4294967295u, 4294967295u) % vec4<u32>(32u)))));
    var var_4 = 25855u;
    let x = u_input.a;
    s_output = func_4(u_input.b, func_1(), Struct_2(Struct_1(-select(vec4<i32>(12343i, var_2.x, 10752i, var_2.x), vec4<i32>(var_2.x, var_2.x, var_2.x, u_input.c.x), true), _wgslsmith_sub_u32(select(1u, u_input.b, false), ~u_input.b), func_3(Struct_1(vec4<i32>(-2147483647i, u_input.c.x, u_input.c.x, var_2.x), 8728u, vec2<u32>(54640u, u_input.b), 4294967295u, u_input.a.x), vec2<bool>(true, true), Struct_3(vec4<u32>(u_input.b, 0u, u_input.b, u_input.b), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec4<bool>(true, true, true, true), Struct_2(Struct_1(vec4<i32>(-10274i, 18222i, 22425i, u_input.a.x), u_input.b, vec2<u32>(1u, 4294967295u), u_input.b, -1i), Struct_1(vec4<i32>(-16613i, u_input.c.x, u_input.a.x, u_input.a.x), u_input.b, vec2<u32>(4294967295u, u_input.b), u_input.b, -5292i), vec3<i32>(0i, u_input.c.x, var_2.x), vec4<bool>(true, true, false, true))), var_0.x), 36144u, u_input.a.x), Struct_1(vec4<i32>(i32(-1i) * -14174i, ~var_2.x, _wgslsmith_div_i32(u_input.a.x, u_input.c.x), _wgslsmith_div_i32(0i, u_input.a.x)), func_3(Struct_1(vec4<i32>(var_2.x, 0i, 17704i, u_input.a.x), u_input.b, vec2<u32>(u_input.b, 48935u), 28697u, u_input.a.x), vec2<bool>(true, true), Struct_3(vec4<u32>(3370u, 0u, 33574u, u_input.b), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec4<bool>(true, false, false, true), Struct_2(Struct_1(vec4<i32>(47590i, -22627i, 2147483647i, 1i), 19838u, vec2<u32>(u_input.b, u_input.b), 4294967295u, var_2.x), Struct_1(vec4<i32>(u_input.a.x, u_input.c.x, var_2.x, -2147483647i), u_input.b, vec2<u32>(u_input.b, 72507u), 4294967295u, u_input.a.x), u_input.a, vec4<bool>(false, false, false, false))), _wgslsmith_f_op_f32(f32(-1f) * -302f)).x, ~_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b, 17481u), vec2<u32>(u_input.b, u_input.b)), _wgslsmith_div_u32(~29883u, u_input.b >> (94744u % 32u)), ~u_input.a.x & ~6005i), abs(countOneBits(vec3<i32>(-43449i, -1i, -2147483647i))), !select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), abs(min(vec3<u32>(u_input.b, u_input.b, u_input.b) << (vec3<u32>(u_input.b, u_input.b, u_input.b) % vec3<u32>(32u)), func_1().a.ywx)) & (~countOneBits(vec3<u32>(7632u, u_input.b, u_input.b)) ^ ~(vec3<u32>(87423u, u_input.b, 1966u) >> (vec3<u32>(u_input.b, u_input.b, u_input.b) % vec3<u32>(32u)))));
}

