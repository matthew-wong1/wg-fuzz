struct Struct_1 {
    a: u32,
    b: u32,
    c: i32,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
    c: f32,
    d: i32,
    e: Struct_2,
}

struct Struct_5 {
    a: vec3<f32>,
    b: vec4<bool>,
    c: vec3<bool>,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_5, arg_2: bool) -> vec4<i32> {
    var var_0 = arg_0.a;
    let var_1 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_1.a.x, 2900f, arg_1.a.x), vec3<f32>(-1216f, arg_1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -453f)))));
    return vec4<i32>(var_0.e, -41645i, _wgslsmith_div_i32(54926i, max(reverseBits(var_0.c), arg_0.a.c)) << ((~(~u_input.d) & 80111u) % 32u), _wgslsmith_add_i32(20188i, var_0.e));
}

fn func_2(arg_0: Struct_1) -> Struct_3 {
    let var_0 = select(firstTrailingBit(vec4<i32>(-1i) * -vec4<i32>(-2147483647i, u_input.e.x, -41304i, u_input.c.x)) ^ -(select(vec4<i32>(u_input.a.x, u_input.e.x, -1i, -2147483647i), vec4<i32>(1i, u_input.e.x, u_input.e.x, 2147483647i), false) | _wgslsmith_mod_vec4_i32(vec4<i32>(0i, u_input.e.x, arg_0.e, 2147483647i), vec4<i32>(-24165i, u_input.c.x, 2147483647i, 350i))), func_3(Struct_2(arg_0), Struct_5(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(372f, 525f, -1625f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -468f, 166f)))), vec4<bool>(true, true, true, true), vec3<bool>(true, true, true), Struct_3(9059u ^ arg_0.b)), true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -471f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-580f)))) <= _wgslsmith_div_f32(-509f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(1454f))))));
    var var_1 = !(!(!vec2<bool>(true, select(true, false, true))));
    var var_2 = vec2<u32>(reverseBits(35530u), _wgslsmith_sub_u32(select(~15805u ^ u_input.d, _wgslsmith_dot_vec4_u32(u_input.b, u_input.b) << (countOneBits(36638u) % 32u), var_1.x), ~(abs(4294967295u) | _wgslsmith_dot_vec2_u32(u_input.b.yw, vec2<u32>(u_input.d, arg_0.b)))));
    var_2 = _wgslsmith_div_vec2_u32(~u_input.b.xy, ~u_input.b.wz);
    var_1 = select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), !select(vec2<bool>(true, false), vec2<bool>(false, var_1.x), var_1.x), !select(vec2<bool>(false, var_1.x), vec2<bool>(var_1.x, var_1.x), vec2<bool>(true, var_1.x))), !select(select(vec2<bool>(true, var_1.x), vec2<bool>(var_1.x, true), vec2<bool>(true, var_1.x)), vec2<bool>(true, true), vec2<bool>(true, true))), select(select(!(!vec2<bool>(var_1.x, false)), !select(vec2<bool>(var_1.x, var_1.x), vec2<bool>(true, false), vec2<bool>(true, true)), all(select(vec2<bool>(true, true), vec2<bool>(var_1.x, var_1.x), vec2<bool>(var_1.x, false)))), vec2<bool>(!all(vec2<bool>(var_1.x, false)), true), select(select(vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(false, var_1.x), true), true), vec2<bool>(all(vec4<bool>(false, false, var_1.x, false)), var_1.x), vec2<bool>(false, true))), any(select(vec3<bool>(u_input.a.x < 23764i, arg_0.a >= 25650u, true), select(select(vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(false, var_1.x, true), vec3<bool>(var_1.x, var_1.x, true)), vec3<bool>(var_1.x, var_1.x, var_1.x), var_1.x), true)));
    return Struct_3(~_wgslsmith_div_u32(59041u, _wgslsmith_mult_u32(arg_0.a, 4294967295u) >> (var_2.x % 32u)));
}

fn func_4(arg_0: u32, arg_1: Struct_5) -> Struct_3 {
    var var_0 = vec4<f32>(-653f, _wgslsmith_f_op_f32(max(arg_1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1058f, _wgslsmith_f_op_f32(max(618f, -1004f))))))), -320f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.x - 317f)), _wgslsmith_f_op_f32(175f * -1355f)))));
    let var_1 = !vec3<bool>(arg_1.b.x, all(arg_1.b), !(var_0.x < var_0.x) & all(select(arg_1.b.zz, vec2<bool>(arg_1.b.x, false), arg_1.b.x)));
    var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1047f, _wgslsmith_f_op_f32(f32(-1f) * -791f), arg_1.a.x, _wgslsmith_f_op_f32(-arg_1.a.x))))), vec4<f32>(-568f, -411f, _wgslsmith_f_op_f32(f32(-1f) * -1281f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), 177f, arg_1.a.x, _wgslsmith_f_op_f32(-var_0.x)), vec4<f32>(arg_1.a.x, _wgslsmith_f_op_f32(995f - -1029f), _wgslsmith_f_op_f32(round(var_0.x)), 189f))), vec4<f32>(_wgslsmith_f_op_f32(ceil(2258f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_0.x, -995f))), 335f, -1122f)) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-429f, arg_1.a.x, arg_1.a.x, arg_1.a.x)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(238f, arg_1.a.x, arg_1.a.x, arg_1.a.x))))));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(-770f, 1274f, arg_1.b.x)), 1000f, _wgslsmith_div_f32(-171f, var_0.x), 1394f)) * _wgslsmith_f_op_vec4_f32(exp2(var_2))) + var_2);
    return Struct_3(~_wgslsmith_clamp_u32(~4294967295u, _wgslsmith_add_u32(_wgslsmith_mult_u32(1u, u_input.b.x), 13072u), u_input.b.x));
}

fn func_5(arg_0: u32, arg_1: Struct_3) -> Struct_5 {
    let var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(300f, 946f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(605f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1047f + 1046f))), false))), any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, any(vec3<bool>(true, true, true))), true))));
    var var_1 = Struct_4(any(vec4<bool>(true, true, true, true)), Struct_2(Struct_1(_wgslsmith_add_u32(abs(arg_1.a), 4294967295u), _wgslsmith_mod_u32(1u, u_input.d), _wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.a.x, 0i, u_input.e.x), u_input.e), 1u, u_input.e.x)), -780f, u_input.a.x, Struct_2(Struct_1(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.b.zzw, vec3<u32>(0u, 1951u, 0u)), _wgslsmith_div_vec3_u32(u_input.b.wwz, u_input.b.yzz)), ~_wgslsmith_add_u32(arg_1.a, u_input.d), 34445i | -u_input.e.x, arg_0 << (u_input.b.x % 32u), -1260i)));
    var_1 = Struct_4(all(vec3<bool>(!var_1.a, !var_1.a, any(vec2<bool>(var_1.a, var_1.a)))) & true, Struct_2(var_1.b.a), -866f, countOneBits(~_wgslsmith_mult_i32(u_input.e.x, _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.e.a.c, 1i), u_input.e.yz))), Struct_2(Struct_1(4294967295u, 24347u >> ((arg_0 << (1u % 32u)) % 32u), u_input.e.x, 1u, -4604i)));
    var var_2 = var_1.c;
    let var_3 = Struct_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, -212f, var_0)), _wgslsmith_div_vec3_f32(vec3<f32>(885f, var_1.c, -338f), vec3<f32>(var_1.c, 435f, var_1.c))))), vec4<bool>(var_1.a, var_1.a, select(any(!vec3<bool>(var_1.a, var_1.a, var_1.a)), !var_1.a, any(select(vec3<bool>(false, false, var_1.a), vec3<bool>(var_1.a, var_1.a, true), vec3<bool>(var_1.a, true, true)))), true), !select(select(!vec3<bool>(var_1.a, true, false), vec3<bool>(var_1.a, var_1.a, false), !vec3<bool>(true, var_1.a, true)), vec3<bool>(true != var_1.a, 28160u <= arg_1.a, true), !(!vec3<bool>(var_1.a, var_1.a, var_1.a))), func_4(_wgslsmith_dot_vec4_u32((u_input.b & u_input.b) ^ _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d, 33698u, arg_1.a, 26646u), vec4<u32>(u_input.b.x, 0u, 0u, 1861u)), _wgslsmith_add_vec4_u32(~vec4<u32>(4294967295u, var_1.e.a.b, 1u, arg_1.a), firstLeadingBit(vec4<u32>(4294967295u, 1u, arg_1.a, 1u)))), Struct_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-296f, 655f, var_1.c) + vec3<f32>(1805f, 1135f, -137f)) - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0, 208f, 757f)))), !(!vec4<bool>(true, var_1.a, var_1.a, var_1.a)), !vec3<bool>(true, true, var_1.a), arg_1)));
    return Struct_5(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_3.a.x), -1000f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1018f) * var_0), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.c, var_0))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(var_0, var_1.c, var_3.c.x || var_1.a))))), var_3.b, !vec3<bool>(-var_1.e.a.e > _wgslsmith_mult_i32(-6574i, var_1.b.a.c), !var_1.a, any(vec2<bool>(true, true))), var_3.d);
}

fn func_1(arg_0: Struct_3) -> u32 {
    var var_0 = func_5(select(~1u, 0u, u_input.c.x > ~1i), func_4(arg_0.a, Struct_5(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-910f, -1459f, 724f)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-326f, -1434f, 966f)))), vec4<bool>(true, true, true, true), select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), vec3<bool>(true, false, false), u_input.b.x == 82252u), func_2(Struct_1(u_input.d, arg_0.a, u_input.c.x, 0u, -2147483647i)))));
    return _wgslsmith_mult_u32(_wgslsmith_add_u32(52782u, abs(u_input.b.x >> (abs(45240u) % 32u))), firstLeadingBit(min(_wgslsmith_dot_vec4_u32(u_input.b, u_input.b), 60282u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b.wz;
    let var_1 = abs(~firstTrailingBit(u_input.b.xx));
    var_0 = _wgslsmith_mult_vec2_u32(~(~vec2<u32>(1u, ~var_1.x)), var_1);
    var var_2 = var_1.x;
    var_0 = _wgslsmith_div_vec2_u32(vec2<u32>(~var_0.x, ~_wgslsmith_add_u32(u_input.d, ~13050u)), min(vec2<u32>(func_1(Struct_3(var_1.x)), var_0.x), u_input.b.zx));
    var_2 = func_2(Struct_1(abs(4294967295u), 1u, abs(46003i), 25903u, min(-33623i, (-31710i << (var_0.x % 32u)) >> (46714u % 32u)))).a;
    let var_3 = false;
    let var_4 = countOneBits(vec3<u32>(1u, _wgslsmith_sub_u32(_wgslsmith_mult_u32(abs(4294967295u), func_5(22480u, Struct_3(var_1.x)).d.a), ~var_0.x), reverseBits(firstTrailingBit(62847u ^ u_input.d))));
    var var_5 = 11681u;
    let x = u_input.a;
    s_output = StorageBuffer(min(_wgslsmith_add_vec2_u32(~vec2<u32>(var_4.x, var_1.x) << (var_1 % vec2<u32>(32u)), var_1), var_4.yx), -(~firstLeadingBit(max(vec4<i32>(2147483647i, u_input.e.x, u_input.e.x, u_input.a.x), vec4<i32>(-17831i, u_input.c.x, -60513i, 38488i)))), ~(vec4<i32>(9461i, u_input.c.x, u_input.c.x, u_input.a.x) & ((vec4<i32>(u_input.c.x, u_input.a.x, u_input.c.x, 7932i) & vec4<i32>(u_input.c.x, 1680i, -8979i, u_input.a.x)) & min(vec4<i32>(u_input.a.x, u_input.e.x, 34659i, u_input.a.x), vec4<i32>(1i, 5581i, 617i, 2147483647i)))));
}

