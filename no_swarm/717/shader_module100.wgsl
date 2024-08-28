struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: vec2<u32>,
    d: u32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec3<u32>,
    c: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: vec3<f32>,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: vec4<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<f32>,
    d: vec4<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 19> = array<vec3<f32>, 19>(vec3<f32>(-1910f, -1278f, -1284f), vec3<f32>(1140f, -1365f, 667f), vec3<f32>(-478f, 1596f, 545f), vec3<f32>(1238f, 1976f, -971f), vec3<f32>(-769f, -628f, -1000f), vec3<f32>(-249f, 755f, 451f), vec3<f32>(-1321f, -1000f, 1102f), vec3<f32>(-2028f, 314f, -1076f), vec3<f32>(341f, -1528f, -126f), vec3<f32>(322f, -238f, 129f), vec3<f32>(1000f, 964f, 932f), vec3<f32>(838f, 167f, 1780f), vec3<f32>(-234f, 1000f, 1270f), vec3<f32>(105f, -1187f, -1083f), vec3<f32>(-693f, 757f, 2332f), vec3<f32>(-580f, 783f, 358f), vec3<f32>(870f, 1171f, -464f), vec3<f32>(-933f, 125f, -1000f), vec3<f32>(460f, -534f, 674f));

var<private> global1: vec4<f32>;

var<private> global2: Struct_4 = Struct_4(Struct_1(true, vec3<f32>(176f, 827f, 599f), vec2<u32>(0u, 85106u), 33303u, vec2<u32>(0u, 0u)));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec2<u32>) -> vec3<f32> {
    global2 = Struct_4(global2.a);
    global1 = vec4<f32>(global2.a.b.x, _wgslsmith_f_op_f32(max(1000f, global2.a.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global1.x)) - 1628f)) - global2.a.b.x), 1735f);
    var var_0 = Struct_4(Struct_1(!any(vec4<bool>(global2.a.a, false, global2.a.a, false)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(751f - -1000f), 845f, _wgslsmith_f_op_f32(max(global1.x, global2.a.b.x)))), ~(~vec2<u32>(0u, arg_0.x) ^ ~vec2<u32>(25861u, arg_0.x)), 25505u, vec2<u32>(5074u, global2.a.e.x)));
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.b.x, global1.x, 368f, -264f) + vec4<f32>(-675f, -324f, 1253f, global1.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, -1631f, global2.a.b.x, 1758f) + vec4<f32>(-206f, 2019f, 2090f, var_0.a.b.x)), select(vec4<bool>(true, true, global2.a.a, false), vec4<bool>(global2.a.a, false, var_0.a.a, global2.a.a), vec4<bool>(true, false, global2.a.a, true)))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.a.b.x, -1000f, 273f, global1.x) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-170f, -986f, -1493f, 1275f) - vec4<f32>(global1.x, 1769f, -1305f, 183f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-598f, 1425f, -1000f, global1.x)) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global2.a.b.x, 360f, -1000f, 227f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(258f, 804f, global2.a.b.x, 1825f)))))));
    var var_1 = _wgslsmith_sub_vec4_u32(~_wgslsmith_add_vec4_u32(~countOneBits(vec4<u32>(var_0.a.c.x, 39545u, global2.a.e.x, arg_0.x)), vec4<u32>(var_0.a.e.x, global2.a.c.x, 28053u, 41475u)), max(~vec4<u32>(var_0.a.c.x, 36322u, u_input.c, arg_0.x), ~_wgslsmith_div_vec4_u32(vec4<u32>(7997u, 1u, 1u, var_0.a.e.x), vec4<u32>(20476u, u_input.c, 64314u, 1u))) | _wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(1880u, u_input.c, global2.a.c.x, global2.a.c.x), vec4<u32>(1u, u_input.c, 39188u, var_0.a.d)) ^ select(vec4<u32>(4294967295u, 1u, var_0.a.c.x, global2.a.c.x), vec4<u32>(global2.a.c.x, var_0.a.e.x, var_0.a.c.x, arg_0.x), var_0.a.a), ~(vec4<u32>(u_input.a, u_input.c, u_input.c, 61188u) << (vec4<u32>(0u, arg_0.x, 1u, 65797u) % vec4<u32>(32u)))));
    return vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -551f), -201f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1.x))), _wgslsmith_f_op_f32(exp2(global1.x)))));
}

fn func_4(arg_0: Struct_1, arg_1: bool) -> bool {
    let var_0 = Struct_3(Struct_2(vec4<f32>(_wgslsmith_f_op_vec3_f32(func_3(global2.a.c >> (vec2<u32>(1u, 0u) % vec2<u32>(32u)))).x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a.b.x) * _wgslsmith_f_op_f32(min(global2.a.b.x, global1.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(917f * 139f), -1236f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(436f - arg_0.b.x))), ~abs(firstLeadingBit(vec3<u32>(15470u, arg_0.e.x, 32049u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, global2.a.b.x) - global2.a.b.xz), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.b.x, global2.a.b.x) - global1.yy), any(vec2<bool>(arg_1, true)))))), !global2.a.a, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1493f * global2.a.b.x)) + 491f), _wgslsmith_f_op_f32(f32(-1f) * -677f), -2510f), arg_0);
    var var_1 = var_0;
    var var_2 = vec2<u32>(~_wgslsmith_mult_u32(93988u, ~var_1.a.b.x), 41695u) & ~(~arg_0.c);
    let var_3 = var_0.d;
    var_1 = var_0;
    return ~_wgslsmith_sub_i32(u_input.b.x & ~u_input.d.x, u_input.b.x) > (i32(-1i) * -_wgslsmith_dot_vec3_i32(countOneBits(u_input.b), u_input.e ^ u_input.e));
}

fn func_2() -> Struct_4 {
    var var_0 = !func_4(Struct_1(!(u_input.b.x > -3180i), _wgslsmith_f_op_vec3_f32(func_3(vec2<u32>(19232u, u_input.a) >> (global2.a.e % vec2<u32>(32u)))), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, 0u) ^ vec2<u32>(0u, 0u), vec2<u32>(35736u, global2.a.d)), ~1u, ~_wgslsmith_mod_vec2_u32(global2.a.e, vec2<u32>(global2.a.c.x, 4294967295u))), global2.a.a);
    let var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.a.b.x, -159f, global2.a.b.x, global2.a.b.x) - vec4<f32>(237f, -972f, -2176f, 2161f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(926f, global1.x, -1905f, 131f) + vec4<f32>(1000f, -1000f, global2.a.b.x, 1774f)), vec4<bool>(false, true, all(vec3<bool>(true, false, true)), !global2.a.a)))), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(firstLeadingBit(global2.a.d), u_input.c, ~global2.a.d), vec3<u32>(~global2.a.d, global2.a.d, reverseBits(global2.a.c.x)), select(vec3<u32>(4294967295u, u_input.c, global2.a.d), _wgslsmith_add_vec3_u32(vec3<u32>(32262u, global2.a.e.x, 1u), vec3<u32>(global2.a.e.x, 1u, 92993u)), !vec3<bool>(global2.a.a, global2.a.a, false))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(847f, -495f)))))));
    global1 = var_1.a;
    var var_2 = Struct_3(Struct_2(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.c.x, -401f, global2.a.b.x, global2.a.b.x) + vec4<f32>(global2.a.b.x, global1.x, global2.a.b.x, 126f))))), var_1.b, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global2.a.b.x, -1815f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global2.a.b.zx + vec2<f32>(var_1.a.x, 860f)) + _wgslsmith_f_op_vec2_f32(-var_1.a.yz)), !vec2<bool>(global2.a.a, global2.a.a)))), !global2.a.a, _wgslsmith_f_op_vec3_f32(select(global0[_wgslsmith_index_u32(1u >> (_wgslsmith_mult_u32(~66297u, global2.a.e.x) % 32u), 19u)], _wgslsmith_f_op_vec3_f32(-global1.yxy), vec3<bool>(true, true, true))), Struct_1(any(vec3<bool>(any(vec3<bool>(true, true, true)), global2.a.a, global1.x > -531f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(772f, 1435f, 1000f))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global1.x, 944f, global2.a.b.x), var_1.a.wyw)))), var_1.b.zz, select(5949u, global2.a.d ^ abs(4294967295u), false), (~var_1.b.yx ^ _wgslsmith_sub_vec2_u32(vec2<u32>(global2.a.d, var_1.b.x), var_1.b.zz)) ^ _wgslsmith_add_vec2_u32(max(vec2<u32>(u_input.c, 4294967295u), vec2<u32>(77274u, 71139u)), abs(vec2<u32>(global2.a.e.x, 1u)))));
    var var_3 = ~(-u_input.e.x);
    return Struct_4(global2.a);
}

fn func_1(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: vec4<u32>) -> u32 {
    var var_0 = u_input.e.yy;
    var_0 = u_input.b.zy;
    global2 = func_2();
    return 11225u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global1.x, -1343f, global2.a.b.x, 836f))), _wgslsmith_div_vec4_f32(vec4<f32>(-1000f, 1604f, 2060f, global2.a.b.x), vec4<f32>(global2.a.b.x, -563f, global1.x, -984f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, 418f, -441f, global2.a.b.x)))), ~vec3<u32>(46808u, select(1460u, global2.a.c.x ^ u_input.c, global2.a.a), 0u), global2.a.b.xx);
    var var_1 = Struct_1(global2.a.a & global2.a.a, global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(func_1(global2.a, _wgslsmith_f_op_vec2_f32(min(global1.wy, vec2<f32>(740f, global1.x))), ~vec4<u32>(24314u, global2.a.e.x, 4294967295u, u_input.c)), (var_0.b.x ^ 0u) << (_wgslsmith_add_u32(global2.a.d, var_0.b.x) % 32u), 11088u) | func_2().a.d, 19u)], var_0.b.yy, min(reverseBits(var_0.b.x), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(firstLeadingBit(vec4<u32>(4294967295u, 17952u, u_input.a, var_0.b.x)), vec4<u32>(global2.a.e.x, 4926u, global2.a.e.x, global2.a.e.x) & vec4<u32>(u_input.a, 49750u, 1u, 0u)), ~min(vec4<u32>(49455u, 55501u, 0u, 6702u), vec4<u32>(u_input.c, 0u, 14112u, var_0.b.x)))), vec2<u32>(max(var_0.b.x | ~var_0.b.x, func_2().a.e.x), 23079u));
    var_1 = func_2().a;
    var var_2 = global2.a.b.x;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1038f));
    let var_4 = -30445i;
    let var_5 = Struct_3(Struct_2(vec4<f32>(_wgslsmith_f_op_f32(var_0.a.x + var_1.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x * 294f) - var_0.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-925f - var_1.b.x)), var_0.a.x), vec3<u32>(var_0.b.x, countOneBits(34852u), ~8870u) ^ ~(var_0.b << (var_0.b % vec3<u32>(32u))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.x, _wgslsmith_f_op_f32(min(-1260f, global1.x))) - vec2<f32>(-335f, -148f))), global2.a.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-239f, global1.x, var_1.b.x))))), func_2().a);
    let x = u_input.a;
    s_output = StorageBuffer(var_5.d.e.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.a.b.x, -1577f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -2497f))), var_1.a)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.a.b.x + var_1.b.x) + -463f))))), vec4<f32>(var_1.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -146f) + _wgslsmith_f_op_f32(min(var_0.a.x, -837f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1015f + _wgslsmith_f_op_f32(-625f + var_0.c.x)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), -1184f), ~vec4<u32>(4294967295u, global2.a.d, ~func_2().a.d, reverseBits(1u)), var_5.d.d);
}

