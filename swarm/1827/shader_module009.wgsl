struct Struct_1 {
    a: u32,
    b: bool,
    c: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: vec2<i32>,
    e: i32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
    c: Struct_1,
    d: i32,
}

struct Struct_4 {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: Struct_1,
}

struct Struct_5 {
    a: vec3<f32>,
    b: bool,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec3<u32>,
    d: u32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_5) -> i32 {
    let var_0 = _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 1u, 1u, 1u), ~(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 4294967295u, 63382u, 0u), abs(vec4<u32>(31542u, 1u, 52771u, 90906u))) >> ((~vec4<u32>(4294967295u, 0u, 9571u, 4294967295u) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 4294967295u, 1u, 8055u), vec4<u32>(54824u, 42452u, 1u, 1u), vec4<u32>(1u, 67885u, 26877u, 34599u)) % vec4<u32>(32u))) % vec4<u32>(32u))));
    var var_1 = Struct_4(u_input.a, ~(_wgslsmith_mod_i32(firstLeadingBit(u_input.b.x), u_input.d) << (~31732u % 32u)), vec4<u32>(var_0, _wgslsmith_mult_u32(var_0 ^ ~var_0, ~1u), var_0, ~22750u), Struct_1(var_0, true, max(_wgslsmith_sub_vec3_u32(vec3<u32>(49171u, var_0, var_0), vec3<u32>(var_0, 83992u, 3508u)), _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 51547u, 19539u), vec3<u32>(var_0, var_0, 4294967295u))) | ~_wgslsmith_mod_vec3_u32(vec3<u32>(var_0, var_0, 14778u), vec3<u32>(var_0, var_0, var_0))));
    var var_2 = _wgslsmith_div_vec2_f32(arg_0.a.yx, arg_0.a.zz);
    let var_3 = !(any(!vec3<bool>(true, false, var_1.d.b)) | false);
    var var_4 = Struct_3(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1463f, -937f) + _wgslsmith_f_op_vec2_f32(arg_0.a.xy + _wgslsmith_f_op_vec2_f32(vec2<f32>(-171f, -382f) * arg_0.a.yy))))), Struct_2(var_1.d, var_3, Struct_1(var_1.d.a, !(!arg_0.c), vec3<u32>(~var_0, ~var_1.d.c.x, select(var_1.c.x, 17719u, arg_0.c))), vec2<i32>(reverseBits(u_input.d), _wgslsmith_sub_i32(~u_input.d, -1i)), _wgslsmith_clamp_i32(u_input.d | countOneBits(var_1.a), var_1.b, i32(-1i) * -2147483647i)), Struct_1(min(_wgslsmith_clamp_u32(var_0, 16268u, 1u), var_1.c.x) | max(1u, var_0), true, var_1.c.wzz), u_input.a);
    return -87343i;
}

fn func_2(arg_0: Struct_2, arg_1: bool) -> Struct_3 {
    var var_0 = _wgslsmith_mod_u32(94453u & (38050u >> (arg_0.a.a % 32u)), ~select(_wgslsmith_mod_u32(24023u, ~86873u), ~min(arg_0.c.a, 1u), false));
    let var_1 = -531f;
    var var_2 = _wgslsmith_mod_i32(1i, min(u_input.b.x & u_input.d, func_3(Struct_5(vec3<f32>(679f, -854f, var_1), true, arg_0.b))) ^ select(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(-5974i, 31609i, u_input.b.x)), vec3<i32>(arg_0.d.x, -45623i, arg_0.d.x) ^ vec3<i32>(u_input.b.x, -1i, -18958i)), countOneBits(0i), true));
    let var_3 = select(vec3<bool>(any(!select(vec4<bool>(arg_1, false, false, arg_1), vec4<bool>(arg_1, true, arg_0.a.b, false), vec4<bool>(arg_0.b, false, arg_1, true))), all(select(vec4<bool>(arg_0.b, arg_1, false, false), vec4<bool>(arg_0.a.b, arg_1, false, arg_1), true)) || true, true), select(!(!vec3<bool>(arg_0.c.b, true, arg_0.b)), !select(vec3<bool>(arg_0.a.b, arg_0.a.b, false), vec3<bool>(arg_1, true, false), vec3<bool>(arg_0.b, arg_0.b, arg_1)), select(select(select(vec3<bool>(false, true, arg_1), vec3<bool>(false, arg_0.c.b, true), vec3<bool>(true, arg_1, arg_0.a.b)), vec3<bool>(arg_1, arg_0.c.b, false), true), vec3<bool>(arg_1, true, false), vec3<bool>(arg_0.b, true, true))), false);
    var_2 = func_3(Struct_5(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(768f, -1299f, _wgslsmith_f_op_f32(var_1 - var_1)))), var_3.x, true));
    return Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(155f, -803f) - vec2<f32>(var_1, -104f))))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(620f + -602f), _wgslsmith_f_op_f32(-var_1)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1, 1000f), vec2<f32>(var_1, -158f), false)) + vec2<f32>(-1353f, 490f)))), arg_0, arg_0.a, ~u_input.d);
}

fn func_4(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: vec4<u32>) -> Struct_2 {
    var var_0 = arg_0.c;
    let var_1 = arg_0.c.c;
    var var_2 = false;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0.a.x)));
    let var_4 = Struct_5(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_1.xzz * vec3<f32>(var_3, arg_0.a.x, 1304f))), arg_1.ywz), false || ((var_0.b || true) || func_2(Struct_2(arg_0.b.a, true, Struct_1(arg_2.x, false, arg_0.b.a.c), vec2<i32>(-2147483647i, -1i), 9943i), arg_0.b.b).c.b), all(vec4<bool>(any(select(vec2<bool>(false, arg_0.b.c.b), vec2<bool>(var_0.b, true), vec2<bool>(arg_0.b.a.b, false))), select(arg_0.c.b, arg_0.c.b, all(vec4<bool>(true, false, arg_0.c.b, arg_0.b.b))), all(vec2<bool>(arg_0.c.b, false)), any(vec4<bool>(false, true, arg_0.c.b, var_0.b)))));
    return arg_0.b;
}

fn func_5(arg_0: Struct_2) -> Struct_3 {
    var var_0 = Struct_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1281f, -843f, 802f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-2000f, -1561f, 640f) + vec3<f32>(1000f, -343f, 254f)))) + vec3<f32>(342f, _wgslsmith_f_op_f32(1661f * _wgslsmith_f_op_f32(round(1033f))), _wgslsmith_f_op_f32(f32(-1f) * -212f))), true, true);
    var_0 = Struct_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(-1246f, var_0.a.x)), var_0.a.x, _wgslsmith_f_op_f32(-262f * 1209f)) * vec3<f32>(-211f, 924f, _wgslsmith_div_f32(var_0.a.x, -161f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1812f, 214f, -238f) - var_0.a) - _wgslsmith_f_op_vec3_f32(abs(var_0.a))))), !all(select(select(vec2<bool>(arg_0.b, var_0.c), vec2<bool>(arg_0.b, var_0.b), vec2<bool>(true, false)), !vec2<bool>(arg_0.a.b, true), select(arg_0.c.b, arg_0.c.b, var_0.c))), !any(select(select(vec2<bool>(arg_0.b, true), vec2<bool>(var_0.c, arg_0.c.b), arg_0.c.b), vec2<bool>(arg_0.b, arg_0.b), vec2<bool>(var_0.c, false))));
    var_0 = Struct_5(vec3<f32>(_wgslsmith_f_op_f32(max(func_2(func_4(Struct_3(var_0.a.xx, arg_0, Struct_1(arg_0.c.a, false, vec3<u32>(arg_0.a.a, arg_0.c.c.x, arg_0.c.a)), -1i), vec4<f32>(var_0.a.x, var_0.a.x, var_0.a.x, 207f), vec4<u32>(4294967295u, arg_0.a.a, 64756u, 4294967295u)), true).a.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(var_0.a.x, -143f)))))), var_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.x * 1470f) - _wgslsmith_f_op_f32(step(2260f, var_0.a.x))) + 1f)), arg_0.b, _wgslsmith_f_op_f32(-var_0.a.x) != 2265f);
    let var_1 = Struct_5(vec3<f32>(289f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1215f + var_0.a.x) + 436f) * var_0.a.x), var_0.a.x), !var_0.c, ~_wgslsmith_clamp_u32(~41918u, arg_0.a.c.x, arg_0.c.a) > 46u);
    let var_2 = var_1;
    return Struct_3(_wgslsmith_f_op_vec2_f32(-var_0.a.zx), arg_0, func_2(func_4(func_2(Struct_2(Struct_1(4294967295u, false, vec3<u32>(0u, 38632u, arg_0.c.a)), false, Struct_1(45941u, false, arg_0.a.c), vec2<i32>(u_input.b.x, 2147483647i), arg_0.e), var_2.a.x <= var_1.a.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(-226f, var_0.a.x, 566f, -1000f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.x, 1025f, -376f, var_2.a.x))), _wgslsmith_add_vec4_u32(vec4<u32>(arg_0.a.a, 7662u, 4294967295u, arg_0.c.a), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 0u, arg_0.c.a, 31941u), vec4<u32>(arg_0.a.c.x, arg_0.a.c.x, 0u, arg_0.a.a)))), !var_0.c).b.a, arg_0.d.x);
}

fn func_6(arg_0: f32, arg_1: Struct_4, arg_2: i32, arg_3: Struct_3) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(trunc(arg_0));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-153f - -1292f), _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(arg_3.a.x + arg_0))))));
    let var_1 = true;
    let var_2 = vec4<f32>(arg_3.a.x, -204f, func_2(func_5(func_4(func_2(arg_3.b, var_1), vec4<f32>(1000f, arg_0, -552f, arg_0), arg_1.c)).b, arg_1.d.b & func_5(arg_3.b).b.a.b).a.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(536f)), 662f)))));
    var_0 = arg_0;
    return func_5(arg_3.b);
}

fn func_1() -> vec3<bool> {
    var var_0 = min(u_input.d | -_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, u_input.b.x), u_input.b), ~29827i), -1i);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1460f * -1778f));
    var var_2 = func_6(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1, _wgslsmith_f_op_f32(floor(818f))) + var_1)), Struct_4(u_input.b.x, i32(-1i) * -18190i, vec4<u32>(_wgslsmith_mult_u32(1u, 1u), 1u, ~abs(41370u), 1u), Struct_1(~select(1u, 0u, false), any(vec3<bool>(true, true, true)), vec3<u32>(1u, _wgslsmith_sub_u32(62939u, 0u), 4294967295u))), -_wgslsmith_add_i32(u_input.b.x, -18529i), func_5(func_4(func_2(Struct_2(Struct_1(1u, false, vec3<u32>(0u, 1u, 4294967295u)), true, Struct_1(0u, true, vec3<u32>(60959u, 5207u, 7839u)), u_input.b, -40083i), all(vec4<bool>(false, false, true, false))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1911f, 1140f, -1463f, var_1))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, -892f, 197f, 1869f) + vec4<f32>(118f, var_1, var_1, -1228f))), ~vec4<u32>(1u, 1u, 1u, 1u))));
    var_2 = func_2(Struct_2(Struct_1(var_2.c.a, !var_2.c.b, var_2.b.a.c), var_2.b.b, Struct_1(func_6(_wgslsmith_div_f32(var_1, var_2.a.x), Struct_4(1i, -40977i, vec4<u32>(32931u, 11668u, var_2.c.a, 0u), var_2.c), var_2.d, func_2(var_2.b, var_2.c.b)).b.c.c.x, var_2.b.a.b, var_2.c.c), u_input.b, i32(-1i) * -1i), var_2.c.b);
    var var_3 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(617f, var_1))) + var_2.a), Struct_2(func_6(1000f, Struct_4(_wgslsmith_dot_vec2_i32(var_2.b.d, vec2<i32>(1462i, 57965i)), u_input.a << (20693u % 32u), min(vec4<u32>(var_2.c.a, 1u, var_2.c.c.x, var_2.b.c.a), vec4<u32>(1u, var_2.b.a.c.x, 70957u, var_2.c.a)), func_4(Struct_3(var_2.a, var_2.b, var_2.c, u_input.d), vec4<f32>(var_1, var_1, 1195f, var_2.a.x), vec4<u32>(var_2.c.c.x, 1u, var_2.b.c.c.x, var_2.c.a)).a), u_input.a, func_5(var_2.b)).c, var_2.b.a.b, func_4(Struct_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.a.x, var_2.a.x)), Struct_2(Struct_1(var_2.c.c.x, true, vec3<u32>(var_2.c.c.x, 57495u, 0u)), false, Struct_1(var_2.b.c.a, var_2.b.b, vec3<u32>(var_2.b.c.c.x, var_2.b.c.c.x, var_2.b.a.c.x)), vec2<i32>(u_input.c, -7345i), -22401i), func_5(var_2.b).b.a, -u_input.c), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1, 898f, var_2.a.x, var_1), _wgslsmith_f_op_vec4_f32(-vec4<f32>(220f, var_2.a.x, 187f, 595f)), false)), _wgslsmith_add_vec4_u32(vec4<u32>(7842u, 71855u, var_2.c.a, 52199u) >> (vec4<u32>(var_2.b.c.c.x, 0u, 13980u, 4294967295u) % vec4<u32>(32u)), abs(vec4<u32>(var_2.c.c.x, 4294967295u, var_2.b.a.c.x, 4294967295u)))).a, var_2.b.d, var_2.d | (_wgslsmith_mult_i32(-1i, var_2.b.e) >> (~var_2.b.a.a % 32u))), Struct_1(~1u, var_2.c.b, ~vec3<u32>(var_2.b.c.a, 26487u << (var_2.b.a.a % 32u), 30260u)), -u_input.c);
    return vec3<bool>(!(_wgslsmith_mult_u32(0u, var_3.b.c.c.x) != var_3.c.a), any(select(vec2<bool>(var_2.b.c.b & var_2.b.a.b, true), select(vec2<bool>(var_2.b.a.b, var_3.b.c.b), !vec2<bool>(true, var_2.b.b), select(vec2<bool>(var_3.c.b, var_3.c.b), vec2<bool>(var_2.b.c.b, true), true)), !var_2.b.c.b || (var_2.a.x >= var_1))), all(vec2<bool>(var_1 < var_1, true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec2<bool>(true, !select(false, true, true));
    var var_1 = !select(!(!select(vec3<bool>(false, var_0.x, false), vec3<bool>(var_0.x, false, true), var_0.x)), select(select(!vec3<bool>(true, true, var_0.x), !vec3<bool>(true, var_0.x, var_0.x), !vec3<bool>(false, false, var_0.x)), func_1(), true), vec3<bool>(func_1().x, !any(vec3<bool>(true, true, var_0.x)), _wgslsmith_dot_vec2_u32(vec2<u32>(41581u, 0u), vec2<u32>(95066u, 14394u)) == 0u));
    let var_2 = _wgslsmith_f_op_f32(-1f);
    var_1 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(func_5(func_4(func_5(Struct_2(Struct_1(60191u, false, vec3<u32>(40392u, 4294967295u, 55409u)), var_1.x, Struct_1(0u, true, vec3<u32>(1u, 4294967295u, 4294967295u)), u_input.b, u_input.a)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-410f, var_2, 1000f, 301f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-140f, var_2, var_2, var_2)))), ~vec4<u32>(4294967295u, 40777u, 43617u, 71581u))).b.e, 1f, min(func_6(_wgslsmith_f_op_f32(max(-393f, func_5(Struct_2(Struct_1(0u, true, vec3<u32>(4294967295u, 0u, 0u)), var_1.x, Struct_1(1u, var_0.x, vec3<u32>(4294967295u, 4294967295u, 31850u)), u_input.b, u_input.d)).a.x)), Struct_4(u_input.b.x, u_input.d, select(vec4<u32>(4294967295u, 4294967295u, 0u, 1u), vec4<u32>(6782u, 5619u, 0u, 1u), true), Struct_1(4294967295u, var_0.x, vec3<u32>(1u, 6324u, 48783u))), max(u_input.b.x, u_input.b.x) & -25573i, Struct_3(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(582f, var_2))), Struct_2(Struct_1(4294967295u, var_0.x, vec3<u32>(4294967295u, 1u, 44905u)), var_1.x, Struct_1(37842u, true, vec3<u32>(0u, 0u, 4294967295u)), u_input.b, u_input.d), func_2(Struct_2(Struct_1(4294967295u, var_0.x, vec3<u32>(1u, 1u, 2675u)), false, Struct_1(1u, var_1.x, vec3<u32>(0u, 22509u, 1u)), vec2<i32>(u_input.b.x, 2147483647i), u_input.d), var_0.x).c, _wgslsmith_add_i32(0i, u_input.d))).b.c.c, vec3<u32>(_wgslsmith_mod_u32(83252u, 93787u), 14738u, _wgslsmith_sub_u32(55155u, 47624u)) << (firstTrailingBit(vec3<u32>(24789u, 37001u, 0u)) % vec3<u32>(32u))), max(_wgslsmith_div_u32(~(~4294967295u), _wgslsmith_add_u32(_wgslsmith_add_u32(0u, 1u), ~4294967295u)), abs(~20412u)), func_4(func_2(Struct_2(func_2(Struct_2(Struct_1(23849u, true, vec3<u32>(30927u, 40930u, 1u)), false, Struct_1(4294967295u, false, vec3<u32>(18617u, 1u, 32463u)), u_input.b, -52713i), var_0.x).c, true, func_5(Struct_2(Struct_1(1u, true, vec3<u32>(18132u, 50244u, 65534u)), var_1.x, Struct_1(1u, var_0.x, vec3<u32>(1u, 1u, 4294967295u)), u_input.b, u_input.d)).c, reverseBits(vec2<i32>(u_input.d, u_input.a)), u_input.c), !(!var_1.x)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1000f, var_2, 206f, var_2))))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2, var_2, -1347f, var_2) - vec4<f32>(var_2, var_2, 209f, var_2)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1214f, var_2, -2510f, var_2)))), select(!vec4<bool>(true, var_0.x, false, false), vec4<bool>(var_0.x, var_1.x, false, var_0.x), select(vec4<bool>(false, var_0.x, false, false), vec4<bool>(false, var_1.x, var_1.x, var_0.x), var_0.x)))), ~select(vec4<u32>(79651u, 42311u, 0u, 1u), vec4<u32>(33189u, 0u, 1u, 4294967295u), false)).c.c);
}

