struct Struct_1 {
    a: vec2<bool>,
    b: vec3<i32>,
    c: u32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: i32,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<bool>,
    c: i32,
    d: f32,
    e: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: u32 = 1u;

var<private> global2: vec4<i32>;

var<private> global3: vec3<bool> = vec3<bool>(false, false, true);

var<private> global4: array<vec3<f32>, 22> = array<vec3<f32>, 22>(vec3<f32>(-1476f, 1021f, 511f), vec3<f32>(830f, -1044f, 853f), vec3<f32>(333f, -526f, 449f), vec3<f32>(571f, 1060f, -807f), vec3<f32>(1016f, -304f, -467f), vec3<f32>(223f, 1438f, -1275f), vec3<f32>(-364f, 339f, 1566f), vec3<f32>(111f, -1231f, 651f), vec3<f32>(-1430f, 1000f, -257f), vec3<f32>(1450f, 241f, 1331f), vec3<f32>(-449f, 1000f, -728f), vec3<f32>(-1000f, 1000f, 1392f), vec3<f32>(190f, 645f, 1000f), vec3<f32>(1278f, -1847f, -1667f), vec3<f32>(1098f, 594f, -1303f), vec3<f32>(-578f, -1726f, -817f), vec3<f32>(1696f, -1158f, -1570f), vec3<f32>(1258f, 864f, -745f), vec3<f32>(621f, -1910f, 763f), vec3<f32>(-1907f, -732f, 1000f), vec3<f32>(-1020f, -203f, 3122f), vec3<f32>(-959f, 288f, -709f));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_2, arg_2: bool) -> vec4<f32> {
    var var_0 = Struct_4(Struct_2(~_wgslsmith_mod_vec3_u32(arg_0.a.a, arg_0.a.a) & arg_1.a, Struct_1(vec2<bool>(arg_1.b.a.x, all(vec4<bool>(arg_2, global3.x, false, true))), ~(vec3<i32>(arg_1.b.b.x, 1i, 7693i) >> (arg_0.a.a % vec3<u32>(32u))), ~arg_1.b.c | arg_1.b.c), (arg_1.c << (4294967295u % 32u)) << (arg_0.a.c % 32u)), arg_0.b, global2.x, 428f, -global2.x);
    let var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(var_0.d)), -210f, true));
    var var_2 = ~2147483647i;
    global2 = vec4<i32>(-1i) * -vec4<i32>(_wgslsmith_add_i32(arg_0.a.b.b.x, -22722i), 2147483647i, arg_1.b.b.x, ~abs(28601i));
    var var_3 = 237f;
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(807f, var_0.d, var_0.d, -663f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.d, var_1, var_1, -379f)))))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-429f, var_1, -496f, -340f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.d, -2360f, var_0.d, -460f) - vec4<f32>(-1000f, arg_0.d, -1478f, 378f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-472f, var_0.d, var_0.d, var_1))), var_0.b)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.d, -337f, arg_0.d, -927f))))));
}

fn func_4(arg_0: vec4<f32>, arg_1: i32, arg_2: vec3<u32>, arg_3: vec4<f32>) -> i32 {
    var var_0 = countOneBits(vec3<u32>(~4294967295u, countOneBits(arg_2.x) << (arg_2.x % 32u), arg_2.x));
    let var_1 = Struct_1(select(select(global3.xy, vec2<bool>(global0.x, !global3.x), !select(global3.xz, vec2<bool>(global3.x, false), global3.x)), vec2<bool>(true & global0.x, true | any(vec4<bool>(true, global0.x, true, true))), vec2<bool>(global0.x || true, true)), abs(firstTrailingBit(-global2.wyz << ((arg_2 ^ arg_2) % vec3<u32>(32u)))), abs(var_0.x));
    var var_2 = vec4<bool>(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -global2.yx, global2.wy) > u_input.a, true, global0.x, var_1.a.x);
    global0 = !select(!vec4<bool>(false, var_1.a.x != false, global3.x & var_1.a.x, true), !select(vec4<bool>(var_2.x, true, var_2.x, global0.x), select(vec4<bool>(global0.x, false, var_2.x, true), vec4<bool>(false, true, true, global0.x), vec4<bool>(global0.x, global3.x, false, true)), select(vec4<bool>(global0.x, true, true, var_1.a.x), vec4<bool>(false, var_2.x, global0.x, true), true)), all(select(!vec2<bool>(global0.x, false), select(var_2.wx, var_2.yy, var_1.a), vec2<bool>(true, true))));
    let var_3 = abs(arg_2.x);
    return ~(~_wgslsmith_sub_i32(firstTrailingBit(-10445i), ~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 2147483647i, var_1.b.x), var_1.b)));
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_4) -> u32 {
    global2 = vec4<i32>(u_input.a, func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1549f, 923f, arg_1.d, -1930f), vec4<f32>(763f, -1133f, 1155f, -607f))), global2.x, vec3<u32>(arg_0.x, ~arg_0.x, arg_1.a.c), _wgslsmith_f_op_vec4_f32(func_3(Struct_4(Struct_2(vec3<u32>(arg_0.x, 1u, arg_0.x), arg_1.a.b, arg_1.a.a.x), arg_1.b, global2.x, arg_1.d, 0i), Struct_2(arg_0, arg_1.a.b, arg_0.x), false && global0.x))) << (arg_1.a.c % 32u), ~reverseBits(~arg_1.c), -5916i);
    let var_0 = 4294967295u;
    var var_1 = !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.d + -1442f) + _wgslsmith_div_f32(-1000f, _wgslsmith_div_f32(-588f, arg_1.d))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-213f)))));
    global3 = vec3<bool>(true, true, false);
    var var_2 = vec4<i32>(0i, -1i, arg_1.e, ~(~firstLeadingBit(-1i))) & vec4<i32>(firstTrailingBit(-2696i), 27467i, ~(-38350i), _wgslsmith_dot_vec2_i32(-vec2<i32>(global2.x, 13875i), global2.zw));
    return var_0;
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: f32) -> f32 {
    var var_0 = max(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(11532u, func_2(vec3<u32>(4294967295u, 0u, 28336u), Struct_4(Struct_2(vec3<u32>(3517u, 0u, 0u), Struct_1(vec2<bool>(false, global3.x), global2.wyy, 1u), 22405u), vec4<bool>(global0.x, false, global0.x, false), arg_1, arg_2, arg_1)) & 1u, 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(103125u, 34078u, 17828u, 4294967295u), vec4<u32>(2830u, 100772u, 0u, 0u))));
    let var_1 = _wgslsmith_dot_vec3_i32(global2.xww, vec3<i32>(u_input.a, global2.x, _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, 56118i, arg_1, arg_0), vec4<i32>(-2147483647i, -5600i, arg_0, -70696i)), vec4<i32>(u_input.a, 2147483647i, 21002i, 2147483647i) ^ vec4<i32>(u_input.a, 21012i, arg_1, global2.x))) << ((abs(firstTrailingBit(vec3<u32>(var_0.x, var_0.x, 61503u))) << (vec3<u32>(1u, 23519u, ~0u) % vec3<u32>(32u))) % vec3<u32>(32u)));
    var var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(arg_2 + -607f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_2, arg_2))), -643f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(arg_2, 1315f), vec2<f32>(-137f, 1026f))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-378f, arg_2) + vec2<f32>(arg_2, -1159f)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-327f, 204f), vec2<f32>(-1000f, 1412f))))))));
    var var_3 = Struct_1(select(select(global0.zz, vec2<bool>(select(global3.x, global3.x, true), true), (global2.x ^ u_input.a) < var_1), !select(select(vec2<bool>(true, true), vec2<bool>(global0.x, global0.x), false), global0.wy, global0.wz), true), vec3<i32>(_wgslsmith_sub_i32(19485i, -(~21344i)), _wgslsmith_dot_vec3_i32(vec3<i32>(~3914i, var_1, 2147483647i), _wgslsmith_mult_vec3_i32(abs(global2.xww), global2.zwx)), 1i), reverseBits(abs(~var_0.x)));
    let var_4 = var_3.b;
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3(Struct_4(Struct_2(vec3<u32>(4294967295u, var_3.c, 0u), Struct_1(var_3.a, vec3<i32>(-21019i, 2147483647i, var_4.x), var_0.x), 4566u), vec4<bool>(global3.x, global0.x, global0.x, false), -52320i, var_2.x, global2.x), Struct_2(var_0.xzx, Struct_1(global3.xy, var_3.b, var_0.x), 1u), false)).x))));
}

fn func_5(arg_0: f32, arg_1: f32, arg_2: i32, arg_3: Struct_2) -> vec4<bool> {
    global3 = select(!global0.zyz, vec3<bool>(global0.x, _wgslsmith_f_op_f32(-226f - _wgslsmith_f_op_f32(-126f + -575f)) == _wgslsmith_f_op_f32(ceil(arg_1)), true), global3.x || !global3.x);
    global0 = select(!(!vec4<bool>(arg_3.b.a.x, 1136f < arg_1, !global0.x, global3.x)), vec4<bool>(!global0.x | false, (arg_2 >= -global2.x) | any(global0.wxy), global3.x, global3.x), false);
    return !select(!(!(!vec4<bool>(global3.x, global3.x, global0.x, true))), vec4<bool>(arg_3.b.c > arg_3.c, global3.x, 0u >= (arg_3.c | arg_3.a.x), !(true & arg_3.b.a.x)), true);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(u_input.a, min(~u_input.a, _wgslsmith_mult_i32(2147483647i, 0i)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-1539f)))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f))) + _wgslsmith_f_op_f32(-1588f * _wgslsmith_f_op_f32(f32(-1f) * -1296f)))), _wgslsmith_f_op_f32(f32(-1f) * -126f), global2.x, Struct_2(vec3<u32>(~(~4294967295u), 4294967295u, ~4294967295u << (_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 19825u, 47444u, 4294967295u), vec4<u32>(11173u, 1u, 58207u, 70031u)) % 32u)), Struct_1(select(select(vec2<bool>(true, global3.x), vec2<bool>(true, global3.x), global0.x), vec2<bool>(true, true), select(vec2<bool>(false, global3.x), global3.zy, vec2<bool>(true, global0.x))), _wgslsmith_add_vec3_i32(global2.yzw, select(vec3<i32>(global2.x, 2147483647i, u_input.a), vec3<i32>(-2147483647i, u_input.a, u_input.a), false)), 1u), abs(1u)));
    let var_0 = _wgslsmith_dot_vec2_u32(~_wgslsmith_add_vec2_u32(vec2<u32>(1u, ~4294967295u), vec2<u32>(1u, 1u)), ~firstLeadingBit(vec2<u32>(1u, 1u)));
    global3 = vec3<bool>(true, true, global3.x);
    global4 = array<vec3<f32>, 22>();
    var var_1 = reverseBits(-select(-vec4<i32>(global2.x, -2147483647i, u_input.a, 7137i), -vec4<i32>(-19982i, -37283i, u_input.a, global2.x), !vec4<bool>(global3.x, global3.x, global0.x, true))) | -_wgslsmith_clamp_vec4_i32(firstTrailingBit(vec4<i32>(u_input.a, u_input.a, global2.x, global2.x)), vec4<i32>(-global2.x, ~global2.x, firstLeadingBit(0i), min(-16066i, global2.x)), ~vec4<i32>(u_input.a, 2147483647i, global2.x, 2147483647i) & min(vec4<i32>(global2.x, 1i, global2.x, 1i), vec4<i32>(8040i, -32493i, u_input.a, global2.x)));
    var var_2 = Struct_4(Struct_2(~(~vec3<u32>(1u, var_0, 0u)) ^ vec3<u32>(var_0, ~5779u, var_0), Struct_1(!(!global3.xy), -global2.xxy, ~(var_0 & 0u)), ~0u), !(!(!func_5(454f, -500f, u_input.a, Struct_2(vec3<u32>(var_0, var_0, var_0), Struct_1(vec2<bool>(global0.x, global0.x), vec3<i32>(u_input.a, var_1.x, u_input.a), 7120u), 21429u)))), -42865i, _wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_3(Struct_4(Struct_2(vec3<u32>(4294967295u, var_0, var_0), Struct_1(global0.ww, vec3<i32>(0i, var_1.x, u_input.a), var_0), var_0), func_5(-1197f, -1040f, 2147483647i, Struct_2(vec3<u32>(0u, 70312u, 4294967295u), Struct_1(vec2<bool>(global3.x, false), vec3<i32>(1i, global2.x, -1i), var_0), var_0)), ~u_input.a, -680f, ~u_input.a), Struct_2(vec3<u32>(var_0, var_0, 4294967295u) | vec3<u32>(var_0, 0u, var_0), Struct_1(global3.xz, vec3<i32>(6784i, var_1.x, global2.x), var_0), _wgslsmith_dot_vec4_u32(vec4<u32>(31827u, var_0, 1u, 77635u), vec4<u32>(37938u, 32337u, var_0, 27201u))), 0u > _wgslsmith_dot_vec2_u32(vec2<u32>(var_0, 37457u), vec2<u32>(var_0, 0u)))).x * _wgslsmith_f_op_f32(1191f - -747f)), _wgslsmith_add_i32(-2147483647i, ~global2.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_i32(reverseBits(-_wgslsmith_clamp_vec3_i32(var_2.a.b.b, vec3<i32>(0i, u_input.a, -1i), vec3<i32>(var_1.x, global2.x, -2147483647i))), ~(~vec3<i32>(-1i, 1i, 0i)) >> (~_wgslsmith_clamp_vec3_u32(var_2.a.a, vec3<u32>(var_0, var_0, 29766u), var_2.a.a) % vec3<u32>(32u))), (var_2.c | ~global2.x) >> (1u % 32u));
}

