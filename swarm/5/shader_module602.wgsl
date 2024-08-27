struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: vec2<f32>,
    d: vec3<u32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: u32,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_1) -> vec3<u32> {
    var var_0 = Struct_2(arg_0, arg_0, Struct_1(arg_0.a, ~firstTrailingBit(arg_0.b), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(arg_0.c * _wgslsmith_f_op_vec2_f32(arg_0.c - vec2<f32>(arg_0.c.x, 986f))))), arg_0.d, vec2<bool>(true, select(!arg_0.e.x, arg_0.e.x, all(vec2<bool>(false, arg_0.e.x))))), select(4294967295u, u_input.a.x, false), _wgslsmith_div_vec3_u32(u_input.a.zzw, _wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, u_input.a.x, u_input.a.x), u_input.a.ywy >> (vec3<u32>(arg_0.d.x, arg_0.d.x, 1u) % vec3<u32>(32u))), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, 15223u, 4294967295u), ~arg_0.b.zxw), arg_0.b.yxz & ~u_input.a.zyw)));
    let var_1 = _wgslsmith_f_op_f32(-2153f + 126f);
    let var_2 = _wgslsmith_f_op_vec2_f32(arg_0.c * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(arg_0.c)) + _wgslsmith_f_op_vec2_f32(max(var_0.a.c, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(abs(arg_0.c))))))));
    var_0 = Struct_2(Struct_1(arg_0.a, arg_0.b, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(-113f, -1000f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-1676f, var_2.x) * var_0.c.c)))), u_input.a.yzw, arg_0.e), var_0.c, var_0.c, min(71571u, var_0.d), var_0.e);
    var var_3 = ~select(_wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(u_input.a, var_0.a.b), vec4<u32>(4294967295u, 19541u, u_input.a.x, var_0.e.x), var_0.c.b) >> ((arg_0.b | abs(var_0.c.b)) % vec4<u32>(32u)), arg_0.b, vec4<bool>(any(arg_0.e), all(vec4<bool>(arg_0.e.x, true, var_0.a.e.x, var_0.c.e.x)), true, !var_0.a.e.x));
    return ~_wgslsmith_add_vec3_u32(vec3<u32>(abs(arg_0.b.x) >> (~1u % 32u), abs(110600u) >> (arg_0.d.x % 32u), ~(~0u)), vec3<u32>(~arg_0.b.x, select(var_0.c.b.x, 4294967295u, true), _wgslsmith_mult_u32(var_0.a.b.x, 1u) & arg_0.b.x));
}

fn func_2(arg_0: vec2<bool>, arg_1: u32, arg_2: vec4<i32>) -> i32 {
    let var_0 = Struct_2(Struct_1(-678f, ~_wgslsmith_clamp_vec4_u32(~u_input.a, ~vec4<u32>(0u, u_input.a.x, u_input.a.x, 4294967295u), vec4<u32>(0u, 99980u, u_input.a.x, u_input.a.x)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-701f, 203f)) + _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1136f, 376f)))))), ~func_3(Struct_1(-417f, u_input.a, vec2<f32>(1004f, -344f), u_input.a.wzy, vec2<bool>(arg_0.x, true))), select(vec2<bool>(arg_0.x, all(vec3<bool>(true, arg_0.x, true))), arg_0, true)), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-528f)), _wgslsmith_f_op_f32(min(-318f, 1f))), vec4<u32>(_wgslsmith_sub_u32(39964u, ~4294967295u), 1u, ~u_input.a.x, arg_1), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(559f)), -1000f) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(1264f, -590f)))), vec3<u32>(78790u, 4294967295u, ~0u), select(vec2<bool>(false, false), vec2<bool>(arg_0.x, true), select(any(vec3<bool>(arg_0.x, arg_0.x, arg_0.x)), arg_0.x, arg_0.x))), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -687f), select(vec4<u32>(~1u, firstLeadingBit(6299u), 1u, ~arg_1), max(u_input.a, _wgslsmith_clamp_vec4_u32(u_input.a, vec4<u32>(arg_1, 65929u, arg_1, 1u), u_input.a)), _wgslsmith_add_i32(u_input.b.x, arg_2.x) <= u_input.c.x), vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -685f))), _wgslsmith_f_op_f32(f32(-1f) * -1044f)), vec3<u32>(firstTrailingBit(1u), abs(u_input.a.x), ~u_input.a.x), !arg_0), ~u_input.a.x, ~(~vec3<u32>(arg_1, arg_1, 4294967295u) | ~vec3<u32>(50439u, u_input.a.x, arg_1)));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(step(-1750f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.a) - _wgslsmith_f_op_f32(sign(-1316f))) * _wgslsmith_f_op_f32(ceil(-456f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.c.x - var_0.a.a) + _wgslsmith_f_op_f32(select(-623f, -375f, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.c.x * 903f))) - _wgslsmith_f_op_f32(-var_0.c.c.x)), 209f);
    var var_2 = var_0;
    let var_3 = var_0;
    let var_4 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(1099f)))) * 221f), vec4<u32>(4363u, _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(var_3.c.b, vec4<u32>(75462u, 4294967295u, 4294967295u, 35691u)), _wgslsmith_dot_vec4_u32(u_input.a, u_input.a)) & abs(var_0.c.b.x), firstLeadingBit(firstTrailingBit(~u_input.a.x)), select(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(var_3.c.d.yz, var_2.c.d.yy), ~54503u), ~(~u_input.a.x), _wgslsmith_f_op_f32(-var_1.x) != var_0.a.a)), var_0.c.c, _wgslsmith_mod_vec3_u32(~u_input.a.zzw, select(~vec3<u32>(var_0.b.d.x, var_3.c.b.x, 43716u), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 21052u), vec3<u32>(4294967295u, u_input.a.x, var_3.b.d.x)), vec3<bool>(true, arg_0.x, var_2.a.e.x))) >> (vec3<u32>(var_0.e.x, firstLeadingBit(_wgslsmith_sub_u32(0u, var_2.a.b.x)), ~var_3.d) % vec3<u32>(32u)), vec2<bool>(true, true));
    return ~(-63597i);
}

fn func_4(arg_0: i32) -> Struct_1 {
    let var_0 = u_input.b;
    let var_1 = select(_wgslsmith_mod_u32(u_input.a.x, func_3(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1403f), firstLeadingBit(u_input.a), _wgslsmith_div_vec2_f32(vec2<f32>(822f, -1088f), vec2<f32>(-1734f, -357f)), firstTrailingBit(vec3<u32>(103934u, 51280u, 13292u)), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false)))).x), min(u_input.a.x, u_input.a.x), any(vec3<bool>(4294967295u != u_input.a.x, true, true)));
    let var_2 = Struct_2(Struct_1(-2060f, _wgslsmith_clamp_vec4_u32(u_input.a, countOneBits(u_input.a), u_input.a), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1305f, 678f)))))), u_input.a.yyy, vec2<bool>(!any(vec2<bool>(true, false)), all(vec3<bool>(true, true, true)))), Struct_1(-570f, vec4<u32>(~1u, var_1, u_input.a.x, var_1), vec2<f32>(_wgslsmith_div_f32(-791f, 822f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2405f, 276f))), abs(u_input.a.wyz), !(!select(vec2<bool>(true, false), vec2<bool>(false, false), false))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-1841f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(976f * -176f) + _wgslsmith_f_op_f32(abs(252f)))), vec4<u32>(4294967295u, u_input.a.x, _wgslsmith_mod_u32(~0u, ~var_1), u_input.a.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-366f, 243f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(2063f, 1000f), vec2<f32>(384f, -716f), vec2<bool>(true, false))))), u_input.a.xyw, vec2<bool>(true, any(vec4<bool>(false, true, true, false)))), var_1, select(u_input.a.zyy, abs(firstTrailingBit(u_input.a.wzx) ^ u_input.a.zzy), true));
    let var_3 = 14253i;
    var var_4 = _wgslsmith_clamp_vec4_u32(min(~firstLeadingBit(vec4<u32>(4294967295u, var_2.c.d.x, var_1, var_1)), ~(_wgslsmith_sub_vec4_u32(var_2.a.b, vec4<u32>(var_2.b.d.x, 96803u, 40348u, var_2.b.b.x)) << (var_2.c.b % vec4<u32>(32u)))), firstLeadingBit(_wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(select(var_2.b.b, u_input.a, var_2.a.e.x), firstLeadingBit(vec4<u32>(42333u, var_2.b.b.x, 0u, 14367u))), ~(u_input.a ^ u_input.a))), ~reverseBits(vec4<u32>(var_1, ~56453u, ~40243u, 29886u)));
    return var_2.a;
}

fn func_1(arg_0: u32) -> u32 {
    let var_0 = ~u_input.c;
    let var_1 = func_4(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, u_input.b.x, -27814i, var_0.x), vec4<i32>(-2147483647i, ~select(var_0.x, 1i, true), min(func_2(vec2<bool>(false, false), u_input.a.x, vec4<i32>(2147483647i, 1980i, u_input.c.x, u_input.b.x)), var_0.x), var_0.x & ~2147483647i)));
    let var_2 = Struct_2(func_4(u_input.b.x), func_4(abs(0i)), func_4(var_0.x), min(firstTrailingBit(select(1u, var_1.d.x, true)), ~(~64470u)), abs(~vec3<u32>(29375u, ~arg_0, 4294967295u)));
    var var_3 = func_4(_wgslsmith_mod_i32(-(~(i32(-1i) * -16317i)), reverseBits(firstTrailingBit(_wgslsmith_clamp_i32(2147483647i, u_input.b.x, -1i)))));
    var var_4 = var_3.e.x;
    return select(0u, _wgslsmith_div_u32(select(max(1u, var_2.e.x << (arg_0 % 32u)), 42750u >> (1u % 32u), false), _wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(var_3.d.x, var_2.d)), u_input.a.xw)), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1i;
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(851f, -126f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(2121f, -456f)))), vec2<f32>(_wgslsmith_f_op_f32(-1294f - _wgslsmith_f_op_f32(424f + 1140f)), _wgslsmith_f_op_f32(f32(-1f) * -416f))) - vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-1306f)))), _wgslsmith_f_op_f32(711f - 1019f)));
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.x))) * _wgslsmith_f_op_f32(-1000f * 1f)), -574f, _wgslsmith_f_op_f32(-var_1.x)));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)))))));
    var var_4 = u_input.a.zx;
    var_4 = vec2<u32>(_wgslsmith_div_u32(6954u, ~firstTrailingBit(61286u)), (u_input.a.x << (func_1(u_input.a.x) % 32u)) >> (4294967295u % 32u));
    var var_5 = Struct_2(Struct_1(-477f, max(~(~u_input.a), vec4<u32>(~u_input.a.x, var_4.x, var_4.x, _wgslsmith_clamp_u32(1u, 35992u, var_4.x))), _wgslsmith_f_op_vec2_f32(round(var_2.xw)), ~u_input.a.xxw >> (vec3<u32>(20268u | var_4.x, _wgslsmith_add_u32(14589u, var_4.x), var_4.x) % vec3<u32>(32u)), select(!func_4(var_0).e, select(vec2<bool>(true, true), vec2<bool>(false, false), true), false)), Struct_1(_wgslsmith_f_op_f32(-822f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-727f - 137f))), _wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(u_input.a, vec4<u32>(0u, 1u, 0u, var_4.x)), (u_input.a ^ vec4<u32>(u_input.a.x, 4294967295u, 1u, u_input.a.x)) << (~u_input.a % vec4<u32>(32u))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(ceil(var_2.xy)))), vec3<u32>(4294967295u, _wgslsmith_dot_vec2_u32(u_input.a.yy ^ u_input.a.wx, func_3(Struct_1(-1785f, u_input.a, var_2.xz, u_input.a.yyw, vec2<bool>(true, false))).zx), ~(~0u)), vec2<bool>(true, true)), func_4(_wgslsmith_sub_i32(_wgslsmith_add_i32(24824i, u_input.b.x) >> (80249u % 32u), u_input.b.x)), 6328u, vec3<u32>(u_input.a.x, 4294967295u, ~(~var_4.x)) << (vec3<u32>(1u, firstTrailingBit(4294967295u), firstLeadingBit(42611u)) % vec3<u32>(32u)));
    var_4 = vec2<u32>(_wgslsmith_sub_u32(~1u, var_5.e.x), ~4294967295u);
    let var_6 = vec2<u32>(~0u, var_5.e.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) * var_2.x), _wgslsmith_f_op_f32(sign(var_1.x)), _wgslsmith_f_op_f32(f32(-1f) * -1019f)), var_2.zzx, !var_5.c.e.x)));
}

