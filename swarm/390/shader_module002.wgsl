struct Struct_1 {
    a: vec2<f32>,
    b: vec2<bool>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec2<bool>,
    d: vec4<f32>,
    e: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_2,
    d: vec3<i32>,
    e: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> u32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1216f, _wgslsmith_f_op_f32(select(-614f, -1317f, false))))), select(vec2<bool>(all(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true))), true), vec2<bool>(true, true), true || all(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), false))), true && select(true, any(vec2<bool>(true, true)), !select(true, true, false)));
    var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-var_0.a), vec2<bool>(true, !(u_input.c >= -1i) && var_0.b.x), (~_wgslsmith_dot_vec4_u32(vec4<u32>(17484u, u_input.d.x, u_input.a, 91901u), vec4<u32>(94274u, u_input.d.x, u_input.b.x, u_input.a)) << (u_input.d.x % 32u)) < max(53409u, 1u));
    var var_1 = Struct_2(Struct_1(var_0.a, vec2<bool>(-995f > _wgslsmith_f_op_f32(round(var_0.a.x)), true), var_0.b.x & false), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_0.a.x)), _wgslsmith_f_op_f32(-600f + _wgslsmith_f_op_f32(-var_0.a.x))), var_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1668f * var_0.a.x))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a.x, -1286f))), _wgslsmith_f_op_f32(min(1354f, -329f))), var_0.b, _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.a.x + 176f), _wgslsmith_f_op_f32(-var_0.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -796f), _wgslsmith_f_op_f32(trunc(3941f)), var_0.a.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1498f, var_0.a.x, -953f, var_0.a.x) * vec4<f32>(var_0.a.x, 1439f, var_0.a.x, 1000f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, -1141f, var_0.a.x, 822f)))), select(vec3<bool>(all(!var_0.b), _wgslsmith_f_op_f32(-1223f - var_0.a.x) <= _wgslsmith_f_op_f32(-var_0.a.x), false), !select(select(vec3<bool>(var_0.c, true, var_0.c), vec3<bool>(var_0.b.x, var_0.b.x, var_0.b.x), var_0.b.x), !vec3<bool>(var_0.c, true, true), select(false, true, true)), vec3<bool>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.d.x), u_input.d) != 4294967295u, var_0.c, true)));
    var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(363f, var_0.a.x)))), vec2<bool>(var_0.c, any(select(!vec2<bool>(var_1.c.x, var_0.c), var_1.a.b, !var_1.e.yx))), select(var_1.a.b.x, var_0.b.x, !all(vec3<bool>(false, var_0.b.x, var_1.e.x))));
    let var_2 = u_input.c;
    return u_input.d.x;
}

fn func_2(arg_0: u32) -> Struct_3 {
    let var_0 = !vec3<bool>(any(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true))), true, !select(any(vec3<bool>(true, true, true)), all(vec3<bool>(false, false, true)), all(vec4<bool>(false, false, false, true))));
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -1000f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-639f, 1480f) * vec2<f32>(-393f, -649f)))), vec2<f32>(1f, -363f))), vec2<bool>(!(!var_0.x), true), all(vec2<bool>(true, true))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(533f, -189f, 176f, -358f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -1425f, 1110f, -203f))) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(541f, -707f, 642f, -464f))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1051f, -1339f, 844f, -1633f)))), vec2<bool>(all(!var_0), !(!var_0.x)), _wgslsmith_div_vec4_f32(vec4<f32>(1f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -631f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1404f + -1585f)), 1608f), vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(1080f, -790f))), _wgslsmith_f_op_f32(min(-787f, _wgslsmith_f_op_f32(round(1000f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(-434f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(3299f * 1393f)))), !var_0);
    var var_2 = Struct_4(var_1, func_3() >> (abs(min(1u, 75534u >> (0u % 32u))) % 32u));
    var_2 = Struct_4(Struct_2(var_2.a.a, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_2.a.b)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.x, -965f, var_2.a.d.x, var_1.b.x)), _wgslsmith_f_op_vec4_f32(-var_2.a.d)))), vec2<bool>(var_0.x, all(!var_2.a.a.b)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_2.a.b) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-992f, var_1.b.x, var_1.d.x, var_1.b.x)))), !(!(!var_1.e))), 1u);
    var_2 = Struct_4(var_2.a, ~arg_0);
    return Struct_3(var_2.a, var_2.a, var_2.a, -firstTrailingBit(min(vec3<i32>(u_input.c, 12960i, 22376i), vec3<i32>(2147483647i, 13084i, -4334i)) ^ _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.c, u_input.c, u_input.c), vec3<i32>(-2147483647i, 2147483647i, 50292i), vec3<i32>(u_input.c, -69033i, 2147483647i))), firstLeadingBit(u_input.c));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: Struct_3, arg_3: vec4<i32>) -> vec2<u32> {
    let var_0 = !vec3<bool>(arg_2.a.a.b.x, all(select(vec4<bool>(false, arg_1.b.a.b.x, false, arg_1.b.a.c), select(vec4<bool>(false, true, arg_2.a.a.c, arg_2.a.c.x), vec4<bool>(arg_1.c.a.b.x, false, false, true), arg_2.a.a.b.x), vec4<bool>(arg_2.c.e.x, false, arg_1.c.a.c, arg_2.a.e.x))), arg_2.c.a.c);
    let var_1 = Struct_4(arg_2.b, u_input.b.x);
    return _wgslsmith_sub_vec2_u32(~_wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(9434u, var_1.b), arg_0.xy), firstLeadingBit(u_input.b.xx)) << (~vec2<u32>(u_input.d.x, arg_0.x) % vec2<u32>(32u)), arg_0.zz);
}

fn func_1() -> vec4<bool> {
    var var_0 = u_input.c;
    let var_1 = abs(~abs(_wgslsmith_div_vec3_u32(u_input.b, u_input.b >> (u_input.b % vec3<u32>(32u)))));
    var var_2 = firstLeadingBit(vec2<u32>(var_1.x, 1u)) >> (_wgslsmith_mod_vec2_u32(func_4(vec3<u32>(u_input.b.x, var_1.x, var_1.x) << (~vec3<u32>(73372u, var_1.x, u_input.a) % vec3<u32>(32u)), func_2(abs(u_input.d.x)), Struct_3(func_2(u_input.a).b, Struct_2(Struct_1(vec2<f32>(-454f, -1000f), vec2<bool>(true, false), true), vec4<f32>(1607f, 114f, 2032f, -410f), vec2<bool>(true, false), vec4<f32>(349f, -518f, -127f, -662f), vec3<bool>(false, false, true)), Struct_2(Struct_1(vec2<f32>(-1123f, -1000f), vec2<bool>(true, false), false), vec4<f32>(-447f, 415f, 1271f, 233f), vec2<bool>(false, true), vec4<f32>(-249f, -753f, 827f, 314f), vec3<bool>(true, true, true)), ~vec3<i32>(u_input.c, u_input.c, u_input.c), 37895i), ~(vec4<i32>(u_input.c, u_input.c, u_input.c, 0i) >> (vec4<u32>(var_1.x, u_input.b.x, u_input.d.x, u_input.b.x) % vec4<u32>(32u)))), ~u_input.d) % vec2<u32>(32u));
    var var_3 = _wgslsmith_sub_i32(abs(2147483647i) << (func_4(~var_1 | select(var_1, u_input.b, vec3<bool>(true, false, false)), Struct_3(Struct_2(Struct_1(vec2<f32>(-919f, -973f), vec2<bool>(true, false), false), vec4<f32>(-1020f, 2456f, -814f, -804f), vec2<bool>(true, false), vec4<f32>(-1206f, 1411f, 826f, -852f), vec3<bool>(true, true, false)), Struct_2(Struct_1(vec2<f32>(1777f, 709f), vec2<bool>(false, true), true), vec4<f32>(454f, 1000f, -478f, 1059f), vec2<bool>(true, false), vec4<f32>(-1151f, 1026f, 724f, -1422f), vec3<bool>(false, true, false)), func_2(var_2.x).a, abs(vec3<i32>(u_input.c, u_input.c, 1i)), 1i), func_2(~16542u), -_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c, -1460i, u_input.c, 11476i), vec4<i32>(u_input.c, u_input.c, 3342i, u_input.c))).x % 32u), -1i);
    let var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1804f)) - _wgslsmith_f_op_f32(-274f - 1545f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-337f, -1000f)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1082f), -506f))));
    return vec4<bool>(true, any(vec2<bool>(true, true)), true, false);
}

fn func_5(arg_0: vec2<f32>, arg_1: vec4<bool>, arg_2: Struct_2) -> f32 {
    var var_0 = Struct_3(arg_2, func_2(1u).c, Struct_2(Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(797f, arg_2.b.x), arg_2.a.a), !(!arg_2.c), func_2(0u).a.e.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-arg_2.d))) - vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(-1328f - 772f), _wgslsmith_f_op_f32(-471f * -2326f), _wgslsmith_f_op_f32(-arg_2.b.x))), !func_1().zw, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-903f, 395f, arg_0.x, -1360f)) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(536f, arg_2.d.x, -1046f, 1367f))))), arg_1.zxx), vec3<i32>(max(firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, u_input.c, -1i), vec3<i32>(u_input.c, u_input.c, -44241i))), u_input.c ^ _wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.c, u_input.c, u_input.c), vec4<i32>(-1i, 60294i, -2147483647i, 1i))), reverseBits(_wgslsmith_clamp_i32(u_input.c, 2147483647i, ~1i)), abs(1i)), 0i);
    let var_1 = var_0.d.x;
    let var_2 = countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(~min(-40871i, 0i), -u_input.c), var_0.d.zy << (abs(u_input.b.xx) % vec2<u32>(32u))));
    var var_3 = arg_0.x;
    var var_4 = ~vec4<u32>(u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(36579u, ~16326u, min(u_input.a, u_input.b.x), u_input.d.x), select(vec4<u32>(15939u, 3425u, u_input.d.x, 55781u), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d.x, 4294967295u, 51320u, 35468u), vec4<u32>(u_input.a, u_input.d.x, u_input.b.x, u_input.d.x)), select(arg_1, arg_1, arg_1))), _wgslsmith_mod_u32(~0u, func_4(u_input.b, func_2(0u), Struct_3(var_0.b, arg_2, arg_2, var_0.d, -33737i), vec4<i32>(var_0.e, var_2, var_2, var_2)).x), reverseBits(48772u));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(arg_0.x, 175f))))) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-895f * _wgslsmith_f_op_f32(abs(arg_2.b.x)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.c.a.a.x)) - _wgslsmith_f_op_f32(abs(var_0.c.d.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-843f - -1539f)))), _wgslsmith_f_op_f32(func_5(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1482f, 863f)))), select(vec4<bool>(true, true, true, true), func_1(), vec4<bool>(true, true, true, true)), Struct_2(func_2(1u).c.a, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1248f, -541f, 877f, 1302f), vec4<f32>(-853f, 645f, -1092f, -226f), true)), vec2<bool>(true, false), _wgslsmith_div_vec4_f32(vec4<f32>(770f, 1440f, 1258f, -1214f), vec4<f32>(701f, 541f, -936f, 306f)), func_1().yyx)))) - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(792f, 1000f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 636f) + vec2<f32>(210f, -1000f)) - vec2<f32>(-2028f, 1836f)))))));
    let var_1 = u_input.c;
    let var_2 = Struct_2(func_2(1u).c.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)))), vec2<bool>(func_2(max(0u, u_input.a)).c.c.x, false | all(vec4<bool>(false, true, false, false))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1462f, var_0.x, 1130f, 810f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, -481f, 898f))))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1504f, 1515f, var_0.x, -846f), vec4<f32>(-1455f, 408f, var_0.x, var_0.x))) - _wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, var_0.x, 603f, 327f), vec4<f32>(var_0.x, var_0.x, -2268f, 192f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x) - vec4<f32>(var_0.x, 1000f, 307f, var_0.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-469f, -1144f, var_0.x, var_0.x) + vec4<f32>(-1052f, var_0.x, var_0.x, var_0.x))), vec4<bool>(true, true, true, true)))), vec3<bool>(_wgslsmith_add_u32(u_input.a << (45156u % 32u), 1784u >> (u_input.a % 32u)) < u_input.b.x, true, all(vec3<bool>(true, true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b.x, ~(~vec3<u32>(u_input.d.x & u_input.b.x, 0u ^ u_input.b.x, _wgslsmith_sub_u32(u_input.a, 37979u))), func_2(countOneBits(_wgslsmith_mult_u32(~u_input.a, u_input.b.x))).d.yy, vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.x, -425f)) + var_2.b.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(f32(-1f) * -1476f)), var_2.d.x)));
}

