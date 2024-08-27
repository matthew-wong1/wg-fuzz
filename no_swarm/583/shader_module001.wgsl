struct Struct_1 {
    a: vec4<f32>,
    b: u32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(-44955i, 2147483647i, 30028i);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec2<f32>) -> vec2<bool> {
    var var_0 = Struct_2(vec2<i32>(-1i) * -vec2<i32>(_wgslsmith_sub_i32(68648i, -7649i), 27314i), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(321f, 1000f, arg_0.x, 367f), arg_0))), 0u));
    var var_1 = Struct_2(var_0.a, Struct_1(arg_0, _wgslsmith_sub_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 46880u, 0u, 0u), vec4<u32>(19636u, 1u, 22979u, var_0.b.b)), var_0.b.b, var_0.b.b), var_0.b.b)));
    var var_2 = -480f;
    var var_3 = Struct_2(~var_0.a, Struct_1(vec4<f32>(-2223f, arg_0.x, var_0.b.a.x, arg_1.x), 1u));
    let var_4 = -(firstLeadingBit(~max(vec3<i32>(var_1.a.x, var_1.a.x, u_input.a), vec3<i32>(var_3.a.x, global0.x, var_0.a.x))) << ((vec3<u32>(~4294967295u, var_1.b.b, var_3.b.b) << (vec3<u32>(~1u, var_3.b.b ^ 0u, 4294967295u) % vec3<u32>(32u))) % vec3<u32>(32u)));
    return vec2<bool>(false, all(select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), true), select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true)), all(vec4<bool>(true, false, true, false))), vec3<bool>(true, false, true))));
}

fn func_4(arg_0: vec2<i32>, arg_1: bool) -> u32 {
    global0 = -select(vec3<i32>(-(~u_input.a), -firstTrailingBit(global0.x), 1i), _wgslsmith_mult_vec3_i32(vec3<i32>(-1i, -arg_0.x, -5236i), ~(~vec3<i32>(-2147483647i, global0.x, 29002i))), vec3<bool>(all(vec3<bool>(arg_1, true, arg_1)), arg_1, arg_1));
    let var_0 = min((vec3<u32>(47294u, 0u, 0u) >> (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u))) | vec3<u32>(51535u, reverseBits(1u), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), ~vec2<u32>(4294967295u, 0u))), _wgslsmith_clamp_vec3_u32(countOneBits(vec3<u32>(~4294967295u, 1u, 0u)), vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u)));
    var var_1 = -1i;
    var var_2 = firstLeadingBit(~arg_0.x);
    var var_3 = !arg_1;
    return 53506u;
}

fn func_2(arg_0: i32, arg_1: Struct_2) -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_1.b.a.x + arg_1.b.a.x))), arg_1.b.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1269f), _wgslsmith_div_f32(-429f, _wgslsmith_f_op_f32(arg_1.b.a.x * arg_1.b.a.x))))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))), func_4(select(global0.xz, -countOneBits(arg_1.a), func_3(_wgslsmith_f_op_vec4_f32(-var_0), arg_1.b.a.ww)), true));
    var var_2 = arg_1.b;
    var var_3 = arg_1;
    let var_4 = var_3.b.a.x;
    return ~1u > ~_wgslsmith_mult_u32(var_3.b.b, min(arg_1.b.b >> (34251u % 32u), ~11613u));
}

fn func_5(arg_0: bool) -> u32 {
    global0 = vec3<i32>(-8503i, _wgslsmith_sub_i32(-(global0.x << (4294967295u % 32u)), -1i), ~(~_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 15120i, u_input.a), vec3<i32>(u_input.a, 0i, global0.x)))) | (select(-(~vec3<i32>(-1i, u_input.a, 1i)), firstLeadingBit(vec3<i32>(44847i, global0.x, 2147483647i)), true) >> (~(~vec3<u32>(1579u, 338u, 4294967295u)) % vec3<u32>(32u)));
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(-1660f)), -1079f)), _wgslsmith_f_op_f32(f32(-1f) * -1244f), 438f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1000f, -305f)))))), _wgslsmith_sub_u32(~1u, ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 91304u, 1u), vec3<u32>(1u, 62487u, 109444u)))));
    var var_1 = select(vec4<u32>(_wgslsmith_div_u32(var_0.b, countOneBits(_wgslsmith_mult_u32(var_0.b, var_0.b))), var_0.b, 0u, ~_wgslsmith_dot_vec4_u32(~vec4<u32>(var_0.b, 4294967295u, var_0.b, var_0.b), firstTrailingBit(vec4<u32>(var_0.b, 30143u, 75561u, var_0.b)))), firstTrailingBit(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 1u, 1u, 0u), ~(vec4<u32>(var_0.b, var_0.b, 0u, 1u) & vec4<u32>(0u, var_0.b, var_0.b, var_0.b)))), select(any(!select(vec2<bool>(arg_0, false), vec2<bool>(false, false), true)), arg_0, arg_0));
    global0 = vec3<i32>(-1i) * -(~(-(vec3<i32>(-19808i, global0.x, u_input.a) >> (var_1.wxx % vec3<u32>(32u)))));
    var var_2 = var_1.x;
    return ~_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(var_1.x, var_1.x)), select(var_1.yy, reverseBits(~var_1.xz), vec2<bool>(true, true)));
}

fn func_1(arg_0: vec3<i32>, arg_1: bool) -> Struct_2 {
    var var_0 = vec3<u32>(4294967295u, 4294967295u, 15437u) << (_wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(77034u, 1588u), vec2<u32>(4192u, 1u))), ~min(1u, 32054u), func_5(func_2(-38532i, Struct_2(arg_0.xx, Struct_1(vec4<f32>(1119f, 1949f, -1032f, 1029f), 58418u))))), vec3<u32>(~reverseBits(0u), 1u, 46595u)) % vec3<u32>(32u));
    let var_1 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -307f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(320f)))), 1492f, _wgslsmith_f_op_f32(-1457f + _wgslsmith_f_op_f32(min(-1136f, -728f)))), ~3587u);
    var_0 = vec3<u32>(~(0u | abs(var_1.b | 1u)), ~(var_0.x >> (~func_5(arg_1) % 32u)), _wgslsmith_dot_vec2_u32(~_wgslsmith_mod_vec2_u32(vec2<u32>(var_0.x, 0u), vec2<u32>(var_0.x, var_1.b)), var_0.zy) ^ var_1.b);
    let var_2 = global0.zz;
    global0 = vec3<i32>(u_input.a, -28778i, select(~(_wgslsmith_add_i32(29481i, u_input.a) << (~4294967295u % 32u)), _wgslsmith_mod_i32(1i, _wgslsmith_div_i32(-arg_0.x, firstTrailingBit(19655i))), arg_1));
    return Struct_2(vec2<i32>(global0.x << (var_1.b % 32u), _wgslsmith_mult_i32(min(_wgslsmith_mod_i32(arg_0.x, 4014i), global0.x), var_2.x)), Struct_1(var_1.a, 49085u));
}

fn func_6(arg_0: bool, arg_1: Struct_2, arg_2: vec3<f32>) -> vec4<bool> {
    return vec4<bool>(any(select(!select(vec4<bool>(false, false, false, true), vec4<bool>(arg_0, true, arg_0, arg_0), false), vec4<bool>(!arg_0, false && arg_0, any(vec3<bool>(arg_0, false, false)), true), !select(vec4<bool>(false, false, arg_0, true), vec4<bool>(arg_0, true, false, true), arg_0))), any(!select(select(vec4<bool>(arg_0, arg_0, arg_0, arg_0), vec4<bool>(false, arg_0, arg_0, false), arg_0), select(vec4<bool>(arg_0, arg_0, true, false), vec4<bool>(false, arg_0, false, arg_0), arg_0), arg_0)), !any(vec3<bool>(arg_0, true, arg_1.b.b < arg_1.b.b)), false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(_wgslsmith_sub_i32(~max(-51094i, 2147483647i) & max(-2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(9995i, u_input.a), global0.yz)), _wgslsmith_mult_i32(_wgslsmith_mod_i32(_wgslsmith_add_i32(-5121i, u_input.a), _wgslsmith_clamp_i32(-21982i, global0.x, u_input.a)), _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(global0.x, u_input.a, global0.x), vec3<i32>(u_input.a, u_input.a, 13045i)), vec3<i32>(1i, u_input.a, global0.x)))), ~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, global0.x), global0.yy));
    var var_1 = !select(vec4<bool>(false, true, true, true), func_6(!all(vec2<bool>(true, false)), func_1(vec3<i32>(-2147483647i, -2147483647i, var_0.x), true), vec3<f32>(1f, 1f, 1f)), !func_6(true, func_1(vec3<i32>(var_0.x, var_0.x, 2147483647i), true), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(917f, -1000f, -554f), vec3<f32>(-1335f, 1539f, 1827f)))));
    var_1 = !(!select(func_6(!var_1.x, func_1(vec3<i32>(u_input.a, -21508i, -13490i), var_1.x), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-701f, 1070f, 556f), vec3<f32>(-268f, 1961f, -908f), var_1.ywy))), vec4<bool>(true, any(vec4<bool>(false, true, false, true)), true, false), select(!vec4<bool>(false, true, false, var_1.x), func_6(false, Struct_2(vec2<i32>(var_0.x, var_0.x), Struct_1(vec4<f32>(420f, -3594f, -571f, 846f), 0u)), vec3<f32>(-1203f, 1000f, 596f)), vec4<bool>(var_1.x, var_1.x, true, true))));
    let var_2 = any(vec3<bool>(var_1.x, !var_1.x, !var_1.x));
    global0 = select(max(vec3<i32>(var_0.x, _wgslsmith_mod_i32(var_0.x, -2147483647i) & _wgslsmith_mod_i32(global0.x, 0i), reverseBits(var_0.x) << (~90720u % 32u)), abs(vec3<i32>(1i, 2147483647i, -1i))), vec3<i32>(abs(firstTrailingBit(_wgslsmith_div_i32(global0.x, 1032i))), u_input.a, 9640i), !var_2);
    var_1 = select(func_6(true, Struct_2(firstLeadingBit(vec2<i32>(u_input.a, 19884i)), func_1(vec3<i32>(global0.x, -15521i, 9036i) >> (vec3<u32>(53530u, 0u, 4294967295u) % vec3<u32>(32u)), false).b), vec3<f32>(-916f, func_1(countOneBits(vec3<i32>(u_input.a, u_input.a, global0.x)), any(var_1.yzy)).b.a.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(853f, 547f)))))), !vec4<bool>(var_1.x, false, false, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1836f))) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-862f - -937f)) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(888f - -740f), _wgslsmith_f_op_f32(1813f * -666f), var_2))));
    let var_3 = 0u & _wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 1u), ~vec2<u32>(1u, 4294967295u) << (vec2<u32>(func_5(var_1.x), 60106u) % vec2<u32>(32u)));
    var_0 = _wgslsmith_mod_vec2_i32(global0.xy, vec2<i32>(u_input.a, u_input.a)) ^ ~select(vec2<i32>(var_0.x, global0.x), _wgslsmith_mult_vec2_i32(global0.xy, vec2<i32>(var_0.x, global0.x)) ^ vec2<i32>(5380i, -28014i), var_1.zw);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(var_3));
}

