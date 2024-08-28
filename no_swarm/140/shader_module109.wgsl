struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: i32,
    d: f32,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_2,
    c: Struct_1,
    d: vec2<u32>,
    e: Struct_2,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_4,
    c: u32,
    d: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
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

var<private> global0: array<vec3<bool>, 24> = array<vec3<bool>, 24>(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: i32) -> i32 {
    global0 = array<vec3<bool>, 24>();
    var var_0 = select(select(!select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(true, true), false), !select(select(vec2<bool>(false, true), vec2<bool>(false, true), true), vec2<bool>(false, true), true), any(select(vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(true, true), false), vec2<bool>(false, true)))), vec2<bool>(!(arg_2 <= arg_2), any(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true))) != false), select(select(select(vec2<bool>(false, false), select(vec2<bool>(true, true), vec2<bool>(true, true), false), vec2<bool>(true, true)), vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false)), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true)))), vec2<bool>(true, true), true));
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1799f - arg_1)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(236f - -673f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1180f) - _wgslsmith_f_op_f32(abs(arg_1)))), arg_1, -2501f));
    var_0 = vec2<bool>(true, true);
    let var_2 = vec3<i32>(_wgslsmith_div_i32(_wgslsmith_div_i32(arg_2, _wgslsmith_div_i32(arg_2, 62522i)), _wgslsmith_add_i32(arg_2, 26635i)), ~1i, -arg_2);
    return -45466i;
}

fn func_2(arg_0: vec4<f32>, arg_1: f32, arg_2: f32) -> Struct_5 {
    global0 = array<vec3<bool>, 24>();
    var var_0 = abs(select(_wgslsmith_dot_vec2_i32(vec2<i32>(~(-64267i), min(17330i, -24297i)), _wgslsmith_sub_vec2_i32(select(vec2<i32>(-1i, 0i), vec2<i32>(-52630i, 12419i), false), ~vec2<i32>(-2147483647i, -1i))), ~func_3(u_input.b, -1031f, -41054i) ^ _wgslsmith_dot_vec3_i32(vec3<i32>(22692i, 1i, -28840i), ~vec3<i32>(90891i, -1i, 7154i)), true));
    var var_1 = vec4<bool>(arg_0.x != _wgslsmith_f_op_f32(f32(-1f) * -1860f), true, true, !all(vec2<bool>(false, false)) || (false && all(vec4<bool>(true, true, true, true))));
    global0 = array<vec3<bool>, 24>();
    var var_2 = Struct_4(vec2<u32>(u_input.b, _wgslsmith_dot_vec4_u32(vec4<u32>(~0u, 1u, ~u_input.b, max(u_input.a.x, 0u)), _wgslsmith_clamp_vec4_u32(~vec4<u32>(1u, u_input.b, 4294967295u, 53504u), vec4<u32>(u_input.b, 18070u, 50361u, u_input.a.x) & vec4<u32>(13757u, 2109u, u_input.b, u_input.b), abs(vec4<u32>(u_input.a.x, u_input.a.x, 1u, 40798u))))), Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)), vec4<u32>(select(u_input.a.x, 4294967295u, true), u_input.a.x, u_input.a.x, 1u), vec4<bool>(true, var_1.x, true, var_1.x))), Struct_1(arg_1, countOneBits(select(vec4<u32>(48863u, u_input.b, 4294967295u, 46385u) >> (vec4<u32>(1u, u_input.b, u_input.a.x, 23312u) % vec4<u32>(32u)), vec4<u32>(0u, u_input.a.x, 49514u, u_input.a.x) | vec4<u32>(12144u, u_input.b, u_input.a.x, u_input.b), !var_1.x)), !vec4<bool>(true, false, all(var_1.zy), !var_1.x)), vec2<u32>(u_input.a.x ^ firstLeadingBit(~u_input.a.x), reverseBits(u_input.a.x)), Struct_2(Struct_1(_wgslsmith_f_op_f32(1864f * _wgslsmith_f_op_f32(296f + arg_1)), _wgslsmith_div_vec4_u32(~vec4<u32>(1u, 49585u, u_input.b, u_input.a.x), ~vec4<u32>(1u, u_input.b, 2020u, 1u)), !(!vec4<bool>(true, var_1.x, false, false)))));
    return Struct_5(Struct_1(arg_1, var_2.e.a.b, !vec4<bool>(u_input.a.x <= var_2.b.a.b.x, !var_1.x, true, true)), Struct_4(abs(abs(var_2.a | u_input.a.xx)), Struct_2(Struct_1(-535f, max(vec4<u32>(4294967295u, 18535u, u_input.a.x, 55384u), vec4<u32>(13263u, u_input.a.x, 1u, 25351u)), select(vec4<bool>(var_2.c.c.x, var_1.x, true, var_1.x), vec4<bool>(var_2.c.c.x, true, true, false), var_2.e.a.c))), var_2.b.a, u_input.a.zz, Struct_2(var_2.e.a)), ~97524u, _wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(2321f, _wgslsmith_div_f32(arg_0.x, var_2.e.a.a)))));
}

fn func_4(arg_0: Struct_5) -> bool {
    global0 = array<vec3<bool>, 24>();
    var var_0 = func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.d, _wgslsmith_f_op_f32(sign(arg_0.a.a)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(703f * arg_0.d), _wgslsmith_f_op_f32(-arg_0.d))), -2346f)), 742f, 192f).b.b;
    var var_1 = arg_0.a.c.xzy;
    var_1 = arg_0.b.b.a.c.yxz;
    var_0 = Struct_2(arg_0.a);
    return true;
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(step(-1528f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -375f))))))), vec4<u32>(~(~(4294967295u ^ u_input.a.x)), 4294967295u, ~_wgslsmith_mult_u32(u_input.b, u_input.b) | ~(~u_input.a.x), firstTrailingBit(~43394u)), vec4<bool>(!all(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), true)), func_4(func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1023f, -2086f, 292f, -316f)), -2282f, _wgslsmith_f_op_f32(f32(-1f) * -393f))), true, !(!(u_input.b <= 4294967295u))));
    let var_1 = -abs(vec4<i32>(-1i, ~(-2147483647i), _wgslsmith_div_i32(~26071i, 6988i), ~reverseBits(-21999i)));
    var_0 = Struct_1(-1000f, var_0.b, func_2(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_0.a, var_0.a, 262f, var_0.a), vec4<f32>(608f, var_0.a, -960f, -282f))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.a * 1f))), -1476f).a.c);
    var var_2 = var_0.a;
    global0 = array<vec3<bool>, 24>();
    return func_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(284f, var_0.a, var_0.a, 112f), vec4<f32>(143f, var_0.a, var_0.a, 1030f), vec4<bool>(var_0.c.x, true, true, var_0.c.x))), _wgslsmith_div_vec4_f32(vec4<f32>(var_0.a, var_0.a, 1127f, -988f), vec4<f32>(-288f, -225f, var_0.a, var_0.a))))), vec4<f32>(780f, _wgslsmith_f_op_f32(f32(-1f) * -929f), 496f, _wgslsmith_f_op_f32(max(var_0.a, 1274f))), var_0.c.x)), 1359f, _wgslsmith_f_op_f32(var_0.a * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -599f)))).b.e.a;
}

fn func_5(arg_0: Struct_1) -> f32 {
    var var_0 = -2147483647i;
    let var_1 = arg_0.c;
    var var_2 = Struct_3(_wgslsmith_mod_i32(-10541i, 1i), false, -firstTrailingBit(1i), -538f);
    let var_3 = arg_0;
    var_2 = Struct_3(-var_2.c, !all(vec2<bool>(var_3.c.x, var_3.a <= var_3.a)), _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(var_2.a, 41960i), _wgslsmith_dot_vec2_i32(vec2<i32>(7223i, 18105i), vec2<i32>(var_2.a, var_2.c)), 1i), -vec3<i32>(-1i, var_2.c, 2147483647i)), ~_wgslsmith_clamp_vec3_i32(vec3<i32>(var_2.a, var_2.c, -52891i) & vec3<i32>(-48268i, var_2.c, var_2.a), vec3<i32>(var_2.a, -1i, var_2.a) | vec3<i32>(1821i, -2147483647i, 58i), vec3<i32>(1i, 1i, 1i))), _wgslsmith_f_op_f32(func_1().a - var_3.a));
    return var_3.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec3_u32(~u_input.a, u_input.a);
    global0 = array<vec3<bool>, 24>();
    global0 = array<vec3<bool>, 24>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(384f - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(1203f)), _wgslsmith_f_op_f32(f32(-1f) * -1635f)))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_5(func_1()))))) - func_2(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-341f, 534f, -1000f, -1000f))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(846f, 885f, -1621f, 2376f), vec4<f32>(603f, -411f, -390f, 179f), true)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -677f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1396f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(Struct_1(158f, vec4<u32>(4294967295u, u_input.b, u_input.b, u_input.a.x), vec4<bool>(true, false, false, true))))))).d);
    var_1 = -403f;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_1().a - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-265f * 476f) - _wgslsmith_f_op_f32(floor(275f)))))), ~(~vec4<u32>(var_0.x >> (var_0.x % 32u), var_0.x, ~var_0.x, u_input.b)), vec4<bool>(!any(func_1().c), -1146f <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-479f)), _wgslsmith_f_op_f32(748f + -690f)), func_1().c.x & any(global0[_wgslsmith_index_u32(0u, 24u)]), func_1().c.x));
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_2.a, var_2.a), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.a, var_2.a) * vec2<f32>(var_2.a, 2243f))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-497f, var_2.a)))))) * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(280f, -191f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.a, -824f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(~(-1944i) << (_wgslsmith_sub_u32(65191u, u_input.a.x) % 32u), -5602i, 30358i));
}

