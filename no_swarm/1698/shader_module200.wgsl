struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: vec4<u32>,
    d: i32,
    e: u32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: f32,
    c: vec3<f32>,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> f32 {
    var var_0 = -2147483647i;
    var var_1 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1777f, 106f, -406f, 1404f)))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1866f, -406f, 809f, 1635f) * _wgslsmith_div_vec4_f32(vec4<f32>(-836f, -306f, 2262f, -224f), vec4<f32>(-275f, -352f, -475f, 1044f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1000f, -319f, -1214f, -322f), vec4<f32>(-910f, -865f, -1000f, 785f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-843f, -1023f, -520f, -331f), vec4<f32>(148f, 107f, -1707f, -2190f)))))), vec4<f32>(_wgslsmith_f_op_f32(min(-351f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -913f))), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1599f))) + _wgslsmith_f_op_f32(sign(-661f))), 271f)));
    let var_2 = all(select(vec4<bool>(!(var_1.x < var_1.x), all(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), false)), true, select(true, true, all(vec2<bool>(false, false)))), !vec4<bool>(true, true, all(vec4<bool>(true, false, true, false)), u_input.a.x > u_input.a.x), vec4<bool>(true, true, true, true)));
    var var_3 = 830i;
    let var_4 = Struct_1(_wgslsmith_sub_vec2_i32(select(vec2<i32>(-7959i, 1i), vec2<i32>(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(-3558i, -2147483647i, 1i), vec3<i32>(1i, -2147483647i, 79363i))), vec2<bool>(var_2, var_2 || var_2)), ~(-select(vec2<i32>(14665i, 1i), vec2<i32>(-1i, -4212i), vec2<bool>(var_2, var_2)))), var_2, ~abs(vec4<u32>(_wgslsmith_div_u32(u_input.a.x, u_input.a.x), _wgslsmith_add_u32(u_input.a.x, 0u), ~18570u, ~0u)), countOneBits(~_wgslsmith_sub_i32(_wgslsmith_clamp_i32(2147483647i, 0i, -2147483647i), -1i)), max(_wgslsmith_clamp_u32(_wgslsmith_div_u32(4294967295u, ~u_input.a.x), reverseBits(abs(u_input.a.x)), u_input.a.x), (~1u >> (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 1754u, u_input.a.x), vec3<u32>(u_input.a.x, u_input.a.x, 0u)) % 32u)) & ~(~4294967295u)));
    return var_1.x;
}

fn func_2(arg_0: bool, arg_1: i32, arg_2: vec2<u32>, arg_3: u32) -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -764f))), -1000f), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(114f, 557f))) * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(328f, -698f)))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(func_3()), 1581f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1120f, 104f))))), any(!(!vec4<bool>(false, arg_0, arg_0, false)))));
    return arg_3;
}

fn func_4(arg_0: Struct_3, arg_1: u32, arg_2: vec2<f32>, arg_3: vec3<f32>) -> Struct_1 {
    let var_0 = arg_2.x;
    let var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.x)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(arg_2.x)), _wgslsmith_f_op_f32(func_3()))) - _wgslsmith_f_op_f32(ceil(var_0)))));
    let var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(var_1)), _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(-1278f * arg_3.x), var_1) * vec4<f32>(880f, var_1, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(1080f)))), var_0)), _wgslsmith_div_f32(var_1, _wgslsmith_f_op_f32(171f - _wgslsmith_f_op_f32(max(1355f, _wgslsmith_f_op_f32(-arg_2.x))))), arg_3, min(u_input.a.x, _wgslsmith_dot_vec4_u32(arg_0.b, ~(~vec4<u32>(arg_1, 1008u, 25326u, 1u)))), Struct_1(_wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(1i, 2147483647i), vec2<i32>(-36093i, -21469i)) >> ((vec2<u32>(arg_1, arg_1) | arg_0.b.yy) % vec2<u32>(32u)), -(~vec2<i32>(8506i, -1i))), !(!any(vec2<bool>(true, true))), arg_0.b, -(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 1i), vec2<i32>(33307i, 2147483647i)) >> ((arg_0.a ^ 45305u) % 32u)), arg_0.b.x));
    let var_3 = var_2.e;
    var var_4 = !select(vec4<bool>(var_2.e.b, var_3.b, select(var_3.b, var_2.e.b, var_3.b) && true, var_2.e.b & true), select(select(vec4<bool>(false, true, false, var_3.b), vec4<bool>(false, true, false, var_2.e.b), true), !(!vec4<bool>(var_3.b, var_2.e.b, false, var_2.e.b)), true), vec4<bool>(any(vec2<bool>(var_3.b, var_3.b)), true, _wgslsmith_f_op_f32(var_2.c.x - arg_3.x) >= arg_2.x, var_3.b));
    return var_2.e;
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_2) -> bool {
    var var_0 = func_4(Struct_3(59612u, ~(~arg_1.e.c)), max(~arg_1.e.c.x, func_2(arg_1.e.b, arg_1.e.a.x, abs(vec2<u32>(u_input.a.x, arg_1.e.e) ^ u_input.a), ~66876u)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.b + -933f) - _wgslsmith_f_op_f32(-arg_1.c.x))), -412f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1.b, 1224f, arg_0.x), vec3<f32>(-973f, arg_0.x, arg_0.x), arg_1.e.b)))) * vec3<f32>(_wgslsmith_f_op_f32(arg_1.b * arg_1.b), _wgslsmith_f_op_f32(-arg_1.b), _wgslsmith_f_op_f32(func_3()))) * vec3<f32>(_wgslsmith_f_op_f32(-289f * 465f), arg_1.a.x, _wgslsmith_f_op_f32(func_3()))));
    var_0 = arg_1.e;
    let var_1 = u_input.a;
    let var_2 = select(all(select(!vec2<bool>(arg_1.e.b, false), !vec2<bool>(var_0.b, false), select(vec2<bool>(arg_1.e.b, arg_1.e.b), vec2<bool>(arg_1.e.b, arg_1.e.b), vec2<bool>(false, arg_1.e.b)))), func_4(Struct_3(~var_1.x, arg_1.e.c), _wgslsmith_clamp_u32(~arg_1.e.e, max(105439u, u_input.a.x), u_input.a.x << (4294967295u % 32u)), vec2<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-arg_0.x)), arg_0.ywx).b, var_0.b) | true;
    var var_3 = true;
    return !any(select(!select(vec3<bool>(var_0.b, false, false), vec3<bool>(true, var_2, var_2), vec3<bool>(var_2, var_0.b, false)), select(vec3<bool>(var_0.b, false, false), vec3<bool>(true, var_2, false), var_0.b), var_2));
}

fn func_5(arg_0: vec4<bool>, arg_1: f32, arg_2: Struct_3) -> Struct_3 {
    var var_0 = func_4(arg_2, _wgslsmith_sub_u32(arg_2.a, 4294967295u | ((1u & arg_2.a) >> (arg_2.b.x % 32u))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(268f)), _wgslsmith_f_op_f32(arg_1 - arg_1))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-368f, arg_1), vec2<f32>(750f, arg_1))))), vec3<f32>(arg_1, arg_1, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 * -843f) * _wgslsmith_f_op_f32(round(1150f))), arg_1)));
    var_0 = func_4(arg_2, select(arg_2.b.x, firstTrailingBit(4294967295u), select(all(!vec2<bool>(var_0.b, false)), all(select(vec3<bool>(false, arg_0.x, arg_0.x), arg_0.zxx, false)), arg_0.x && false)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -1000f))), vec3<f32>(arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1203f, _wgslsmith_f_op_f32(-226f + -551f))))));
    var_0 = func_4(arg_2, ~(~(~(~1u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(arg_1, -674f), _wgslsmith_f_op_vec2_f32(vec2<f32>(201f, arg_1) * vec2<f32>(arg_1, 544f))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, -928f)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_1, 1100f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-800f, arg_1, 527f), vec3<f32>(arg_1, arg_1, -480f))))));
    var_0 = Struct_1(var_0.a >> (abs(~abs(var_0.c.wz)) % vec2<u32>(32u)), arg_0.x & func_4(Struct_3(reverseBits(arg_2.a), ~vec4<u32>(4294967295u, var_0.c.x, 0u, 0u)), max(6082u, u_input.a.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(-885f, 1387f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, arg_1) + vec2<f32>(2306f, 1061f))), vec3<f32>(_wgslsmith_f_op_f32(-1652f + -621f), _wgslsmith_f_op_f32(round(arg_1)), _wgslsmith_f_op_f32(floor(189f)))).b, ~arg_2.b, 1i, arg_2.b.x);
    var_0 = Struct_1(-max(_wgslsmith_sub_vec2_i32(-var_0.a, _wgslsmith_mult_vec2_i32(var_0.a, vec2<i32>(39721i, 1i))), max(~vec2<i32>(-58022i, var_0.a.x), var_0.a)), select(var_0.b, !(true | arg_0.x) & var_0.b, false), var_0.c, var_0.a.x, _wgslsmith_dot_vec3_u32(~var_0.c.zzx, var_0.c.yyx));
    return Struct_3(func_2(var_0.b | var_0.b, i32(-1i) * -27210i, _wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(arg_2.b.x, 39945u), arg_2.b.yy), _wgslsmith_mod_vec2_u32(u_input.a, vec2<u32>(arg_2.a, 28305u))) & arg_2.b.zw, u_input.a.x), vec4<u32>(arg_2.a, 0u, u_input.a.x, var_0.e));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(vec4<bool>(false, false, true, select(true, true, func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(296f, 1465f, -745f, 1000f)), Struct_2(vec4<f32>(376f, -110f, 264f, -1000f), 585f, vec3<f32>(940f, -143f, 902f), 19894u, Struct_1(vec2<i32>(4835i, 41968i), true, vec4<u32>(u_input.a.x, 5625u, u_input.a.x, u_input.a.x), 4968i, 4294967295u))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), -1819f))), Struct_3(u_input.a.x, vec4<u32>(u_input.a.x, abs(_wgslsmith_mult_u32(u_input.a.x, u_input.a.x)), ~abs(u_input.a.x), 69512u)));
    var var_1 = ~(-20677i);
    var_1 = max(firstTrailingBit(1i) << (u_input.a.x % 32u), -(~(-2254i)));
    var_1 = 0i & _wgslsmith_mod_i32(reverseBits(_wgslsmith_clamp_i32(select(-21569i, -2147483647i, false), -1i, -2147483647i)), _wgslsmith_mult_i32(min(~(-3580i), 0i), -_wgslsmith_sub_i32(0i, 77279i)));
    var var_2 = func_5(select(vec4<bool>(select(true, func_1(vec4<f32>(-2663f, 1000f, 1000f, 3243f), Struct_2(vec4<f32>(-1000f, -1397f, -437f, 919f), 1000f, vec3<f32>(1217f, 1258f, -157f), 21525u, Struct_1(vec2<i32>(-1i, -1i), false, var_0.b, 17648i, u_input.a.x))), true), any(vec3<bool>(true, true, true)), !func_1(vec4<f32>(604f, -845f, 1301f, -157f), Struct_2(vec4<f32>(1178f, -513f, 272f, -854f), -1045f, vec3<f32>(616f, -331f, 814f), u_input.a.x, Struct_1(vec2<i32>(-2147483647i, 11054i), true, vec4<u32>(1u, 0u, 4294967295u, 53632u), -11906i, 1u))), !all(vec4<bool>(false, false, false, false))), vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(703f + 1217f)) <= _wgslsmith_f_op_f32(select(-504f, _wgslsmith_f_op_f32(min(-1689f, -618f)), true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2358f) + _wgslsmith_f_op_f32(f32(-1f) * -1727f))) - _wgslsmith_f_op_f32(f32(-1f) * -320f)), func_5(select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true)), vec4<bool>(false, false, func_4(var_0, 0u, vec2<f32>(202f, -1389f), vec3<f32>(892f, 1855f, 448f)).b, true), select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), Struct_3(19859u, select(min(var_0.b, var_0.b), var_0.b, vec4<bool>(true, true, true, true)))));
    var var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1197f, -310f, -761f, 672f) + vec4<f32>(-1543f, -835f, -576f, -105f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-427f, -416f)))) + _wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-616f - _wgslsmith_f_op_f32(select(162f, 1000f, false))), -1000f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1837f - -1088f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(293f, -439f, -2113f), vec3<f32>(373f, -808f, -2158f), vec3<bool>(true, true, true))) - vec3<f32>(1592f, -2055f, 264f)))), 1u, func_4(func_5(!select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false)), _wgslsmith_f_op_f32(-1000f * -532f), func_5(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false)), -1065f, func_5(vec4<bool>(true, true, false, true), 375f, var_0))), 4294967295u, vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(601f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-252f - -1000f) - -1057f)), vec3<f32>(_wgslsmith_f_op_f32(func_3()), -452f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1655f + -1047f) * -277f))));
    let var_4 = func_4(func_5(!select(vec4<bool>(false, var_3.e.b, false, true), !vec4<bool>(false, false, true, var_3.e.b), vec4<bool>(false, false, true, var_3.e.b)), _wgslsmith_f_op_f32(floor(var_3.b)), func_5(vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_3.c.x), var_3.b)), Struct_3(var_0.a, var_0.b))), var_2.b.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.a.x, -2021f)))) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(975f + -1278f)), _wgslsmith_f_op_f32(sign(797f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-240f)), _wgslsmith_f_op_f32(f32(-1f) * -809f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_3.c.x, 1234f) - _wgslsmith_div_f32(-1017f, var_3.c.x)), var_3.c.x) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-369f, -1376f, var_3.b) + vec3<f32>(var_3.a.x, -668f, var_3.c.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.c.x, var_3.b, -1099f)), true)))));
    var var_5 = -1121f;
    let x = u_input.a;
    s_output = StorageBuffer(select(vec4<i32>(var_4.a.x, var_4.d ^ -3630i, _wgslsmith_mult_i32(-106310i, -5761i), 28188i), ~vec4<i32>(var_3.e.d, 0i, 0i, 1i), select(!vec4<bool>(false, var_4.b, var_4.b, var_3.e.b), !vec4<bool>(var_4.b, false, false, var_4.b), vec4<bool>(true, false, false, var_3.e.b))) >> (~vec4<u32>(1u, ~4294967295u, var_0.b.x, firstLeadingBit(var_0.b.x)) % vec4<u32>(32u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1900f, -214f, var_3.a.x)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.b, var_3.a.x, -1451f))))), ~var_0.a);
}

