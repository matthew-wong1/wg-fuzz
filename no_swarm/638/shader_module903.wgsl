struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: f32,
    c: Struct_1,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> i32 {
    let var_0 = 2474i;
    var var_1 = vec3<u32>(abs(~_wgslsmith_clamp_u32(u_input.c, u_input.c, u_input.c)), u_input.d, ~(_wgslsmith_dot_vec2_u32(vec2<u32>(42532u, 4294967295u), vec2<u32>(u_input.c, 29153u)) << (min(u_input.c, u_input.c) % 32u))) >> (~(~vec3<u32>(u_input.d, 50270u, 21930u)) % vec3<u32>(32u));
    var var_2 = Struct_2((vec4<i32>(-1i) * -vec4<i32>(var_0, -13028i, -9706i, u_input.b.x)) & ~(~vec4<i32>(-2147483647i, u_input.b.x, var_0, u_input.a.x) | -vec4<i32>(0i, u_input.b.x, -23822i, u_input.a.x)), -100f, Struct_1(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(1075f)))), _wgslsmith_f_op_f32(ceil(-757f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(992f + -1194f)), -589f)), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1158f, 1109f, 289f, 1585f) - vec4<f32>(-1839f, 1310f, -555f, -1000f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(288f, 1000f, 2486f, -545f), vec4<f32>(-698f, 936f, 729f, 1006f)))))), any(vec2<bool>(any(select(vec2<bool>(false, false), vec2<bool>(false, false), true)), select(any(vec2<bool>(false, true)), u_input.c == var_1.x, true))));
    let var_3 = Struct_1(var_2.d.a);
    var_1 = vec3<u32>(var_1.x, max(_wgslsmith_sub_u32(~1u, ~(~48760u)), 0u), 12282u);
    return ~var_2.a.x;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2) -> f32 {
    var var_0 = Struct_2(~reverseBits(vec4<i32>(1i, u_input.a.x, u_input.b.x, u_input.a.x) >> (vec4<u32>(0u, u_input.c, u_input.d, 45785u) % vec4<u32>(32u))) >> (~(~vec4<u32>(u_input.c, 14751u, u_input.d, u_input.d)) % vec4<u32>(32u)), 850f, arg_1.c, arg_1.c, arg_1.e);
    var var_1 = func_3();
    let var_2 = _wgslsmith_f_op_f32(floor(-316f));
    var var_3 = Struct_1(arg_0.a);
    var var_4 = var_0.e & ((select(_wgslsmith_mult_i32(5895i, u_input.a.x), u_input.b.x, false) <= var_0.a.x) || any(select(vec4<bool>(true, true, false, true), !vec4<bool>(var_0.e, false, var_0.e, false), var_0.e)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1423f)));
}

fn func_4(arg_0: vec2<f32>, arg_1: f32, arg_2: Struct_1, arg_3: vec2<f32>) -> Struct_2 {
    var var_0 = u_input.b.x;
    let var_1 = ~u_input.c;
    let var_2 = abs(289i);
    var_0 = u_input.a.x;
    let var_3 = arg_2;
    return Struct_2(~(~vec4<i32>(abs(var_2), ~var_2, var_2 & var_2, 5351i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_1(vec4<f32>(-1406f, 447f, arg_1, 112f)), Struct_2(vec4<i32>(-39905i, -1i, u_input.a.x, 0i), -603f, Struct_1(var_3.a), arg_2, false))) + arg_1) + 272f), Struct_1(_wgslsmith_f_op_vec4_f32(ceil(var_3.a))), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-arg_2.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(2065f, var_3.a.x)), _wgslsmith_f_op_f32(select(178f, _wgslsmith_f_op_f32(func_2(arg_2, Struct_2(vec4<i32>(var_2, -27034i, 46630i, 2147483647i), var_3.a.x, var_3, Struct_1(vec4<f32>(arg_1, 1230f, -737f, arg_3.x)), true))), false)))), true);
}

fn func_1(arg_0: f32) -> i32 {
    let var_0 = func_4(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_0, arg_0), vec2<f32>(arg_0, arg_0))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, -123f) * vec2<f32>(arg_0, arg_0))), _wgslsmith_div_vec2_f32(vec2<f32>(156f, -716f), vec2<f32>(arg_0, -523f))), vec2<f32>(_wgslsmith_f_op_f32(select(arg_0, _wgslsmith_f_op_f32(func_2(Struct_1(vec4<f32>(406f, -1930f, arg_0, arg_0)), Struct_2(vec4<i32>(-9689i, 1i, u_input.b.x, u_input.a.x), arg_0, Struct_1(vec4<f32>(arg_0, arg_0, 684f, arg_0)), Struct_1(vec4<f32>(1000f, -158f, arg_0, arg_0)), false))), all(vec3<bool>(true, true, true)))), _wgslsmith_f_op_f32(func_2(Struct_1(vec4<f32>(arg_0, arg_0, 1059f, arg_0)), Struct_2(vec4<i32>(2961i, 39600i, u_input.a.x, u_input.a.x), 1000f, Struct_1(vec4<f32>(-1639f, arg_0, 241f, arg_0)), Struct_1(vec4<f32>(arg_0, 433f, 324f, 272f)), false)))), vec2<bool>(all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), true))), 445f, Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 + -501f) - arg_0), arg_0, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0))), 605f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_0, arg_0)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(316f, arg_0)) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-128f, -300f), vec2<f32>(arg_0, 1094f)))))));
    var var_1 = -591f;
    var_1 = _wgslsmith_f_op_f32(f32(-1f) * -234f);
    var var_2 = select(vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_mod_u32(reverseBits(31986u), u_input.d), 1u), _wgslsmith_sub_u32(26595u, _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, u_input.c), vec2<u32>(4294967295u, 4458u), vec2<u32>(22881u, u_input.d)), vec2<u32>(u_input.c, 4294967295u) >> (vec2<u32>(4294967295u, u_input.c) % vec2<u32>(32u)))), 35110u), vec3<u32>(_wgslsmith_dot_vec2_u32(min(_wgslsmith_div_vec2_u32(vec2<u32>(1u, 79537u), vec2<u32>(u_input.c, u_input.d)), ~vec2<u32>(u_input.d, 1u)), (vec2<u32>(u_input.c, u_input.d) | vec2<u32>(1u, u_input.c)) ^ vec2<u32>(36427u, 5919u)), ~_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(4294967295u, 4294967295u, 0u, u_input.c)), vec4<u32>(u_input.d, u_input.d, u_input.c, 1u)), u_input.c), 4294967295u <= ~_wgslsmith_div_u32(4294967295u, min(u_input.c, 0u)));
    var var_3 = func_4(vec2<f32>(var_0.b, var_0.b), _wgslsmith_f_op_f32(arg_0 - 1f), var_0.c, vec2<f32>(_wgslsmith_f_op_f32(var_0.b + var_0.d.a.x), -1194f));
    return _wgslsmith_mult_i32(var_3.a.x, _wgslsmith_mod_i32(max(53685i, var_0.a.x), ~(select(u_input.b.x, 2147483647i, var_0.e) ^ 1i)));
}

fn func_5(arg_0: vec4<i32>, arg_1: vec4<bool>) -> Struct_2 {
    return func_4(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1309f)) - _wgslsmith_f_op_f32(trunc(314f))), 2486f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(687f, _wgslsmith_f_op_f32(-701f * 1f))), func_4(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-121f, -756f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -1019f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -988f), -950f))), func_4(vec2<f32>(1f, 1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1351f + 1531f) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 1555f, 1055f, 1000f) * vec4<f32>(569f, 1026f, 754f, 822f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(662f, -1000f), vec2<f32>(-103f, 1700f))))).d, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -866f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(592f, 566f, true)))))).d, vec2<f32>(_wgslsmith_f_op_f32(func_2(Struct_1(vec4<f32>(324f, -1000f, 450f, -1067f)), Struct_2(-vec4<i32>(-3582i, -2147483647i, arg_0.x, arg_0.x), func_4(vec2<f32>(-1166f, -833f), 290f, Struct_1(vec4<f32>(-1400f, -807f, -432f, -1017f)), vec2<f32>(2394f, 1156f)).d.a.x, func_4(vec2<f32>(-245f, 682f), -871f, Struct_1(vec4<f32>(-1192f, 1735f, 1000f, -751f)), vec2<f32>(-1063f, 510f)).d, func_4(vec2<f32>(624f, 269f), 909f, Struct_1(vec4<f32>(457f, -677f, -1000f, -862f)), vec2<f32>(459f, 2144f)).d, 65795i >= arg_0.x))), 295f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -2426f;
    let var_1 = func_5(_wgslsmith_mult_vec4_i32(abs(~vec4<i32>(-50092i, 33793i, u_input.b.x, u_input.a.x)) & firstLeadingBit(vec4<i32>(1i, u_input.a.x, 1i, u_input.b.x)), vec4<i32>(func_1(_wgslsmith_f_op_f32(min(-1201f, 612f))), -1i << ((u_input.c >> (u_input.c % 32u)) % 32u), reverseBits(_wgslsmith_sub_i32(u_input.b.x, u_input.a.x)), _wgslsmith_mod_i32(u_input.a.x, u_input.b.x))), !select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true)), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), true), vec4<bool>(true, true, any(vec4<bool>(false, true, true, false)), all(vec3<bool>(true, true, false)))));
    let var_2 = !select(select(select(select(vec2<bool>(var_1.e, var_1.e), vec2<bool>(false, false), vec2<bool>(false, false)), select(vec2<bool>(false, true), vec2<bool>(var_1.e, false), true), false), !vec2<bool>(var_1.e, var_1.e), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, u_input.d), vec3<u32>(15053u, 4294967295u, u_input.d)) < ~u_input.c), select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(var_1.e, !var_1.e), all(vec2<bool>(true, true))), !func_5(var_1.a, select(vec4<bool>(var_1.e, false, true, var_1.e), vec4<bool>(var_1.e, var_1.e, false, true), true)).e);
    let var_3 = !(!select(!select(vec3<bool>(true, var_1.e, true), vec3<bool>(false, true, var_2.x), vec3<bool>(true, var_2.x, var_1.e)), vec3<bool>(var_1.e, var_2.x, !var_1.e), select(!vec3<bool>(true, false, var_1.e), vec3<bool>(false, var_1.e, var_1.e), !var_2.x)));
    var var_4 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(~abs(0u) >> (~u_input.c % 32u), 103602u, abs(var_4.a.yy));
}

