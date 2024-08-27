struct Struct_1 {
    a: vec3<f32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 33893u;

var<private> global1: vec4<bool>;

var<private> global2: array<vec2<u32>, 3>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_3, arg_1: vec2<u32>) -> i32 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(-1050f, _wgslsmith_f_op_f32(arg_0.a.x + arg_0.a.x), arg_0.a.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1296f, arg_0.a.x, arg_0.a.x))), countOneBits(0u)), Struct_1(arg_0.a, u_input.a.x | 1u), !select(select(vec4<bool>(global1.x, global1.x, false, global1.x), vec4<bool>(global1.x, global1.x, true, global1.x), vec4<bool>(true, false, true, false)), select(!vec4<bool>(global1.x, global1.x, global1.x, true), !vec4<bool>(global1.x, true, false, false), !vec4<bool>(global1.x, false, global1.x, global1.x)), !select(vec4<bool>(global1.x, true, global1.x, global1.x), vec4<bool>(global1.x, true, true, false), vec4<bool>(global1.x, true, global1.x, global1.x))), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.a) - _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a.x, arg_0.a.x, arg_0.a.x) - _wgslsmith_f_op_vec3_f32(select(arg_0.a, arg_0.a, true)))), ~arg_1.x & ~u_input.a.x));
    var var_1 = Struct_2(Struct_1(arg_0.a, _wgslsmith_mod_u32(reverseBits(~0u), ~arg_1.x)), var_0.b, !vec4<bool>(true, var_0.c.x, global1.x, global1.x), var_0.b);
    var_1 = Struct_2(var_0.a, Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.b.a.x, var_1.d.a.x, 953f) - var_1.a.a), _wgslsmith_f_op_vec3_f32(sign(arg_0.a)))), ~_wgslsmith_dot_vec2_u32(~vec2<u32>(arg_1.x, var_1.d.b), countOneBits(u_input.a))), var_0.c, Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.d.a.x, _wgslsmith_f_op_f32(min(var_0.d.a.x, var_0.d.a.x)), _wgslsmith_f_op_f32(ceil(-218f)))), arg_1.x));
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -104f), var_1.d.a.x, 1f) * _wgslsmith_f_op_vec3_f32(select(var_0.b.a, _wgslsmith_div_vec3_f32(var_0.b.a, var_1.d.a), select(2147483647i, 0i, global1.x) != 1i))), ~1u);
    var var_3 = ~reverseBits(~(-2147483647i));
    return _wgslsmith_mult_i32(-firstTrailingBit(countOneBits(-1i) >> (1u % 32u)), -2147483647i);
}

fn func_4(arg_0: i32) -> vec4<u32> {
    var var_0 = -436f;
    var var_1 = Struct_3(vec3<f32>(579f, -617f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(353f, 1000f))) + _wgslsmith_f_op_f32(max(-316f, -708f)))));
    global0 = _wgslsmith_dot_vec3_u32(~(~reverseBits(vec3<u32>(30626u, u_input.a.x, u_input.a.x))), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(73955u, u_input.a.x, u_input.a.x), vec3<u32>(4294967295u, 56259u, 0u))) >> (u_input.a.x % 32u);
    var_1 = Struct_3(vec3<f32>(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.x) * _wgslsmith_f_op_f32(-var_1.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(160f, var_1.a.x))) * 871f)));
    let var_2 = vec2<bool>(!(!(!(false == global1.x))), global1.x);
    return _wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(~(~firstLeadingBit(vec4<u32>(0u, u_input.a.x, 4294967295u, u_input.a.x))), vec4<u32>(_wgslsmith_mult_u32(1u, 35472u), 4294967295u, ~firstLeadingBit(915u), ~u_input.a.x)), ~_wgslsmith_div_vec4_u32(firstTrailingBit(vec4<u32>(54628u, u_input.a.x, u_input.a.x, 0u)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, 0u), vec4<u32>(50972u, 49341u, u_input.a.x, 43689u)) << (_wgslsmith_div_vec4_u32(vec4<u32>(1u, u_input.a.x, u_input.a.x, 0u), vec4<u32>(u_input.a.x, u_input.a.x, 38073u, 80139u)) % vec4<u32>(32u))), vec4<u32>(u_input.a.x, (_wgslsmith_div_u32(4326u, u_input.a.x) & _wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, u_input.a.x)) >> ((countOneBits(u_input.a.x) << (0u % 32u)) % 32u), 0u, _wgslsmith_dot_vec4_u32(~select(vec4<u32>(6870u, u_input.a.x, 29035u, u_input.a.x), vec4<u32>(u_input.a.x, 39210u, 1u, u_input.a.x), var_2.x), ~vec4<u32>(u_input.a.x, u_input.a.x, 2226u, u_input.a.x))));
}

fn func_2() -> bool {
    let var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(513f, _wgslsmith_f_op_f32(-1359f * 2040f), 1120f))))));
    global0 = 0u;
    global1 = vec4<bool>(false != select(!global1.x, all(vec3<bool>(true, true, global1.x)), !(global1.x & false)), select(~(u_input.a.x >> (u_input.a.x % 32u)) <= 0u, any(vec2<bool>(global1.x, global1.x)), false && any(!vec3<bool>(global1.x, global1.x, false))), all(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(global1.x, false))), true);
    var var_1 = (vec4<u32>(u_input.a.x, ~min(u_input.a.x, 4294967295u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 54520u, u_input.a.x, 28379u), vec4<u32>(51664u, 46155u, 1u, u_input.a.x)), countOneBits(u_input.a.x) & firstTrailingBit(1u)) & func_4(func_3(Struct_3(vec3<f32>(-261f, 406f, 1445f)), vec2<u32>(u_input.a.x, u_input.a.x)))) | abs(reverseBits(firstTrailingBit(vec4<u32>(58893u, 94242u, u_input.a.x, u_input.a.x) >> (vec4<u32>(19703u, u_input.a.x, 13273u, u_input.a.x) % vec4<u32>(32u)))));
    let var_2 = true;
    return true;
}

fn func_1(arg_0: vec2<bool>) -> vec3<i32> {
    global1 = !select(!select(vec4<bool>(global1.x, true, false, global1.x), vec4<bool>(false, false, true, arg_0.x), vec4<bool>(false, global1.x, global1.x, false)), !select(select(vec4<bool>(true, arg_0.x, arg_0.x, global1.x), vec4<bool>(false, true, global1.x, false), false), vec4<bool>(true, global1.x, arg_0.x, arg_0.x), vec4<bool>(false, arg_0.x, false, true)), !arg_0.x);
    let var_0 = select(select(!global1.xxz, select(!select(vec3<bool>(true, false, true), global1.ywz, arg_0.x), !global1.xwz, false), (true || arg_0.x) | true), !select(vec3<bool>(true, global1.x, all(global1.wx)), !global1.wxw, !(!arg_0.x)), global1.xww);
    global1 = select(vec4<bool>(!(!(var_0.x & true)), any(vec2<bool>(all(vec2<bool>(var_0.x, global1.x)), false)), any(vec3<bool>(false, func_2(), func_2())), any(!(!vec4<bool>(var_0.x, global1.x, false, var_0.x)))), !(!select(!vec4<bool>(true, global1.x, global1.x, false), select(vec4<bool>(global1.x, global1.x, false, true), vec4<bool>(true, var_0.x, global1.x, false), true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, global1.x, false, global1.x), var_0.x))), global1.x);
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1888f, -398f, -2177f), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1711f, 1820f, -552f), vec3<f32>(-283f, -2019f, -215f), var_0.x))))), _wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(1027u, 25145u)) | vec2<u32>(u_input.a.x, u_input.a.x), global2[_wgslsmith_index_u32(~_wgslsmith_sub_u32(4294967295u, u_input.a.x), 3u)])), Struct_1(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-680f, 956f, _wgslsmith_f_op_f32(ceil(-1258f))))), 4294967295u << (func_4(1i).x % 32u)), select(vec4<bool>(!all(vec3<bool>(var_0.x, true, true)), arg_0.x, true, var_0.x), vec4<bool>(global1.x, firstTrailingBit(-23774i) != ~(-40746i), false, false), select(vec4<bool>(true, true, func_2(), true), select(select(vec4<bool>(true, var_0.x, true, var_0.x), vec4<bool>(global1.x, global1.x, false, arg_0.x), global1.x), !vec4<bool>(arg_0.x, false, true, arg_0.x), select(vec4<bool>(global1.x, arg_0.x, arg_0.x, false), vec4<bool>(true, global1.x, false, true), var_0.x)), all(vec4<bool>(arg_0.x, false, true, true)) & true)), Struct_1(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(1000f - 1679f), _wgslsmith_f_op_f32(546f - -1127f), _wgslsmith_f_op_f32(ceil(496f))), vec3<f32>(_wgslsmith_f_op_f32(1680f + -2505f), _wgslsmith_f_op_f32(f32(-1f) * -179f), _wgslsmith_f_op_f32(round(130f))))), ~u_input.a.x));
    let var_2 = abs(915u);
    return ~vec3<i32>(-_wgslsmith_dot_vec2_i32(-vec2<i32>(2147483647i, 2147483647i), vec2<i32>(1i, 1i)), ~(-_wgslsmith_dot_vec3_i32(vec3<i32>(-39948i, -26805i, 6431i), vec3<i32>(-32607i, 2147483647i, 31400i))), firstTrailingBit(_wgslsmith_clamp_i32(abs(-13187i), max(1i, 11343i), -11689i)));
}

fn func_5(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: vec3<f32>) -> vec2<u32> {
    let var_0 = Struct_3(vec3<f32>(-284f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1222f - arg_2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-251f * arg_2.x))), _wgslsmith_f_op_f32(-arg_0.a.x)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(994f, -245f)))));
    var var_2 = Struct_2(Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, var_0.a.x, 707f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(2379f, 1654f, var_1) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(223f, var_0.a.x, 828f), vec3<f32>(arg_2.x, -883f, 1000f))))), ~(31973u | u_input.a.x) << (_wgslsmith_dot_vec2_u32(global2[_wgslsmith_index_u32(u_input.a.x, 3u)] | vec2<u32>(1u, u_input.a.x), ~vec2<u32>(10294u, 4294967295u)) % 32u)), Struct_1(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(floor(1995f)), _wgslsmith_f_op_f32(693f - -411f), var_0.a.x), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(step(arg_0.a, vec3<f32>(arg_0.a.x, arg_2.x, var_0.a.x))))))), _wgslsmith_dot_vec4_u32(countOneBits(reverseBits(vec4<u32>(61376u, u_input.a.x, 43762u, u_input.a.x))), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, u_input.a.x, u_input.a.x, arg_0.b) ^ vec4<u32>(2003u, 4294967295u, 4294967295u, 19657u), vec4<u32>(1u, 48796u, 0u, arg_0.b)))), !vec4<bool>(false, !(!global1.x), global1.x, func_3(Struct_3(vec3<f32>(-837f, -696f, 178f)), u_input.a) >= -7959i), arg_0);
    global1 = !vec4<bool>(true, true, global1.x, var_2.c.x);
    var_2 = Struct_2(Struct_1(vec3<f32>(var_1, _wgslsmith_f_op_f32(942f + -2704f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.x + arg_0.a.x) * -662f)), ~var_2.a.b >> (7874u % 32u)), Struct_1(_wgslsmith_div_vec3_f32(arg_2, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.x, arg_0.a.x, 1985f)))), ~(~u_input.a.x) | arg_0.b), vec4<bool>(!(!var_2.c.x && true), !(!(!global1.x)), false, all(select(select(vec4<bool>(false, false, true, global1.x), vec4<bool>(global1.x, true, false, false), true), !vec4<bool>(false, false, false, global1.x), !vec4<bool>(var_2.c.x, global1.x, false, true)))), var_2.b);
    return u_input.a;
}

fn func_6(arg_0: vec3<i32>, arg_1: u32, arg_2: Struct_3, arg_3: vec2<u32>) -> vec3<f32> {
    var var_0 = !global1.x;
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2.a.x * _wgslsmith_f_op_f32(663f - arg_2.a.x)), arg_2.a.x);
    let var_2 = min(arg_3.x, ~(func_4(_wgslsmith_dot_vec3_i32(arg_0, vec3<i32>(1i, -1i, -1i))).x & arg_3.x));
    var var_3 = _wgslsmith_div_i32(-1i, firstLeadingBit(-53643i << (_wgslsmith_dot_vec4_u32(vec4<u32>(arg_3.x, 0u, 1u, 4294967295u), vec4<u32>(arg_3.x, arg_3.x, 1u, arg_3.x)) % 32u))) | _wgslsmith_div_i32(arg_0.x, 33453i);
    global0 = 13739u;
    return _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-arg_2.a), arg_2.a));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = u_input.a.x ^ ~(~(~u_input.a.x));
    global0 = u_input.a.x;
    global2 = array<vec2<u32>, 3>();
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(1725f, 1355f));
    var var_1 = vec4<f32>(var_0.x, var_0.x, -910f, -1000f);
    global0 = u_input.a.x;
    var var_2 = _wgslsmith_mult_i32(_wgslsmith_clamp_i32(1i, firstTrailingBit(1i), (26539i << (_wgslsmith_dot_vec3_u32(vec3<u32>(633u, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, 1u, u_input.a.x)) % 32u)) << (_wgslsmith_clamp_u32(reverseBits(u_input.a.x), ~14269u, reverseBits(4294967295u)) % 32u)), -_wgslsmith_sub_i32(~78069i, 1i));
    var var_3 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(func_6(~(~vec3<i32>(1i, 1i, 1i)), _wgslsmith_div_u32(u_input.a.x, 8384u), Struct_3(vec3<f32>(_wgslsmith_f_op_f32(var_0.x - -433f), _wgslsmith_f_op_f32(-484f * 813f), _wgslsmith_f_op_f32(1788f - var_0.x))), func_5(Struct_1(_wgslsmith_f_op_vec3_f32(-var_1.zwy), u_input.a.x), ~func_1(vec2<bool>(global1.x, false)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(var_1.wwy, var_1.xzy, global1.zzw)), _wgslsmith_f_op_vec3_f32(-var_1.xwx), select(vec3<bool>(global1.x, global1.x, global1.x), global1.xyz, vec3<bool>(true, global1.x, false)))))))));
    global1 = !select(!select(select(vec4<bool>(true, true, global1.x, false), vec4<bool>(true, true, global1.x, false), vec4<bool>(global1.x, global1.x, true, false)), vec4<bool>(true, global1.x, false, global1.x), select(vec4<bool>(true, false, global1.x, true), vec4<bool>(false, true, global1.x, true), global1.x)), select(vec4<bool>(all(global1.yw), global1.x, true, false & global1.x), select(select(vec4<bool>(true, global1.x, false, false), vec4<bool>(true, false, true, global1.x), vec4<bool>(global1.x, global1.x, global1.x, true)), !vec4<bool>(false, global1.x, global1.x, global1.x), true), global1.x), false);
    let x = u_input.a;
    s_output = StorageBuffer(-(~firstTrailingBit(_wgslsmith_div_vec2_i32(vec2<i32>(0i, 2147483647i), vec2<i32>(2557i, -35781i)))), countOneBits(_wgslsmith_add_vec4_u32(~abs(vec4<u32>(u_input.a.x, u_input.a.x, 1u, 1u)), min(vec4<u32>(u_input.a.x, 37853u, 12332u, u_input.a.x), _wgslsmith_add_vec4_u32(vec4<u32>(55774u, 1u, 0u, u_input.a.x), vec4<u32>(u_input.a.x, 1u, 20708u, 0u))))), ~((firstTrailingBit(vec3<u32>(4294967295u, u_input.a.x, 49341u)) >> (~vec3<u32>(u_input.a.x, 17866u, u_input.a.x) % vec3<u32>(32u))) >> (~vec3<u32>(59662u, u_input.a.x, 4294967295u) % vec3<u32>(32u))), (vec3<u32>(_wgslsmith_div_u32(u_input.a.x, 0u), func_5(Struct_1(var_1.yyw, u_input.a.x), vec3<i32>(-31714i, 48751i, 8236i), vec3<f32>(var_1.x, 278f, 360f)).x, ~4294967295u) ^ _wgslsmith_clamp_vec3_u32(~vec3<u32>(19011u, 1u, 95136u), vec3<u32>(0u, u_input.a.x, 78403u) << (vec3<u32>(17569u, 0u, u_input.a.x) % vec3<u32>(32u)), ~vec3<u32>(u_input.a.x, 4294967295u, 14369u))) >> (_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x & 4294967295u, ~u_input.a.x), vec3<u32>(u_input.a.x, 1u, 0u)) % vec3<u32>(32u)));
}

