struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: vec4<i32>,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec3<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<i32>,
    c: vec4<i32>,
    d: f32,
}

struct Struct_5 {
    a: f32,
    b: Struct_3,
    c: vec2<i32>,
    d: vec3<i32>,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
    c: vec2<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_4, arg_2: vec2<f32>) -> bool {
    global0 = vec3<bool>(any(vec3<bool>(arg_0.x >= _wgslsmith_f_op_f32(floor(-317f)), !arg_1.a.a.x, global0.x)), arg_1.a.a.x, arg_1.a.a.x);
    global0 = vec3<bool>(true, -1342f >= arg_2.x, !(!global0.x));
    let var_0 = false;
    var var_1 = 29443i;
    var var_2 = Struct_4(arg_1.a, arg_1.a.c.yx, vec4<i32>(u_input.a, select(~firstTrailingBit(arg_1.b.x), ~_wgslsmith_add_i32(1i, 0i), arg_1.a.a.x), -(~2147483647i), ~(-10694i) >> (u_input.b % 32u)), 1369f);
    return var_2.a.c.x <= _wgslsmith_mult_i32(~max(_wgslsmith_mod_i32(arg_1.c.x, -1i), _wgslsmith_div_i32(arg_1.b.x, -33801i)), u_input.a);
}

fn func_2(arg_0: vec4<i32>, arg_1: i32, arg_2: Struct_2) -> Struct_3 {
    var var_0 = !vec3<bool>(any(!vec3<bool>(arg_2.a, global0.x, true)), func_3(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(3387f, 984f, 1209f, -678f) - vec4<f32>(-340f, -1058f, -640f, 1165f)))), Struct_4(Struct_1(global0.zy, 1000f, u_input.c, 17383u, -1000f), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.c.x, 1i), vec2<i32>(arg_0.x, arg_1)), vec4<i32>(u_input.c.x, arg_0.x, 33889i, u_input.a), 185f), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1507f, -1129f)))))), all(!global0.yz));
    global0 = vec3<bool>(!(u_input.b >= _wgslsmith_dot_vec4_u32(vec4<u32>(69916u, u_input.b, 40190u, u_input.b), vec4<u32>(u_input.b, 1u, 0u, 50539u))) && true, true, true);
    var var_1 = 4294967295u;
    var_1 = u_input.b >> ((u_input.b >> (countOneBits(abs(reverseBits(0u))) % 32u)) % 32u);
    let var_2 = !(!select(vec2<bool>(true, false), !(!vec2<bool>(var_0.x, false)), arg_2.a));
    return Struct_3(vec4<u32>(u_input.b, _wgslsmith_mod_u32(_wgslsmith_add_u32(~u_input.b, ~1u), 1u), ~4294967295u, abs(4615u)), u_input.c.xz, select(u_input.c.xxy, arg_0.yzx, !select(vec3<bool>(true, var_0.x, true), vec3<bool>(arg_2.a, var_0.x, false), select(vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(var_0.x, false, true), true))));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_3) -> vec3<bool> {
    let var_0 = 36480i;
    global0 = vec3<bool>(false, any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(0i == arg_1.c.x, func_3(vec4<f32>(arg_0.d, arg_0.a.b, arg_0.d, arg_0.a.e), arg_0, vec2<f32>(arg_0.d, 376f)), true))), any(select(select(select(vec3<bool>(true, false, false), vec3<bool>(false, arg_0.a.a.x, true), true), !vec3<bool>(arg_0.a.a.x, false, global0.x), any(global0.zy)), !vec3<bool>(false, global0.x, true), all(select(arg_0.a.a, arg_0.a.a, true)))));
    var var_1 = -(abs(reverseBits(vec3<i32>(-18776i, arg_0.a.c.x, 0i)) | u_input.c.zww) & ~_wgslsmith_sub_vec3_i32(u_input.c.xzw, vec3<i32>(-2147483647i, -39306i, u_input.c.x) << (vec3<u32>(1u, 4294967295u, arg_0.a.d) % vec3<u32>(32u))));
    var_1 = vec3<i32>(_wgslsmith_sub_i32(firstLeadingBit(~(-arg_0.b.x)), -2147483647i), 0i, 15495i);
    var_1 = ~vec3<i32>(_wgslsmith_clamp_i32(~countOneBits(var_0), -(~var_1.x), _wgslsmith_dot_vec3_i32(arg_0.c.wxy, vec3<i32>(23884i, arg_1.b.x, 0i))), -1i << (~(~1u) % 32u), var_1.x);
    return !vec3<bool>(false, ~abs(1u) != ~_wgslsmith_sub_u32(arg_0.a.d, arg_0.a.d), true);
}

fn func_1() -> vec3<i32> {
    let var_0 = 4294967295u;
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(trunc(1f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(742f * 3250f), _wgslsmith_f_op_f32(step(-1000f, -536f)), all(vec3<bool>(true, global0.x, false)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-784f - 610f), _wgslsmith_div_f32(542f, -396f)))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(264f - -674f), _wgslsmith_f_op_f32(trunc(-854f)), -197f), _wgslsmith_div_vec3_f32(vec3<f32>(551f, -800f, 176f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-568f, 1819f, 1024f)))), func_4(Struct_4(Struct_1(global0.zx, -332f, u_input.c, u_input.b, 225f), abs(vec2<i32>(-10835i, u_input.c.x)), ~u_input.c, _wgslsmith_f_op_f32(-1063f - 398f)), func_2(vec4<i32>(2147483647i, 1i, u_input.a, 12329i), ~(-10487i), Struct_2(true))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)))));
    let var_2 = func_2(~u_input.c, u_input.c.x ^ u_input.c.x, Struct_2(any(!global0.yy) | !global0.x));
    let var_3 = Struct_4(Struct_1(!global0.yx, _wgslsmith_f_op_f32(trunc(-1805f)), _wgslsmith_clamp_vec4_i32(~abs(vec4<i32>(-47608i, u_input.a, var_2.c.x, -38311i)), _wgslsmith_add_vec4_i32(u_input.c, vec4<i32>(var_2.c.x, var_2.c.x, var_2.b.x, -20964i)), vec4<i32>(u_input.a, -22809i, reverseBits(u_input.c.x), _wgslsmith_sub_i32(u_input.c.x, u_input.a))), var_2.a.x >> (~(~4294967295u) % 32u), 286f), vec2<i32>(_wgslsmith_mult_i32(-27181i, 5182i), -2147483647i), _wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32((u_input.c << (var_2.a % vec4<u32>(32u))) & -vec4<i32>(u_input.a, u_input.c.x, -2147483647i, var_2.b.x), vec4<i32>(~32027i, _wgslsmith_mod_i32(u_input.c.x, var_2.b.x), -2147483647i, u_input.c.x & 2147483647i)), u_input.c), -1416f);
    let var_4 = -54744i;
    return firstLeadingBit(vec3<i32>(u_input.c.x, select(48895i, var_2.b.x, any(select(vec4<bool>(global0.x, true, true, global0.x), vec4<bool>(global0.x, false, true, global0.x), vec4<bool>(global0.x, global0.x, true, var_3.a.a.x)))), reverseBits(0i)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !(!select(!vec3<bool>(true, global0.x, false), select(vec3<bool>(global0.x, global0.x, true), select(vec3<bool>(global0.x, global0.x, false), vec3<bool>(global0.x, global0.x, false), vec3<bool>(false, false, false)), u_input.b <= 4294967295u), global0.x));
    var var_0 = abs(vec2<u32>(u_input.b, 4294967295u));
    global0 = vec3<bool>(!select((global0.x | global0.x) || false, global0.x, true), global0.x, false);
    global0 = !(!select(vec3<bool>(all(vec3<bool>(global0.x, global0.x, global0.x)), any(global0.zz), true), select(select(vec3<bool>(global0.x, global0.x, false), vec3<bool>(true, global0.x, false), global0.x), vec3<bool>(false, true, global0.x), vec3<bool>(false, true, true)), vec3<bool>(false, global0.x, any(global0.zy))));
    var var_1 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -488f))))), Struct_3(abs(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 0u, 107500u, 21782u), vec4<u32>(u_input.b, var_0.x, var_0.x, 2891u)) & (vec4<u32>(var_0.x, 4294967295u, var_0.x, 40385u) | vec4<u32>(var_0.x, 39844u, 0u, 75018u))), ~(~(~u_input.c.zw)), func_1()), abs(u_input.c.yx), (vec3<i32>(-1i) * -vec3<i32>(-4472i, 44464i, u_input.a)) ^ _wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(9412i, u_input.c.x, u_input.a), vec3<i32>(u_input.c.x, u_input.a, -58929i)) << (vec3<u32>(u_input.b, var_0.x, 25796u) % vec3<u32>(32u)), u_input.c.zwy), _wgslsmith_dot_vec2_u32(abs(vec2<u32>(0u, var_0.x) << (vec2<u32>(u_input.b, 4294967295u) % vec2<u32>(32u))), _wgslsmith_sub_vec2_u32(abs(vec2<u32>(36905u, 1u)) | ~vec2<u32>(var_0.x, var_0.x), firstTrailingBit(select(vec2<u32>(66253u, 93416u), vec2<u32>(u_input.b, u_input.b), global0.x)))));
    global0 = select(!func_4(Struct_4(Struct_1(global0.xx, -502f, u_input.c, 7206u, var_1.a), _wgslsmith_div_vec2_i32(u_input.c.xz, vec2<i32>(1i, var_1.d.x)), u_input.c, var_1.a), var_1.b), select(!(!(!vec3<bool>(global0.x, false, false))), vec3<bool>(!global0.x, true, true), any(vec3<bool>(false, global0.x, false)) && false), !global0.x);
    var_0 = vec2<u32>(~_wgslsmith_mod_u32(~_wgslsmith_sub_u32(1u, var_0.x), _wgslsmith_mult_u32(0u, 28630u)), 4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a, -1156f)), vec2<f32>(var_1.a, -591f))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-674f, 298f))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(810f, 598f))), 7526u <= var_1.b.a.x))))), var_1.b.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_1.a, var_1.a))) - vec2<f32>(936f, -152f)) - vec2<f32>(_wgslsmith_f_op_f32(step(-793f, var_1.a)), -1562f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1.a, -1871f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a, var_1.a)), false)))), 1429f);
}

