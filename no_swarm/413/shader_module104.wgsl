struct Struct_1 {
    a: vec3<i32>,
    b: vec2<i32>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: f32,
    d: u32,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec3<bool>,
    d: Struct_1,
    e: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<i32>,
    d: vec4<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: vec2<u32>, arg_1: u32, arg_2: vec3<f32>, arg_3: Struct_4) -> f32 {
    var var_0 = !any(select(vec3<bool>(true, arg_3.c.x, true), vec3<bool>(false, all(vec3<bool>(true, true, true)), true), arg_3.c));
    let var_1 = ~vec3<u32>(~(abs(arg_1) ^ arg_1), ~(~(65122u & arg_3.b.x)), arg_1);
    var var_2 = arg_2.x;
    let var_3 = arg_3.d.b.x;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-999f)) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1773f))), arg_2.x)));
}

fn func_4(arg_0: Struct_3, arg_1: f32, arg_2: vec2<bool>) -> vec3<i32> {
    let var_0 = Struct_1(arg_0.b.a.a, ~select(select(arg_0.b.a.a.xz, _wgslsmith_mult_vec2_i32(u_input.d.yw, vec2<i32>(u_input.c.x, -30894i)), vec2<bool>(true, true)), reverseBits(-vec2<i32>(-1i, u_input.d.x)), false), true);
    var var_1 = select(select(!select(select(vec2<bool>(true, true), vec2<bool>(false, arg_2.x), vec2<bool>(arg_2.x, false)), arg_2, true), arg_0.b.b.xx, any(arg_0.b.b.xxx)), arg_0.b.b.yw, select(vec2<bool>(false, true), arg_0.b.b.wy, _wgslsmith_sub_i32(-24953i, reverseBits(u_input.c.x)) <= -_wgslsmith_div_i32(-1i, 11619i)));
    var var_2 = arg_1;
    var var_3 = arg_0.b.b;
    var var_4 = Struct_4(u_input.a, _wgslsmith_div_vec2_u32(reverseBits(u_input.e), firstTrailingBit(abs(countOneBits(vec2<u32>(u_input.e.x, u_input.e.x))))), select(!(!vec3<bool>(var_3.x, true, var_3.x)), vec3<bool>(false, firstLeadingBit(u_input.c.x) > -arg_0.b.a.b.x, true), !(!var_3.x)), Struct_1(vec3<i32>(~(-25378i), _wgslsmith_div_i32(var_0.a.x, arg_0.b.a.b.x) >> (_wgslsmith_clamp_u32(arg_0.d, u_input.e.x, u_input.e.x) % 32u), -19031i | u_input.a.x), firstLeadingBit(vec2<i32>(countOneBits(var_0.b.x), _wgslsmith_sub_i32(0i, -9021i))), true), ~902u);
    return _wgslsmith_add_vec3_i32(var_4.d.a, var_4.a.wyx);
}

fn func_2(arg_0: vec3<f32>) -> Struct_1 {
    var var_0 = 1i;
    return Struct_1(~func_4(Struct_3(_wgslsmith_f_op_f32(-289f - arg_0.x), Struct_2(Struct_1(u_input.a.xzy, u_input.a.yw, false), vec4<bool>(true, false, true, true)), _wgslsmith_f_op_f32(func_3(vec2<u32>(33584u, u_input.e.x), u_input.e.x, vec3<f32>(-340f, arg_0.x, arg_0.x), Struct_4(vec4<i32>(-4519i, u_input.b, u_input.b, 1041i), vec2<u32>(49762u, 4294967295u), vec3<bool>(false, true, true), Struct_1(u_input.c, vec2<i32>(2708i, 1i), false), 53280u))), u_input.e.x), arg_0.x, vec2<bool>(true, true)), u_input.d.zx, all(vec2<bool>(any(select(vec2<bool>(false, false), vec2<bool>(true, false), false)), false)));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_4, arg_2: vec2<i32>) -> vec2<bool> {
    let var_0 = 2147483647i;
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-677f, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-471f, -1346f))), _wgslsmith_f_op_f32(-451f * _wgslsmith_f_op_f32(f32(-1f) * -1287f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(121f + -261f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(147f, 1100f, -574f, 832f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-174f, -1009f, 1080f, 1730f))) - vec4<f32>(-512f, -302f, _wgslsmith_f_op_f32(ceil(129f)), _wgslsmith_f_op_f32(2210f * 786f)))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2409f - -1000f)), -642f, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(162f, _wgslsmith_f_op_f32(step(909f, 361f)))))));
    let var_2 = Struct_4(arg_1.a, ~firstLeadingBit(vec2<u32>(0u, 4294967295u)) & countOneBits(~(arg_1.b << (u_input.e % vec2<u32>(32u)))), vec3<bool>(true, !arg_1.c.x, false), func_2(vec3<f32>(var_1.x, var_1.x, _wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(-var_1.x)))), _wgslsmith_clamp_u32(4309u, u_input.e.x, ~1u));
    var var_3 = Struct_3(_wgslsmith_f_op_f32(sign(-516f)), Struct_2(func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1801f, var_1.x, -612f) - var_1.ywz) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1375f, var_1.x, 1500f) - var_1.wxz))), select(vec4<bool>(var_2.d.c, func_2(vec3<f32>(var_1.x, var_1.x, -1074f)).c, any(vec2<bool>(true, var_2.d.c)), true), !select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, arg_1.d.c, false), vec4<bool>(arg_0.c, var_2.d.c, false, true)), !select(vec4<bool>(var_2.d.c, arg_1.d.c, true, arg_1.d.c), vec4<bool>(var_2.c.x, arg_0.c, var_2.c.x, false), vec4<bool>(var_2.d.c, false, var_2.d.c, var_2.d.c)))), 1421f, 1u);
    let var_4 = Struct_4(_wgslsmith_add_vec4_i32(countOneBits(countOneBits(var_2.a)), vec4<i32>(u_input.a.x, arg_2.x ^ 11367i, -1i, -9786i) ^ (max(vec4<i32>(u_input.c.x, -35581i, -1i, var_2.d.b.x), vec4<i32>(2147483647i, var_3.b.a.b.x, -1i, 31004i)) ^ ~vec4<i32>(1i, arg_1.a.x, arg_1.a.x, 0i))), ~(vec2<u32>(var_2.e, 23265u) >> (~u_input.e % vec2<u32>(32u))) | var_2.b, select(select(select(!vec3<bool>(arg_1.d.c, arg_0.c, var_3.b.a.c), arg_1.c, select(vec3<bool>(var_3.b.a.c, false, true), vec3<bool>(true, arg_1.c.x, var_2.c.x), var_3.b.b.xwy)), var_2.c, vec3<bool>(true, true, false)), var_3.b.b.yxz, vec3<bool>(!(!arg_0.c), any(vec3<bool>(arg_1.d.c, false, var_3.b.b.x)) && arg_0.c, !arg_0.c)), var_3.b.a, ~select(arg_1.e | 1u, var_2.e, !(!arg_0.c)));
    return !select(vec2<bool>(false, any(var_3.b.b)), !var_4.c.zz, !(!arg_1.c.yx));
}

fn func_1(arg_0: vec4<u32>, arg_1: bool) -> vec2<i32> {
    var var_0 = max(vec2<u32>(_wgslsmith_div_u32(1u, u_input.e.x), _wgslsmith_add_u32(48959u, 41016u & u_input.e.x)), ~(u_input.e | _wgslsmith_mult_vec2_u32(arg_0.xz, vec2<u32>(arg_0.x, u_input.e.x))));
    let var_1 = select(!func_5(func_2(vec3<f32>(-1776f, -516f, -107f)), Struct_4(~u_input.a, countOneBits(vec2<u32>(var_0.x, arg_0.x)), vec3<bool>(arg_1, arg_1, arg_1), Struct_1(vec3<i32>(49379i, -2147483647i, u_input.d.x), vec2<i32>(u_input.a.x, -2147483647i), true), 1u), -vec2<i32>(9819i, 2147483647i) >> (u_input.e % vec2<u32>(32u))), select(func_5(func_2(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-165f, 119f, -1046f), vec3<f32>(-751f, 410f, -2366f)))), Struct_4(abs(u_input.a), vec2<u32>(57556u, 1u), !vec3<bool>(arg_1, arg_1, true), func_2(vec3<f32>(-2368f, 1000f, -2545f)), ~107719u), vec2<i32>(1460i, ~(-1i))), select(func_5(func_2(vec3<f32>(-423f, 1244f, -1797f)), Struct_4(u_input.a, u_input.e, vec3<bool>(arg_1, arg_1, false), Struct_1(u_input.d.zyy, vec2<i32>(2147483647i, u_input.a.x), true), var_0.x), _wgslsmith_sub_vec2_i32(vec2<i32>(-17157i, -1i), u_input.c.xz)), func_5(func_2(vec3<f32>(-387f, 838f, -188f)), Struct_4(u_input.a, arg_0.yz, vec3<bool>(false, false, true), Struct_1(u_input.c, vec2<i32>(u_input.d.x, 14926i), false), var_0.x), vec2<i32>(2147483647i, -1i)), select(vec2<bool>(arg_1, true), func_5(Struct_1(u_input.c, vec2<i32>(0i, 2147483647i), arg_1), Struct_4(vec4<i32>(u_input.c.x, u_input.d.x, u_input.d.x, u_input.d.x), arg_0.yy, vec3<bool>(true, arg_1, arg_1), Struct_1(u_input.c, u_input.c.zz, arg_1), var_0.x), u_input.d.wy), func_5(Struct_1(u_input.c, vec2<i32>(-2147483647i, u_input.b), false), Struct_4(u_input.a, u_input.e, vec3<bool>(false, arg_1, false), Struct_1(u_input.d.wyz, vec2<i32>(0i, u_input.d.x), arg_1), 17650u), u_input.c.yy).x)), vec2<bool>(true, true)), arg_1);
    var var_2 = 148f;
    let var_3 = Struct_1(vec3<i32>(~u_input.b ^ _wgslsmith_mult_i32(reverseBits(u_input.d.x), _wgslsmith_div_i32(-24738i, 3678i)), ~2147483647i, -1i), u_input.a.yx, !(!all(!vec2<bool>(var_1.x, arg_1))));
    let var_4 = Struct_4(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(~(-2147483647i), 2147483647i, min(u_input.b, 29087i), u_input.a.x), _wgslsmith_clamp_vec4_i32(vec4<i32>(45i, 0i, 0i, u_input.d.x), _wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, 1i, -11882i, 2147483647i), vec4<i32>(var_3.b.x, 1i, var_3.a.x, u_input.d.x)), u_input.a)), var_3.a.x, ~firstTrailingBit(-49515i), ~1542i), ~arg_0.yy, select(select(select(!vec3<bool>(true, var_1.x, true), select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), false), vec3<bool>(var_3.c, true, false)), vec3<bool>(all(vec4<bool>(var_1.x, var_1.x, false, false)), var_3.c, all(vec3<bool>(var_3.c, var_3.c, var_3.c))), false), select(!(!vec3<bool>(arg_1, var_3.c, var_3.c)), !(!vec3<bool>(arg_1, arg_1, false)), true), true), var_3, _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(~(arg_0.yww << (arg_0.wwz % vec3<u32>(32u))), _wgslsmith_mult_vec3_u32(arg_0.zxz, vec3<u32>(u_input.e.x, arg_0.x, 0u) & vec3<u32>(0u, 4294967295u, u_input.e.x))), reverseBits(~(~var_0.x))));
    return ~vec2<i32>(-_wgslsmith_clamp_i32(-1i, min(-1i, var_4.d.b.x), var_4.d.a.x), var_3.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~abs(_wgslsmith_mult_i32(reverseBits(u_input.d.x), abs(_wgslsmith_mult_i32(u_input.d.x, 1i))));
    var_0 = min(_wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.a.x, 2147483647i), func_1(min(vec4<u32>(u_input.e.x, u_input.e.x, 46487u, 27158u), vec4<u32>(u_input.e.x, 24981u, u_input.e.x, 47412u)), true)) ^ -48295i, -1i);
    var var_1 = i32(-1i) * -36895i;
    var_0 = _wgslsmith_mult_i32(_wgslsmith_sub_i32(0i, u_input.c.x), select(73865i, -32336i, any(vec4<bool>(true, true, true, true))));
    var var_2 = countOneBits(u_input.e.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(504f, _wgslsmith_f_op_f32(trunc(1000f)), false))), 1476f)), _wgslsmith_f_op_f32(1f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-933f))), _wgslsmith_f_op_f32(2037f + 1f))));
}

