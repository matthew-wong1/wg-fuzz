struct Struct_1 {
    a: f32,
    b: u32,
    c: vec2<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec2<u32>,
    c: Struct_2,
    d: vec4<bool>,
    e: vec3<u32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec3<u32>,
    c: vec3<f32>,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: bool;

var<private> global2: Struct_4 = Struct_4(vec4<bool>(false, false, false, false), vec3<u32>(0u, 35463u, 0u), vec3<f32>(212f, 1346f, 397f));

var<private> global3: array<Struct_2, 32> = array<Struct_2, 32>(Struct_2(false, Struct_1(564f, 1u, vec2<f32>(693f, -1210f)), 76443u), Struct_2(false, Struct_1(327f, 72760u, vec2<f32>(-579f, 1851f)), 1u), Struct_2(true, Struct_1(-696f, 48927u, vec2<f32>(-1735f, -1017f)), 4294967295u), Struct_2(false, Struct_1(-1298f, 0u, vec2<f32>(1531f, -1000f)), 0u), Struct_2(false, Struct_1(1000f, 90121u, vec2<f32>(-1272f, 1088f)), 26224u), Struct_2(true, Struct_1(-2526f, 21203u, vec2<f32>(1005f, 939f)), 4294967295u), Struct_2(false, Struct_1(1791f, 1u, vec2<f32>(-1340f, -1427f)), 1u), Struct_2(false, Struct_1(-397f, 1u, vec2<f32>(1280f, -213f)), 0u), Struct_2(true, Struct_1(-1202f, 4294967295u, vec2<f32>(-382f, -336f)), 16385u), Struct_2(true, Struct_1(-2017f, 1u, vec2<f32>(1034f, -650f)), 10335u), Struct_2(false, Struct_1(198f, 4294967295u, vec2<f32>(924f, -359f)), 5734u), Struct_2(false, Struct_1(112f, 8546u, vec2<f32>(-645f, 838f)), 83130u), Struct_2(false, Struct_1(1118f, 0u, vec2<f32>(239f, -1400f)), 9723u), Struct_2(true, Struct_1(1169f, 1769u, vec2<f32>(642f, -969f)), 81039u), Struct_2(false, Struct_1(345f, 12835u, vec2<f32>(-1000f, 517f)), 38071u), Struct_2(false, Struct_1(1093f, 13475u, vec2<f32>(711f, 1343f)), 1u), Struct_2(true, Struct_1(-120f, 0u, vec2<f32>(1247f, 555f)), 108814u), Struct_2(false, Struct_1(593f, 49345u, vec2<f32>(250f, -573f)), 4294967295u), Struct_2(true, Struct_1(-1234f, 51654u, vec2<f32>(-1217f, -311f)), 23055u), Struct_2(true, Struct_1(1325f, 13024u, vec2<f32>(504f, 2088f)), 13506u), Struct_2(false, Struct_1(1205f, 4294967295u, vec2<f32>(559f, -1654f)), 0u), Struct_2(true, Struct_1(-294f, 17622u, vec2<f32>(2231f, -1784f)), 45095u), Struct_2(false, Struct_1(841f, 37411u, vec2<f32>(1641f, 148f)), 4294967295u), Struct_2(true, Struct_1(-722f, 17312u, vec2<f32>(-1741f, -421f)), 0u), Struct_2(true, Struct_1(-1000f, 27206u, vec2<f32>(617f, -147f)), 4294967295u), Struct_2(false, Struct_1(322f, 4294967295u, vec2<f32>(-333f, 1091f)), 55781u), Struct_2(true, Struct_1(-295f, 4294967295u, vec2<f32>(583f, 668f)), 0u), Struct_2(true, Struct_1(-843f, 4294967295u, vec2<f32>(-2803f, -1991f)), 11928u), Struct_2(false, Struct_1(-428f, 8403u, vec2<f32>(-2200f, 130f)), 1u), Struct_2(false, Struct_1(112f, 0u, vec2<f32>(285f, -1602f)), 64533u), Struct_2(true, Struct_1(-689f, 24471u, vec2<f32>(1101f, -1000f)), 0u), Struct_2(false, Struct_1(-994f, 4294967295u, vec2<f32>(927f, -1696f)), 4294967295u));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3() -> u32 {
    global3 = array<Struct_2, 32>();
    return global2.b.x;
}

fn func_2(arg_0: Struct_4) -> vec3<u32> {
    global2 = arg_0;
    global0 = Struct_3(_wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(~global0.e, vec3<u32>(~global0.e.x, ~61854u, func_3())), vec3<u32>(firstLeadingBit(arg_0.b.x), ~select(arg_0.b.x, 4294967295u, global0.d.x), ~firstLeadingBit(global2.b.x))), vec2<u32>(1u, global2.b.x), Struct_2(global0.d.x, Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1722f, arg_0.c.x), arg_0.c.x, any(global2.a))), 4745u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global2.c.zx))), 4294967295u), !vec4<bool>(true, !(arg_0.c.x == global0.c.b.c.x), true, global2.a.x), global2.b);
    global3 = array<Struct_2, 32>();
    let var_0 = arg_0.b.x;
    global3 = array<Struct_2, 32>();
    return arg_0.b;
}

fn func_1() -> bool {
    let var_0 = global0.c.b;
    global0 = Struct_3(~(~vec3<u32>(_wgslsmith_dot_vec3_u32(global2.b, vec3<u32>(54508u, global2.b.x, 56978u)), global2.b.x ^ 0u, 1u)), select(global2.b.xz, vec2<u32>(28138u, global2.b.x), _wgslsmith_f_op_f32(step(-1001f, -296f)) <= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(1000f, var_0.c.x))))), global3[_wgslsmith_index_u32(var_0.b, 32u)], !select(global0.d, !select(vec4<bool>(global0.d.x, global2.a.x, global0.c.a, global0.d.x), global2.a, global2.a), global2.a.x), firstTrailingBit(~(global0.a | global0.e)) ^ ~_wgslsmith_add_vec3_u32(func_2(Struct_4(global2.a, vec3<u32>(6321u, global2.b.x, global0.a.x), vec3<f32>(global2.c.x, global2.c.x, global0.c.b.a))), global0.e));
    global1 = select(true, true, global2.a.x);
    global1 = global2.a.x;
    global3 = array<Struct_2, 32>();
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.c.x) - global2.c.x)))) != global0.c.b.c.x;
}

fn func_4(arg_0: vec4<u32>, arg_1: vec2<bool>, arg_2: Struct_2) -> Struct_3 {
    global0 = Struct_3(~(~(_wgslsmith_mod_vec3_u32(global2.b, vec3<u32>(47564u, 61028u, 4294967295u)) << (_wgslsmith_mult_vec3_u32(vec3<u32>(arg_0.x, global0.a.x, arg_2.b.b), global2.b) % vec3<u32>(32u)))), select(global2.b.yx, abs(global2.b.yy) ^ ~arg_0.yz, arg_1), arg_2, !global2.a, ~firstTrailingBit(~arg_0.yyz));
    var var_0 = global2.c.x;
    global0 = Struct_3(vec3<u32>(global0.b.x, ~4294967295u, _wgslsmith_add_u32(~global2.b.x, ~max(9072u, arg_0.x))), global2.b.yy, Struct_2(false, arg_2.b, abs(select(global0.a.x << (arg_0.x % 32u), _wgslsmith_dot_vec2_u32(global0.b, global0.a.zz), all(global2.a.yx)))), select(select(!select(vec4<bool>(global0.d.x, global0.d.x, true, global2.a.x), global2.a, global2.a.x), vec4<bool>(arg_1.x, true, !global0.c.a, true), vec4<bool>(all(vec2<bool>(false, global2.a.x)), any(global2.a.xx), !global0.d.x, any(global0.d.wz))), select(global2.a, !select(vec4<bool>(false, global0.c.a, global2.a.x, arg_2.a), global0.d, false), true), false), func_2(Struct_4(vec4<bool>(any(vec4<bool>(false, false, arg_2.a, false)), false, true, false), select(min(arg_0.yzy, vec3<u32>(1u, global0.c.b.b, arg_0.x)), ~arg_0.wwy, select(vec3<bool>(global0.d.x, false, true), vec3<bool>(arg_2.a, arg_2.a, arg_1.x), false)), global2.c)));
    global0 = Struct_3(global0.e, select(_wgslsmith_mult_vec2_u32(vec2<u32>(countOneBits(arg_0.x), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, global2.b.x, global0.c.c, 23971u), arg_0)), func_2(Struct_4(global2.a, arg_0.zzw, global2.c)).zx), ~reverseBits(~arg_0.xy), select(arg_1, !(!vec2<bool>(global0.c.a, global0.d.x)), any(vec2<bool>(global0.c.a, true)))), Struct_2(!global0.d.x, arg_2.b, countOneBits(abs(reverseBits(arg_0.x)))), select(!global2.a, select(vec4<bool>(all(global2.a), true, 4294967295u > global2.b.x, global2.a.x), vec4<bool>(all(arg_1), true, arg_2.a, true), global0.d), global0.d), global0.e);
    let var_1 = Struct_1(127f, global2.b.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.c.x, -360f)));
    return Struct_3(vec3<u32>(max(10197u, arg_2.b.b), global2.b.x, ~_wgslsmith_mod_u32(~arg_0.x, abs(arg_2.c))), reverseBits(vec2<u32>(15371u, arg_2.c >> (_wgslsmith_sub_u32(var_1.b, 46348u) % 32u))), global3[_wgslsmith_index_u32(4294967295u, 32u)], select(global0.d, !(!select(vec4<bool>(global0.d.x, false, true, arg_1.x), vec4<bool>(true, arg_1.x, global0.c.a, true), true)), arg_2.a), _wgslsmith_mult_vec3_u32(vec3<u32>(global2.b.x, 0u, _wgslsmith_div_u32(abs(arg_2.c), _wgslsmith_sub_u32(arg_2.b.b, global0.a.x))), ~global2.b));
}

fn func_5(arg_0: Struct_3) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(global2.c.x)), 734f)), _wgslsmith_f_op_f32(global2.c.x + _wgslsmith_f_op_f32(max(2131f, -1737f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.c.b.c.x, 445f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -2036f), func_4(vec4<u32>(arg_0.e.x, 26025u, 1u, 1u), arg_0.d.ww, global0.c).c.b.a)))));
    let var_1 = _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(abs(reverseBits(u_input.d.x)), -1i, _wgslsmith_mod_i32(firstTrailingBit(_wgslsmith_clamp_i32(39083i, u_input.a.x, 0i)), i32(-1i) * -u_input.d.x)), u_input.a.x, -1i | _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, u_input.d.x, 29700i), vec3<i32>(u_input.d.x, u_input.a.x, 0i)), 6050i));
    let var_2 = _wgslsmith_div_vec2_f32(vec2<f32>(global2.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_0.c.b.c.x, global2.c.x)) * arg_0.c.b.a) + _wgslsmith_f_op_f32(arg_0.c.b.c.x + 562f))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global2.c.xx)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1216f, var_0.x)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1948f, -1033f)))), !(-301f == global0.c.b.a))));
    let var_3 = Struct_5(global0.c.b);
    var var_4 = Struct_4(vec4<bool>(global2.a.x, global0.d.x, max(-1i, firstTrailingBit(23801i)) != select(0i, i32(-1i) * -33155i, false), any(global2.a.ywx)), _wgslsmith_mod_vec3_u32(max(firstLeadingBit(global0.a & vec3<u32>(117403u, 1u, 0u)), global2.b), _wgslsmith_mult_vec3_u32(min(~vec3<u32>(var_3.a.b, var_3.a.b, 4294967295u), global0.e), _wgslsmith_mod_vec3_u32(vec3<u32>(68856u, var_3.a.b, var_3.a.b), global0.a | global0.e))), _wgslsmith_f_op_vec3_f32(min(global2.c, global2.c)));
    return Struct_1(-746f, ~arg_0.b.x, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(trunc(var_3.a.c)))));
}

fn func_6(arg_0: vec2<bool>, arg_1: i32, arg_2: Struct_1) -> Struct_1 {
    let var_0 = Struct_5(Struct_1(_wgslsmith_f_op_f32(256f - _wgslsmith_f_op_f32(sign(-389f))), _wgslsmith_div_u32((global2.b.x | arg_2.b) | _wgslsmith_add_u32(global0.c.c, global2.b.x), 0u), vec2<f32>(global0.c.b.c.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-363f)))))));
    var var_1 = _wgslsmith_f_op_vec2_f32(max(func_4(max(vec4<u32>(global0.a.x, global2.b.x, global2.b.x, 1u), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, var_0.a.b, var_0.a.b, global0.c.b.b), vec4<u32>(1u, 20272u, var_0.a.b, global2.b.x))) >> ((max(vec4<u32>(arg_2.b, 18045u, var_0.a.b, var_0.a.b), vec4<u32>(var_0.a.b, 29528u, global0.b.x, arg_2.b)) | reverseBits(vec4<u32>(global0.b.x, arg_2.b, var_0.a.b, 4294967295u))) % vec4<u32>(32u)), global0.d.zw, global0.c).c.b.c, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.c.b.c * global2.c.zz) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.c.b.a, arg_2.c.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.c.b.c) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1263f, 1148f)) + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(global2.c.x, arg_2.a)))))))));
    var var_2 = func_4(_wgslsmith_div_vec4_u32(firstTrailingBit(~countOneBits(vec4<u32>(20297u, 30696u, 4294967295u, 71445u))), vec4<u32>(arg_2.b, global2.b.x, ~arg_2.b, ~(global2.b.x ^ global2.b.x))), vec2<bool>(!(!arg_0.x | global0.d.x), any(vec4<bool>(global0.d.x, global0.c.a, arg_0.x, false)) | (!arg_0.x && true)), Struct_2(func_1(), func_4(select(vec4<u32>(global0.b.x, 70579u, arg_2.b, var_0.a.b), vec4<u32>(var_0.a.b, 0u, var_0.a.b, 0u), any(vec2<bool>(false, false))), vec2<bool>(func_4(vec4<u32>(10103u, global0.e.x, 5564u, 4294967295u), arg_0, global3[_wgslsmith_index_u32(global0.e.x, 32u)]).d.x, func_4(vec4<u32>(var_0.a.b, 35697u, arg_2.b, 31684u), vec2<bool>(true, true), Struct_2(false, var_0.a, arg_2.b)).c.a), Struct_2(func_4(vec4<u32>(1u, var_0.a.b, 49104u, 36308u), global0.d.ww, Struct_2(false, global0.c.b, global0.b.x)).c.a, Struct_1(var_1.x, 0u, global2.c.yy), var_0.a.b)).c.b, func_5(Struct_3(vec3<u32>(arg_2.b, global2.b.x, 4294967295u), global2.b.yy << (global0.b % vec2<u32>(32u)), Struct_2(false, var_0.a, 4294967295u), !global0.d, _wgslsmith_mult_vec3_u32(vec3<u32>(0u, 36817u, 13259u), global0.a))).b)).c.b;
    global0 = Struct_3(_wgslsmith_mult_vec3_u32(firstLeadingBit(global2.b), vec3<u32>(func_3(), 15888u, ~(~38037u))), ~countOneBits(func_4(abs(vec4<u32>(arg_2.b, global2.b.x, var_0.a.b, 22921u)), !vec2<bool>(global2.a.x, true), Struct_2(false, global0.c.b, 4294967295u)).e.yy), global0.c, vec4<bool>(!global2.a.x, all(func_4(vec4<u32>(48800u, 15593u, 1u, 1u), !global0.d.xx, func_4(vec4<u32>(0u, global2.b.x, 33372u, 4341u), arg_0, global0.c).c).d.wwz), true, any(select(select(vec3<bool>(global2.a.x, arg_0.x, true), global0.d.xxx, false), select(vec3<bool>(true, false, arg_0.x), vec3<bool>(global0.c.a, global2.a.x, global2.a.x), global2.a.wyx), vec3<bool>(false, false, false)))), func_4(~firstTrailingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(35472u, global0.e.x, 1u, var_0.a.b), vec4<u32>(var_2.b, var_0.a.b, 49152u, arg_2.b))), !global0.d.xy, Struct_2(any(!vec2<bool>(global0.c.a, arg_0.x)), Struct_1(_wgslsmith_f_op_f32(-1000f * -1552f), arg_2.b, vec2<f32>(1029f, -2065f)), 4294967295u)).e);
    let var_3 = func_4(vec4<u32>(var_2.b, 44243u & ~min(74002u, var_2.b), var_2.b, 1u), !select(select(!vec2<bool>(false, arg_0.x), select(vec2<bool>(global2.a.x, arg_0.x), vec2<bool>(false, false), vec2<bool>(true, true)), select(global2.a.xx, vec2<bool>(true, global2.a.x), false)), select(func_4(vec4<u32>(1u, var_0.a.b, global2.b.x, 0u), global2.a.yw, global0.c).d.ww, global2.a.yw, false), -12034i >= ~arg_1), func_4(firstTrailingBit(~(~vec4<u32>(global0.a.x, 1u, 0u, 4294967295u))), vec2<bool>(func_4(vec4<u32>(36585u, 21699u, 25449u, var_2.b), global0.d.yz, func_4(vec4<u32>(62680u, 74339u, var_2.b, 0u), vec2<bool>(false, global2.a.x), global0.c).c).d.x, true), Struct_2(global0.c.a, func_5(func_4(vec4<u32>(var_2.b, 0u, 0u, global2.b.x), arg_0, Struct_2(false, Struct_1(-974f, 27257u, vec2<f32>(global2.c.x, var_2.a)), global0.e.x))), global2.b.x)).c).c;
    return func_4(~vec4<u32>(17445u, abs(global0.c.c | 90899u), ~(4294967295u ^ arg_2.b), ~var_3.b.b), global2.a.zw, global3[_wgslsmith_index_u32(firstTrailingBit(arg_2.b) ^ func_5(Struct_3(global2.b >> (vec3<u32>(4294967295u, 19240u, 4294967295u) % vec3<u32>(32u)), global0.e.zx, global0.c, global2.a, global2.b >> (vec3<u32>(global2.b.x, 45308u, 32022u) % vec3<u32>(32u)))).b, 32u)]).c.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(global0.d.wy, reverseBits(~(~34606i)), func_5(func_4(~_wgslsmith_mod_vec4_u32(vec4<u32>(global0.b.x, 1183u, 4294967295u, 0u), vec4<u32>(1u, global2.b.x, 5415u, 30393u)), vec2<bool>(func_1(), u_input.c.x == u_input.a.x), Struct_2(true, global0.c.b, global2.b.x))));
    var_0 = global0.c.b;
    var var_1 = global0.d.yx;
    var_1 = func_4(vec4<u32>(22206u, 1u, _wgslsmith_add_u32(func_2(Struct_4(global0.d, vec3<u32>(global2.b.x, 10630u, 1u), vec3<f32>(1695f, global0.c.b.a, var_0.c.x))).x, global2.b.x), var_0.b), select(global0.d.yy, !vec2<bool>(true, any(global2.a.yzw)), global2.a.wy), global0.c).d.xx;
    var var_2 = abs(vec4<u32>(22938u, 69582u, global0.c.c, _wgslsmith_mult_u32(max(1u, 1u), ~global0.a.x)));
    let var_3 = all(vec4<bool>(false, global2.a.x, !global2.a.x, any(select(global0.d, select(vec4<bool>(false, global0.c.a, true, false), vec4<bool>(true, global0.c.a, false, global0.c.a), global0.d), global2.a))));
    var var_4 = Struct_4(select(global2.a, vec4<bool>(select(all(vec2<bool>(var_1.x, false)), false, !var_1.x), !any(global2.a.zx), global2.a.x, false), true), select(~global2.b, _wgslsmith_sub_vec3_u32(func_2(Struct_4(global2.a, var_2.yzx, global2.c)), max(vec3<u32>(1u, 12777u, 41734u), ~global2.b)), !select(global0.d.yyz, select(global0.d.xzw, vec3<bool>(true, true, false), vec3<bool>(false, false, true)), !global2.a.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-global0.c.b.a), _wgslsmith_f_op_f32(f32(-1f) * -569f), _wgslsmith_f_op_f32(max(global0.c.b.a, var_0.c.x))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-global2.c)))))));
    global3 = array<Struct_2, 32>();
    var_2 = firstLeadingBit(~_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 20577u, var_2.x, var_4.b.x), ~vec4<u32>(var_2.x, global0.e.x, 4294967295u, var_4.b.x))) ^ select(_wgslsmith_sub_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 45492u, var_4.b.x, var_0.b), vec4<u32>(0u, var_4.b.x, global0.e.x, 112328u)), vec4<u32>(~40363u, 12981u, _wgslsmith_div_u32(1u, 4294967295u), 32812u)), vec4<u32>(1u, var_2.x, 1u, 59415u), global2.a.x);
    let x = u_input.a;
    s_output = StorageBuffer((vec4<u32>(1u, var_0.b, 29487u, _wgslsmith_sub_u32(global0.b.x, 0u)) ^ ~_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, global2.b.x, var_4.b.x, 4294967295u), vec4<u32>(var_2.x, 8646u, var_4.b.x, global2.b.x))) & vec4<u32>(0u, var_2.x, global0.e.x, firstTrailingBit(max(4294967295u, var_4.b.x))), vec2<i32>(u_input.a.x, 2147483647i));
}

