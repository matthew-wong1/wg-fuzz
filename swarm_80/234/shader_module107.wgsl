struct Struct_1 {
    a: vec4<u32>,
    b: vec3<f32>,
    c: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
    c: vec2<f32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: Struct_1) -> vec4<u32> {
    var var_0 = arg_3;
    var var_1 = abs(select(~(~countOneBits(arg_0)), abs(vec2<u32>(~4294967295u, ~var_0.a.x)), any(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false)), true))));
    var var_2 = Struct_2(false, Struct_1(_wgslsmith_sub_vec4_u32((vec4<u32>(14570u, 4294967295u, 38270u, 1u) << (arg_3.a % vec4<u32>(32u))) >> (vec4<u32>(1u, 55048u, 1u, arg_0.x) % vec4<u32>(32u)), vec4<u32>(arg_3.a.x, _wgslsmith_clamp_u32(u_input.b, arg_0.x, 1u), ~arg_3.a.x, ~0u)), var_0.b, arg_3.b.x), ~(_wgslsmith_div_vec2_u32(arg_0, arg_0) << (~var_0.a.yz % vec2<u32>(32u))) | vec2<u32>(1u, (u_input.b << (0u % 32u)) << (~4294967295u % 32u)));
    var var_3 = u_input.c.x;
    var_2 = Struct_2(!var_2.a, Struct_1(_wgslsmith_sub_vec4_u32(var_0.a, vec4<u32>(~var_0.a.x, ~24134u, ~u_input.b, ~20347u)), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(arg_3.b.x, 1378f), _wgslsmith_f_op_f32(-arg_2.b.x), -1054f), _wgslsmith_f_op_vec3_f32(arg_3.b + _wgslsmith_f_op_vec3_f32(-var_0.b))), arg_1.x), arg_2.a.xy);
    return vec4<u32>(~abs((arg_0.x << (var_1.x % 32u)) >> (reverseBits(var_0.a.x) % 32u)), var_1.x, var_0.a.x, select(_wgslsmith_mult_u32(0u, firstTrailingBit(_wgslsmith_dot_vec4_u32(arg_2.a, arg_3.a))), arg_2.a.x, true));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_2(true, Struct_1(~firstLeadingBit(func_3(vec2<u32>(u_input.b, 0u), vec2<f32>(752f, -244f), Struct_1(vec4<u32>(u_input.b, u_input.b, 1u, u_input.b), vec3<f32>(-641f, -2060f, -1255f), 321f), Struct_1(vec4<u32>(1211u, u_input.b, 1u, u_input.b), vec3<f32>(-937f, -196f, -194f), -1000f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1318f, _wgslsmith_f_op_f32(min(-1480f, -1468f)), _wgslsmith_f_op_f32(abs(-762f)))), _wgslsmith_f_op_f32(f32(-1f) * -1094f)), firstTrailingBit(max(select(vec2<u32>(u_input.b, 4294967295u), vec2<u32>(u_input.b, 4294967295u) ^ vec2<u32>(u_input.b, 0u), false), _wgslsmith_clamp_vec2_u32(func_3(vec2<u32>(u_input.b, u_input.b), vec2<f32>(1163f, -207f), Struct_1(vec4<u32>(u_input.b, 11124u, 0u, 4294967295u), vec3<f32>(-568f, -154f, 1186f), 894f), Struct_1(vec4<u32>(66029u, u_input.b, 0u, 1u), vec3<f32>(609f, 628f, 314f), -727f)).zz, func_3(vec2<u32>(416u, u_input.b), vec2<f32>(1319f, 1000f), Struct_1(vec4<u32>(u_input.b, 88220u, 26086u, u_input.b), vec3<f32>(-2353f, -1000f, 143f), -619f), Struct_1(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), vec3<f32>(785f, -1321f, 2036f), -339f)).yw, select(vec2<u32>(57946u, 1u), vec2<u32>(36558u, 42067u), false)))));
    var var_1 = 1u;
    var_1 = reverseBits(~var_0.c.x) ^ _wgslsmith_dot_vec4_u32(firstTrailingBit(_wgslsmith_sub_vec4_u32(var_0.b.a, ~vec4<u32>(var_0.b.a.x, 4294967295u, 85425u, 0u))), _wgslsmith_clamp_vec4_u32(var_0.b.a >> (abs(var_0.b.a) % vec4<u32>(32u)), vec4<u32>(~u_input.b, 31505u << (1u % 32u), _wgslsmith_mult_u32(u_input.b, var_0.c.x), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 22171u), var_0.b.a.zx)), firstTrailingBit(_wgslsmith_mod_vec4_u32(var_0.b.a, vec4<u32>(38389u, var_0.b.a.x, 0u, var_0.c.x)))));
    var var_2 = Struct_2(any(!(!(!vec3<bool>(var_0.a, var_0.a, false)))), Struct_1(vec4<u32>(0u, _wgslsmith_mult_u32(var_0.b.a.x, 0u) << ((var_0.b.a.x & 34389u) % 32u), _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, 48576u), vec2<u32>(4294967295u, 0u), vec2<u32>(38156u, 37693u)), ~vec2<u32>(4294967295u, 71864u)), ~var_0.c.x ^ _wgslsmith_mod_u32(var_0.b.a.x, 0u)), vec3<f32>(var_0.b.c, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.b.b.x), _wgslsmith_f_op_f32(-var_0.b.c), true)), -101f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-3032f + -1058f)))), ~(~abs(var_0.c)));
    var var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.b.c, -1243f, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-274f, -334f), 1969f, all(vec2<bool>(true, false)))), 1094f));
    return var_2.b;
}

fn func_4(arg_0: f32, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: Struct_2) -> Struct_1 {
    let var_0 = _wgslsmith_clamp_u32(34486u, ~29714u, u_input.b) | _wgslsmith_div_u32(1u, ~(arg_2.a.x & 1u));
    var var_1 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(arg_2.b))) - vec3<f32>(-423f, 482f, arg_3.b.b.x))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, 1161f, _wgslsmith_f_op_f32(-arg_0)))))));
    let var_2 = arg_3.a;
    let var_3 = -1i;
    var_1 = vec3<f32>(-290f, _wgslsmith_f_op_f32(f32(-1f) * -2640f), func_2().c);
    return arg_2;
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: bool) -> Struct_1 {
    let var_0 = any(vec4<bool>(arg_1.a, false, true, _wgslsmith_div_f32(arg_0.x, _wgslsmith_div_f32(-1093f, -1000f)) > arg_1.b.b.x));
    var var_1 = true;
    let var_2 = 1u;
    let var_3 = vec2<bool>(!(!var_0), _wgslsmith_div_i32(abs(_wgslsmith_mult_i32(u_input.a, u_input.c.x)), _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, u_input.c.x), u_input.c), _wgslsmith_dot_vec2_i32(u_input.c, vec2<i32>(-1i, -89902i)))) > 13943i);
    var var_4 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x - arg_1.b.b.x)), vec3<bool>(true, false, arg_1.a), Struct_1(vec4<u32>(0u, _wgslsmith_add_u32(26089u, 32342u), 0u, 41594u) >> ((~vec4<u32>(1176u, var_2, 6333u, var_2) & (arg_1.b.a >> (arg_1.b.a % vec4<u32>(32u)))) % vec4<u32>(32u)), arg_1.b.b, _wgslsmith_f_op_f32(max(575f, -1414f))), Struct_2(true, func_2(), firstLeadingBit(~vec2<u32>(u_input.b, 0u)) & ~arg_1.c));
    return Struct_1(vec4<u32>(1u, 28019u, ~_wgslsmith_clamp_u32(~var_4.a.x, var_2, _wgslsmith_mod_u32(var_2, var_4.a.x)), abs(1u)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(194f, arg_1.b.c, 1091f) - vec3<f32>(631f, arg_0.x, -203f))))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, arg_0.x, var_4.b.x)))))), vec3<bool>(true, true, !any(vec4<bool>(arg_1.a, true, false, true))))), -623f);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_2) -> vec2<u32> {
    var var_0 = 1207f;
    var var_1 = arg_2.b;
    var var_2 = arg_0.b.zx;
    var_2 = vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.b.b.x + arg_0.c))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.c * 711f) + arg_1.b.b.x))), true)), _wgslsmith_f_op_f32(floor(func_2().b.x)));
    var var_3 = _wgslsmith_dot_vec2_u32(countOneBits(_wgslsmith_mod_vec2_u32(arg_2.c, vec2<u32>(arg_1.b.a.x, 12127u)) >> (~vec2<u32>(u_input.b, 4294967295u) % vec2<u32>(32u))), arg_0.a.xz);
    return vec2<u32>(~(~max(1u, _wgslsmith_add_u32(var_1.a.x, 60963u))), _wgslsmith_clamp_u32(~func_1(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-577f, -338f, 366f, 268f), vec4<f32>(805f, var_2.x, arg_1.b.c, -957f), vec4<bool>(arg_1.a, true, arg_1.a, true))), Struct_2(true, arg_0, vec2<u32>(11082u, arg_0.a.x)), !arg_1.a).a.x, 1u, 1u));
}

fn func_6(arg_0: bool, arg_1: i32, arg_2: vec2<u32>, arg_3: vec4<bool>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1761f, -599f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(369f, -728f), vec2<f32>(481f, 1000f)))))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(226f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(390f * 378f))))));
    var var_1 = func_2();
    let var_2 = _wgslsmith_f_op_f32(select(834f, _wgslsmith_f_op_f32(sign(var_1.c)), any(!arg_3)));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1219f));
    let var_4 = min(_wgslsmith_dot_vec3_i32(select(vec3<i32>(1i, 1i, 1i) | min(vec3<i32>(arg_1, -21175i, u_input.c.x), vec3<i32>(arg_1, 72833i, u_input.c.x)), -(vec3<i32>(arg_1, arg_1, 26175i) | vec3<i32>(u_input.c.x, u_input.a, u_input.c.x)), _wgslsmith_f_op_f32(var_1.b.x * var_1.c) <= _wgslsmith_f_op_f32(1047f * var_1.b.x)), select(vec3<i32>(u_input.a, 2147483647i, arg_1) >> (reverseBits(vec3<u32>(54952u, 18220u, u_input.b)) % vec3<u32>(32u)), _wgslsmith_add_vec3_i32(~vec3<i32>(0i, u_input.a, arg_1), vec3<i32>(67794i, arg_1, u_input.a) << (vec3<u32>(u_input.b, 85535u, arg_2.x) % vec3<u32>(32u))), !arg_3.wzx)), ~(_wgslsmith_sub_i32(1i, arg_1) & arg_1) ^ -firstLeadingBit(arg_1));
    return Struct_2(all(arg_3.xwy), func_2(), func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_0.x, 709f))), _wgslsmith_f_op_f32(-953f + 1f)), vec3<bool>(false, true, false), Struct_1(abs(select(vec4<u32>(0u, var_1.a.x, 0u, 0u), var_1.a, arg_3)), var_1.b, -857f), Struct_2(any(!arg_3.wwx), Struct_1(~var_1.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 254f, -200f)), _wgslsmith_f_op_f32(select(var_2, var_0.x, arg_0))), vec2<u32>(~var_1.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(5356u, u_input.b, arg_2.x, 10920u), vec4<u32>(45229u, 38618u, u_input.b, var_1.a.x))))).a.zz);
}

fn func_7(arg_0: bool, arg_1: i32, arg_2: Struct_2) -> StorageBuffer {
    var var_0 = !select(arg_2.a && arg_2.a, select(true, false, arg_0), any(vec2<bool>(true, true))) | true;
    var_0 = !arg_2.a;
    var_0 = any(!(!(!vec3<bool>(arg_2.a, false, false))));
    let var_1 = select(select(vec3<bool>(!(0u < u_input.b), select(!arg_2.a, any(vec4<bool>(arg_2.a, arg_0, arg_2.a, arg_2.a)), arg_2.b.b.x < arg_2.b.b.x), true), vec3<bool>(arg_0, arg_2.a, arg_0), vec3<bool>(!any(vec2<bool>(arg_0, arg_0)), arg_2.a && select(arg_0, false, false), arg_2.a)), !(!select(vec3<bool>(arg_2.a, false, arg_0), vec3<bool>(false, false, arg_0), false)), true);
    var var_2 = arg_2.b.b.x;
    return StorageBuffer(arg_2.b.b, _wgslsmith_mult_vec4_u32(~abs(func_3(arg_2.c, arg_2.b.b.zx, arg_2.b, Struct_1(vec4<u32>(94703u, arg_2.b.a.x, u_input.b, 50343u), arg_2.b.b, arg_2.b.c))), vec4<u32>(_wgslsmith_sub_u32(5034u, u_input.b) | 0u, 1u, u_input.b, _wgslsmith_div_u32(~u_input.b, ~u_input.b))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.b.b.x, arg_2.b.b.x)) - _wgslsmith_f_op_vec2_f32(arg_2.b.b.zx - vec2<f32>(-654f, arg_2.b.b.x))))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.b.c, arg_2.b.b.x) + arg_2.b.b.xx)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_2.b.b.zz + arg_2.b.b.yy)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_7(false, countOneBits(u_input.c.x), func_6(true, -_wgslsmith_mult_i32(1i, u_input.c.x), _wgslsmith_div_vec2_u32(func_5(func_1(vec4<f32>(-1232f, -1000f, -392f, -804f), Struct_2(false, Struct_1(vec4<u32>(u_input.b, 1u, 21787u, u_input.b), vec3<f32>(-1585f, -389f, 395f), -1521f), vec2<u32>(u_input.b, u_input.b)), false), Struct_2(true, Struct_1(vec4<u32>(u_input.b, u_input.b, u_input.b, 15021u), vec3<f32>(806f, -1321f, -954f), 790f), vec2<u32>(u_input.b, u_input.b)), Struct_2(false, Struct_1(vec4<u32>(u_input.b, u_input.b, 596u, 4294967295u), vec3<f32>(-806f, 602f, -923f), 759f), vec2<u32>(u_input.b, u_input.b))), min(~vec2<u32>(u_input.b, 0u), vec2<u32>(u_input.b, u_input.b) | vec2<u32>(4294967295u, 48552u))), select(!select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false))));
}

