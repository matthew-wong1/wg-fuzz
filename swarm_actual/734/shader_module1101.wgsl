struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: vec3<f32>,
    d: i32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: vec3<bool>,
    e: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: bool,
}

struct Struct_5 {
    a: vec4<bool>,
    b: Struct_1,
    c: f32,
    d: vec4<i32>,
    e: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -520f;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_4, arg_2: Struct_1, arg_3: vec2<f32>) -> f32 {
    let var_0 = arg_2;
    let var_1 = reverseBits(vec2<i32>(~arg_2.a.x, -arg_2.d) & min(firstTrailingBit(_wgslsmith_mult_vec2_i32(arg_2.a.zy, arg_2.a.zy)), _wgslsmith_div_vec2_i32(~vec2<i32>(var_0.a.x, 0i), _wgslsmith_mod_vec2_i32(vec2<i32>(0i, -1i), vec2<i32>(-2147483647i, -46762i)))));
    let var_2 = Struct_4(abs(-1i), arg_0.x);
    return arg_3.x;
}

fn func_2(arg_0: bool, arg_1: Struct_4) -> bool {
    let var_0 = Struct_2(Struct_1(-(~vec3<i32>(-1i, arg_1.a, -8389i) | max(vec3<i32>(arg_1.a, -31336i, arg_1.a), vec3<i32>(20326i, arg_1.a, -2147483647i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1161f))), vec3<f32>(_wgslsmith_f_op_f32(func_3(!vec2<bool>(arg_0, arg_0), Struct_4(2147483647i, arg_0), Struct_1(vec3<i32>(arg_1.a, arg_1.a, -1i), -863f, vec3<f32>(-321f, -1792f, 2061f), 2147483647i, arg_0), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -594f) + vec2<f32>(1756f, 559f)))), _wgslsmith_div_f32(-507f, _wgslsmith_f_op_f32(1000f - -638f)), _wgslsmith_f_op_f32(f32(-1f) * -388f)), min(1i, -7345i), any(vec3<bool>(all(vec3<bool>(arg_0, false, arg_1.b)), arg_0, arg_1.b))), !arg_0);
    var var_1 = -(~(-1i));
    var_1 = ~(~0i);
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f));
    global0 = _wgslsmith_f_op_f32(func_3(!select(vec2<bool>(arg_1.b, true), vec2<bool>(var_0.a.e, arg_0), select(select(vec2<bool>(arg_1.b, arg_1.b), vec2<bool>(true, var_0.a.e), true), !vec2<bool>(arg_1.b, false), false)), arg_1, Struct_1(vec3<i32>(_wgslsmith_mult_i32(var_0.a.d, -70254i), min(-19557i, var_0.a.a.x), _wgslsmith_div_i32(-1469i, _wgslsmith_mod_i32(var_0.a.d, arg_1.a))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(603f))))), var_0.a.c, 1i, false), _wgslsmith_f_op_vec2_f32(var_0.a.c.xx + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-773f, _wgslsmith_f_op_f32(f32(-1f) * -1318f)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(min(var_0.a.c.zy, vec2<f32>(-223f, -706f))))))))));
    return _wgslsmith_add_i32(2147483647i, arg_1.a) == -2147483647i;
}

fn func_4(arg_0: vec4<f32>, arg_1: bool, arg_2: Struct_1) -> Struct_3 {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + arg_2.b))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.c.x, -1256f)) * _wgslsmith_f_op_f32(func_3(vec2<bool>(true, true), Struct_4(1i, arg_2.e), arg_2, _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.b, arg_2.b)))))));
    return Struct_3(arg_1, Struct_1(vec3<i32>(firstTrailingBit(_wgslsmith_clamp_i32(arg_2.d, arg_2.d, 2147483647i)), _wgslsmith_mult_i32(17785i, 23042i | arg_2.d), _wgslsmith_mod_i32(min(arg_2.d, 0i), arg_2.d)), _wgslsmith_f_op_f32(730f + 780f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -600f, 586f))), _wgslsmith_mult_i32(arg_2.a.x, 2147483647i), any(vec2<bool>(arg_1 && false, true))), arg_2, vec3<bool>(!arg_1, arg_2.a.x == _wgslsmith_dot_vec2_i32(arg_2.a.xz & arg_2.a.xz, vec2<i32>(51104i, arg_2.d)), false), Struct_2(arg_2, !(countOneBits(u_input.a) >= 0u)));
}

fn func_5(arg_0: vec2<u32>, arg_1: vec3<i32>, arg_2: Struct_3, arg_3: u32) -> f32 {
    var var_0 = Struct_3(reverseBits(_wgslsmith_mod_i32(1i, -2147483647i)) >= (i32(-1i) * -_wgslsmith_div_i32(-16618i, arg_2.c.d)), arg_2.c, func_4(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-143f, _wgslsmith_f_op_f32(-1000f * 296f), _wgslsmith_f_op_f32(round(arg_2.e.a.b)), _wgslsmith_f_op_f32(arg_2.c.c.x + 585f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.c.c.x, -1164f, -1591f, arg_2.c.b)), arg_2.e.a.e)), !all(!vec3<bool>(arg_2.e.b, arg_2.d.x, false)), arg_2.c).b, !arg_2.d, Struct_2(Struct_1(arg_1, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-375f, -1000f)), arg_2.e.a.c, arg_1.x, true), false));
    let var_1 = arg_2.c;
    var var_2 = var_0.e.a;
    let var_3 = select(!(!select(!vec4<bool>(var_2.e, true, true, false), select(vec4<bool>(false, var_2.e, var_0.a, false), vec4<bool>(var_0.d.x, var_1.e, true, var_0.a), false), true)), vec4<bool>(func_4(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_1.c.x, arg_2.c.c.x, var_1.b, var_0.b.c.x), vec4<f32>(-1547f, var_1.c.x, -1603f, var_1.c.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.b, var_1.c.x, -378f, -223f)), vec4<bool>(true, false, true, true))), arg_2.a, Struct_1(reverseBits(arg_1), var_2.c.x, arg_2.c.c, -var_1.a.x, select(false, true, var_0.a))).b.e, true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.e.a.c.x - var_1.b)) >= _wgslsmith_f_op_f32(-377f + -185f), arg_2.e.a.e), true);
    global0 = _wgslsmith_f_op_f32(-var_0.e.a.c.x);
    return var_0.b.b;
}

fn func_1() -> vec4<bool> {
    global0 = -1025f;
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1891f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-311f + -459f))), 805f, _wgslsmith_f_op_f32(func_5(~firstTrailingBit(u_input.b.zy), ~vec3<i32>(1i, -49803i, 1585i), func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(-306f, 467f, 1399f, -963f) + vec4<f32>(-1075f, -2060f, -846f, 395f)), func_2(false, Struct_4(-2147483647i, true)), Struct_1(vec3<i32>(29195i, -1i, 55907i), -132f, vec3<f32>(289f, -2339f, 181f), 40020i, false)), 16376u))));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1155f));
    global0 = -1449f;
    let var_1 = Struct_3(any(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true))), Struct_1(firstTrailingBit(vec3<i32>(-1i, max(-2147483647i, -51268i), _wgslsmith_add_i32(0i, -2147483647i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(307f * _wgslsmith_f_op_f32(abs(var_0.x)))), _wgslsmith_f_op_vec3_f32(func_4(var_0, any(vec2<bool>(true, true)), func_4(vec4<f32>(var_0.x, var_0.x, -810f, 2152f), false, Struct_1(vec3<i32>(2147483647i, 7473i, -3766i), 169f, vec3<f32>(var_0.x, var_0.x, 1824f), -1i, true)).c).c.c - vec3<f32>(var_0.x, 198f, -1017f)), -8658i, select(true, true, true)), Struct_1(vec3<i32>(-_wgslsmith_mult_i32(1i, -13814i), 0i >> (u_input.b.x % 32u), 1i), _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(var_0.x - _wgslsmith_div_f32(var_0.x, var_0.x))), vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), var_0.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(var_0.x, var_0.x))))), min(abs(1i), abs(1i)), true), !vec3<bool>(false, func_2(false, Struct_4(-24512i, true)) & func_2(true, Struct_4(-82972i, true)), true), func_4(_wgslsmith_f_op_vec4_f32(select(var_0, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, -239f) - vec4<f32>(1000f, -1000f, var_0.x, var_0.x)))), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true))))), all(vec3<bool>(true, true, true)), func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0 - var_0)), all(vec4<bool>(true, false, false, true)) || true, Struct_1(vec3<i32>(-6584i, 24645i, 2147483647i), _wgslsmith_f_op_f32(var_0.x * var_0.x), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1201f, var_0.x, var_0.x))), 17939i, true)).e.a).e);
    return select(vec4<bool>(!(0u > ~u_input.a), true, var_1.e.b, true), select(vec4<bool>(true, false, var_1.c.e | false, 1122f < _wgslsmith_f_op_f32(-var_1.b.b)), !vec4<bool>(var_1.c.e, true, any(vec4<bool>(var_1.b.e, false, true, var_1.c.e)), func_4(var_0, true, Struct_1(vec3<i32>(-1i, var_1.e.a.d, 24216i), -1605f, vec3<f32>(var_0.x, 927f, var_1.e.a.c.x), var_1.e.a.a.x, true)).d.x), false), !vec4<bool>(any(vec4<bool>(true, false, true, false)), var_1.d.x | all(var_1.d.xx), !var_1.e.b, any(!vec3<bool>(var_1.b.e, var_1.b.e, true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(func_1(), func_4(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -252f) - 886f), func_4(vec4<f32>(2165f, 826f, -655f, 131f), true, Struct_1(vec3<i32>(6208i, -2147483647i, -24994i), 1000f, vec3<f32>(2044f, -150f, -445f), 7978i, false)).c.b, _wgslsmith_f_op_f32(ceil(227f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-1176f, 1012f))))), any(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false))), Struct_1(vec3<i32>(1i, 1i, 1i), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-2239f, 808f) * _wgslsmith_f_op_f32(f32(-1f) * -386f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(679f, 1000f, -692f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(192f, -537f, -1092f))), _wgslsmith_mod_i32(abs(2147483647i), -1i), func_1().x)).c, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(215f, 127f, 371f, 545f)), true, Struct_1(vec3<i32>(0i, 0i, 47386i), -1000f, vec3<f32>(573f, -494f, 1024f), -17508i, true)).c.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -265f)))), vec4<i32>(_wgslsmith_add_i32(_wgslsmith_add_i32(abs(1i), 1i), -8410i), 1i, -6857i, 0i), Struct_4(_wgslsmith_add_i32(_wgslsmith_sub_i32(-31532i, _wgslsmith_sub_i32(-2147483647i, 0i)), -58046i >> (select(13009u, 22834u, false) % 32u)), any(!func_1().xxy)));
    global0 = _wgslsmith_f_op_f32(round(-871f));
    let var_1 = select(!func_1().zxy, func_1().xyz, vec3<bool>(func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c, var_0.b.c.x, var_0.c, -533f)), var_0.e.b, func_4(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-214f, 1000f, var_0.b.c.x, var_0.c))), true, var_0.b).b).b.e, func_1().x, func_1().x));
    let var_2 = Struct_1(vec3<i32>(-2147483647i, abs(~func_4(vec4<f32>(-720f, -1351f, -756f, 395f), var_0.e.b, var_0.b).e.a.d), _wgslsmith_div_i32(-var_0.e.a, var_0.b.d)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.c.x * -450f) - _wgslsmith_f_op_f32(-var_0.b.c.x)))) - var_0.c), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(var_0.b.c + vec3<f32>(-290f, -195f, _wgslsmith_f_op_f32(-var_0.c))))), var_0.e.a, (max(0i, var_0.d.x) & ~var_0.e.a) > -2147483647i);
    global0 = _wgslsmith_f_op_f32(var_2.b + var_0.b.b);
    var var_3 = func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.c, var_2.c.x, var_0.b.b, var_2.c.x))), vec4<f32>(445f, var_0.b.c.x, -306f, var_0.b.b)))))), _wgslsmith_f_op_f32(min(func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(785f, var_0.b.c.x, -258f, -731f)), true, var_2).b.b, 433f)) == _wgslsmith_f_op_f32(floor(-1000f)), Struct_1(var_0.d.zzw, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.b.b - -523f), 315f)), vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(var_0.c, 726f)), 1089f)), _wgslsmith_f_op_f32(max(-1022f, 1785f)), _wgslsmith_f_op_f32(203f + var_0.c)), max(2147483647i, ~_wgslsmith_clamp_i32(var_2.a.x, 9522i, -42370i)), (~u_input.a > abs(46526u)) & func_1().x)).e;
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, _wgslsmith_add_u32(_wgslsmith_add_u32(0u | _wgslsmith_mod_u32(u_input.a, 16714u), u_input.a), 4294967295u), ~firstTrailingBit(abs(u_input.b.wzz)));
}

