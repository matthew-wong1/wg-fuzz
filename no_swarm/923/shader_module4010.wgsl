struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: f32,
    d: vec2<i32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: i32,
    d: f32,
}

struct Struct_3 {
    a: bool,
    b: vec2<f32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec3<bool>,
}

struct Struct_5 {
    a: u32,
    b: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: vec4<f32>) -> vec4<f32> {
    let var_0 = u_input.a.x;
    global0 = (_wgslsmith_mult_i32(u_input.b, 1i) <= (_wgslsmith_div_i32(~u_input.b, firstLeadingBit(-2147483647i)) >> (max(~9155u, ~1u) % 32u))) != !all(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true)));
    var var_1 = abs(~(~((vec4<i32>(-1802i, u_input.b, u_input.b, -1i) >> (vec4<u32>(17816u, 32599u, var_0, 48218u) % vec4<u32>(32u))) >> (reverseBits(vec4<u32>(1u, 0u, u_input.a.x, 4294967295u)) % vec4<u32>(32u)))));
    var var_2 = arg_0.yz;
    global0 = true;
    return arg_0;
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_1) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.e.x, 140f, arg_0.e.x, arg_0.c) + arg_2.e))).x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-705f)))) - _wgslsmith_f_op_f32(min(arg_0.c, arg_0.c)))));
    var_0 = _wgslsmith_f_op_f32(-1426f - -403f);
    global0 = all(select(!select(select(arg_1.xwz, arg_1.zwx, arg_1.x), arg_1.zzz, arg_1.wzz), select(arg_1.wxz, arg_1.xxw, vec3<bool>(-447f > arg_0.e.x, all(vec4<bool>(true, true, arg_1.x, arg_1.x)), !arg_1.x)), true));
    var var_1 = Struct_2(arg_2, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_2.e.wyy)) * _wgslsmith_div_vec3_f32(vec3<f32>(-959f, 995f, 1395f), arg_0.e.yzz)))), -1i, arg_2.c);
    var var_2 = ~u_input.a.yy;
    return !(!(!vec4<bool>(arg_1.x | arg_1.x, !arg_1.x, var_2.x > u_input.a.x, any(arg_1))));
}

fn func_4(arg_0: vec4<bool>, arg_1: f32) -> bool {
    let var_0 = ~_wgslsmith_mult_vec4_u32(~(firstTrailingBit(vec4<u32>(61295u, 0u, u_input.a.x, 11649u)) & _wgslsmith_sub_vec4_u32(vec4<u32>(45246u, 4294967295u, 23227u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, 38572u, 0u))), ~firstLeadingBit(~vec4<u32>(u_input.a.x, 89908u, u_input.a.x, 1u)));
    let var_1 = vec3<f32>(-2415f, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 + -193f)), arg_1), _wgslsmith_f_op_f32(ceil(-1307f)))), -1229f);
    var var_2 = vec3<u32>(~_wgslsmith_sub_u32(u_input.a.x, firstLeadingBit(u_input.a.x) ^ u_input.a.x), 45880u, ~var_0.x);
    var var_3 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-var_1.xy)));
    let var_4 = Struct_4(vec4<f32>(_wgslsmith_f_op_f32(trunc(862f)), _wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1097f, 524f) * 2121f)), var_1.x, var_3.x), arg_0.xzz);
    return !arg_0.x;
}

fn func_2() -> vec4<f32> {
    global0 = !func_4(select(func_3(Struct_1(-13264i, vec4<i32>(0i, 1i, u_input.b, 27086i), 165f, vec2<i32>(-4053i, u_input.b), vec4<f32>(-945f, 212f, -2296f, -1000f)), vec4<bool>(false, true, true, false), Struct_1(u_input.b, vec4<i32>(u_input.b, 2147483647i, u_input.b, -2147483647i), -1354f, vec2<i32>(64545i, -57569i), vec4<f32>(256f, 1198f, 702f, 1000f))), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -514f))));
    var var_0 = u_input.a.x;
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-854f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -327f)), _wgslsmith_f_op_f32(f32(-1f) * -505f))));
    let var_2 = _wgslsmith_clamp_i32(_wgslsmith_div_i32(_wgslsmith_mult_i32(u_input.b, firstLeadingBit(1i)), u_input.b) & (((9402i ^ u_input.b) ^ -63201i) ^ -1i), ~(~u_input.b), ~firstTrailingBit(-(~u_input.b)));
    let var_3 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1, 326f, 1205f, 612f))))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_1, var_1, 450f, var_1), vec4<f32>(var_1, var_1, var_1, 242f))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_1, _wgslsmith_f_op_f32(ceil(var_1)), var_1, _wgslsmith_f_op_f32(step(var_1, -505f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(vec4<f32>(var_1, 1811f, 1173f, var_1))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(822f, 1174f, -1080f, var_1))))), vec4<bool>(true & all(vec4<bool>(true, true, true, false)), false, true, select(u_input.a.x <= u_input.a.x, true, -239f > var_1)))), vec4<bool>(any(vec4<bool>(u_input.a.x > 1u, any(vec2<bool>(false, false)), true, true)), true, any(vec4<bool>(true, true, true, false)) | !select(false, true, true), any(!select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false))))));
    return vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -713f)), -184f, var_3.x, _wgslsmith_f_op_f32(ceil(964f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1000f - -596f), -1036f))), _wgslsmith_f_op_f32(1278f + 706f), -1031f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(vec4<f32>(-1840f, 216f, -910f, 203f))) * _wgslsmith_f_op_vec4_f32(func_2())) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2())))));
    let var_1 = Struct_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1(vec4<f32>(-1396f, var_0.x, var_0.x, var_0.x)))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(784f, var_0.x, -1241f, -1000f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, 1018f, 883f))))), func_3(Struct_1(1i, vec4<i32>(1i, u_input.b, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, -29275i, u_input.b), vec3<i32>(2147483647i, -74234i, -3174i)), ~(-38345i)), _wgslsmith_f_op_f32(f32(-1f) * -2338f), vec2<i32>(abs(u_input.b), _wgslsmith_add_i32(u_input.b, u_input.b)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -1019f, -447f, var_0.x) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1766f, -876f, var_0.x, var_0.x) - vec4<f32>(-2498f, var_0.x, 1000f, -845f)))), !vec4<bool>(any(vec3<bool>(false, false, true)), true, func_3(Struct_1(u_input.b, vec4<i32>(u_input.b, u_input.b, u_input.b, 23066i), var_0.x, vec2<i32>(u_input.b, -16032i), vec4<f32>(var_0.x, 755f, var_0.x, var_0.x)), vec4<bool>(true, true, false, true), Struct_1(0i, vec4<i32>(-2147483647i, u_input.b, u_input.b, u_input.b), -1168f, vec2<i32>(u_input.b, u_input.b), vec4<f32>(var_0.x, var_0.x, -1000f, -286f))).x, true), Struct_1(abs(~u_input.b), countOneBits(vec4<i32>(u_input.b, -1i, u_input.b, 10804i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.x))), min(-vec2<i32>(2147483647i, u_input.b), -vec2<i32>(-7309i, u_input.b)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.x, -345f, var_0.x, 1000f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -963f, -407f, var_0.x)), vec4<bool>(true, true, false, true))))).zxx);
    let var_2 = Struct_2(Struct_1(u_input.b, ~(-select(vec4<i32>(0i, -2147483647i, u_input.b, -1202i), vec4<i32>(u_input.b, u_input.b, u_input.b, 1i), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.a.x, var_1.a.x))) * _wgslsmith_f_op_f32(-var_1.a.x)), -(~vec2<i32>(0i, u_input.b)), var_1.a), var_1.a.xyz, _wgslsmith_clamp_i32(1i, 0i, -1i), -1073f);
    var var_3 = true;
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_2.a.c))), var_1.a.x, var_1.a.x, var_2.a.c);
    var var_4 = select(~(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u, u_input.a.x, u_input.a.x) >> (vec4<u32>(u_input.a.x, 1u, 1u, u_input.a.x) % vec4<u32>(32u)), min(vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(64455u, u_input.a.x, u_input.a.x, 26941u))) ^ _wgslsmith_sub_vec4_u32(vec4<u32>(0u, 22633u, 0u, 4294967295u) ^ vec4<u32>(u_input.a.x, u_input.a.x, 1u, 26514u), vec4<u32>(1u, u_input.a.x, 30478u, u_input.a.x))), ~_wgslsmith_mod_vec4_u32(abs(vec4<u32>(20884u, 0u, 42549u, u_input.a.x) ^ vec4<u32>(13873u, u_input.a.x, 16209u, u_input.a.x)), reverseBits(_wgslsmith_mod_vec4_u32(vec4<u32>(24461u, 4294967295u, 41923u, 1u), vec4<u32>(1u, 1u, 36321u, 4294967295u)))), select(select(var_1.b.x, true, all(vec3<bool>(var_1.b.x, false, true))), true | !(!var_1.b.x), (all(var_1.b.yx) & true) || ((var_1.b.x | false) | true)));
    var var_5 = !vec4<bool>(var_1.b.x, all(!(!vec4<bool>(false, var_1.b.x, true, false))), !(any(vec4<bool>(var_1.b.x, true, false, var_1.b.x)) && func_4(vec4<bool>(var_1.b.x, true, false, var_1.b.x), 3090f)), !(!(!var_1.b.x)));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_2.a.e - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(var_2.a.e, _wgslsmith_f_op_vec4_f32(-var_2.a.e))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1181f, 1205f) + var_1.a.yy), var_2.a.e.xz), var_4.zy);
}

