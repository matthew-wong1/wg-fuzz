struct Struct_1 {
    a: vec3<bool>,
    b: vec4<u32>,
    c: f32,
    d: i32,
    e: vec3<u32>,
}

struct Struct_2 {
    a: i32,
    b: vec3<i32>,
    c: f32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: vec3<f32>,
}

struct Struct_5 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: f32) -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.c, arg_2));
    var_0 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(f32(-1f) * -177f)), _wgslsmith_f_op_f32(-1589f + _wgslsmith_f_op_f32(f32(-1f) * -824f))), _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(arg_0.c - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-123f)))))));
    var var_1 = _wgslsmith_mod_i32(37994i, -_wgslsmith_mult_i32(~arg_1.x, arg_0.d));
    var var_2 = arg_0.b | ~(arg_0.b ^ vec4<u32>(_wgslsmith_div_u32(4294967295u, 4294967295u), 52993u, _wgslsmith_div_u32(arg_0.b.x, arg_0.e.x), arg_0.e.x));
    return true;
}

fn func_3() -> f32 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - 474f) - 262f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -177f)));
    var var_1 = vec2<bool>(true, select(true, _wgslsmith_div_i32(select(-32266i, u_input.a.x, false), _wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(0i, 1i, -18914i))) == _wgslsmith_mod_i32(~2147483647i, -2147483647i), true));
    var var_2 = Struct_2(min(-_wgslsmith_div_i32(max(u_input.a.x, u_input.a.x), 1i), 11021i), u_input.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(var_0.x)), var_0.x)) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(-318f))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * var_0.x)))), Struct_1(select(vec3<bool>(var_1.x, func_2(Struct_1(vec3<bool>(var_1.x, false, false), vec4<u32>(55717u, 35716u, 51281u, 77437u), var_0.x, u_input.a.x, vec3<u32>(0u, 24968u, 4294967295u)), u_input.a, -584f), true), !select(vec3<bool>(false, var_1.x, var_1.x), vec3<bool>(var_1.x, true, false), false), vec3<bool>(true, true, true)), vec4<u32>(_wgslsmith_div_u32(~4294967295u, abs(22369u)), ~42097u, ~1u, ~1u), var_0.x, u_input.a.x << (abs(select(4294967295u, 0u, true)) % 32u), firstTrailingBit(vec3<u32>(1u, 1u, 1u))), Struct_1(vec3<bool>(true, !(!var_1.x), var_1.x), vec4<u32>(select(1u, 1u, true && var_1.x), 1u, ~1u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), abs(vec4<u32>(22683u, 4294967295u, 1u, 1u)))), 1f, firstTrailingBit(1i ^ u_input.a.x), ~min(vec3<u32>(31846u, 4294967295u, 57621u), vec3<u32>(1u, 1u, 1u))));
    let var_3 = u_input.a.zy;
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -610f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1063f, 3046f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1773f, var_0.x)))))) * _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(var_2.c, -1298f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1000f)))))));
    return 436f;
}

fn func_4(arg_0: vec4<bool>, arg_1: f32) -> Struct_3 {
    let var_0 = arg_0.x | all(!arg_0);
    let var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, -516f, 416f, arg_1))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, arg_1, arg_1, 1754f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1, 1451f, -382f, 1373f), vec4<f32>(629f, 228f, arg_1, -128f), vec4<bool>(false, var_0, false, true)))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1493f), -318f, 157f, -2068f) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(173f, 1214f, -105f, arg_1))) + vec4<f32>(418f, -1710f, _wgslsmith_f_op_f32(f32(-1f) * -474f), arg_1))), true));
    let var_2 = _wgslsmith_f_op_f32(trunc(186f));
    var var_3 = min(~1u, _wgslsmith_div_u32(_wgslsmith_div_u32(1u, ~select(0u, 0u, true)), firstLeadingBit(abs(~1u))));
    var_3 = select(_wgslsmith_mult_u32(select(min(~25179u, 1u), ~(~1u), var_0 && false), 44110u), _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(firstTrailingBit(4294967295u), ~4294967295u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u)), 1u), true);
    return Struct_3(Struct_1(arg_0.xyz, vec4<u32>(1u, 1u, 1u, 1u), arg_1, -_wgslsmith_clamp_i32(u_input.a.x, _wgslsmith_add_i32(15241i, 60387i), _wgslsmith_div_i32(u_input.a.x, -2147483647i)), _wgslsmith_add_vec3_u32(firstLeadingBit(vec3<u32>(1u, 4294967295u, 35898u)), abs(countOneBits(vec3<u32>(49711u, 0u, 13813u))))), Struct_2(select(max(firstTrailingBit(u_input.a.x), 1i), ~u_input.a.x, any(!vec3<bool>(var_0, true, true))), u_input.a, _wgslsmith_f_op_f32(abs(var_1.x)), Struct_1(vec3<bool>(true, var_2 != var_2, func_2(Struct_1(arg_0.xwz, vec4<u32>(7428u, 4294967295u, 26619u, 1297u), var_1.x, 21992i, vec3<u32>(38632u, 1u, 27829u)), vec3<i32>(u_input.a.x, 1i, -28732i), var_2)), select(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(4294967295u, 1u, 95433u, 9813u), !arg_0), _wgslsmith_div_f32(-821f, arg_1), -7140i, vec3<u32>(1u, 1u, 1u)), Struct_1(arg_0.zzx, ~vec4<u32>(1u, 1u, 1u, 1u), 1403f, u_input.a.x & _wgslsmith_div_i32(2147483647i, u_input.a.x), vec3<u32>(56095u >> (0u % 32u), ~0u, 1u))));
}

fn func_5(arg_0: vec4<u32>, arg_1: i32, arg_2: bool, arg_3: Struct_3) -> Struct_4 {
    let var_0 = (i32(-1i) * -44988i) & ((-1i | arg_1) & 1i);
    let var_1 = func_4(!(!(!(!vec4<bool>(arg_2, false, true, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(137f, arg_3.a.c))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_3.a.c, arg_3.b.c))) - arg_3.b.e.c)).a;
    var var_2 = Struct_4(Struct_3(func_4(!(!vec4<bool>(arg_2, arg_3.b.d.a.x, true, true)), -860f).a, func_4(select(select(vec4<bool>(var_1.a.x, true, false, arg_3.b.d.a.x), vec4<bool>(false, arg_2, arg_3.a.a.x, arg_3.a.a.x), arg_2), select(vec4<bool>(arg_3.a.a.x, true, var_1.a.x, arg_3.b.e.a.x), vec4<bool>(var_1.a.x, false, false, arg_3.a.a.x), vec4<bool>(arg_2, true, false, var_1.a.x)), vec4<bool>(arg_2, false, arg_2, false)), _wgslsmith_f_op_f32(select(var_1.c, arg_3.b.e.c, true))).b), Struct_1(select(var_1.a, func_4(!vec4<bool>(false, var_1.a.x, arg_2, arg_3.b.d.a.x), func_4(vec4<bool>(arg_2, true, arg_2, false), -363f).a.c).a.a, vec3<bool>(var_1.a.x, select(arg_3.b.d.a.x, arg_2, arg_3.a.a.x), true)), ~_wgslsmith_mult_vec4_u32(vec4<u32>(0u, arg_3.b.d.b.x, 4294967295u, 1u), vec4<u32>(30929u, 4294967295u, 45926u, var_1.b.x) >> (vec4<u32>(1u, arg_0.x, arg_0.x, arg_0.x) % vec4<u32>(32u))), 445f, arg_1, ~select(arg_0.wxz, _wgslsmith_add_vec3_u32(arg_0.ywy, vec3<u32>(78266u, var_1.e.x, 12537u)), false)), vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-597f - arg_3.a.c))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1043f)))), var_1.c));
    var_2 = Struct_4(func_4(select(vec4<bool>(arg_2, true, func_2(Struct_1(vec3<bool>(var_2.a.a.a.x, arg_2, arg_2), vec4<u32>(arg_0.x, var_2.b.e.x, 87907u, arg_3.a.e.x), -1263f, arg_3.b.a, var_1.b.wzw), u_input.a, -1000f), true), select(vec4<bool>(var_2.a.b.d.a.x, var_2.b.a.x, false, arg_3.b.e.a.x), select(vec4<bool>(false, var_1.a.x, arg_3.a.a.x, arg_2), vec4<bool>(arg_3.a.a.x, var_2.b.a.x, var_1.a.x, arg_3.a.a.x), arg_2), var_2.a.b.d.a.x), vec4<bool>(false || arg_3.b.e.a.x, var_1.a.x & arg_3.a.a.x, any(vec4<bool>(false, arg_3.b.e.a.x, arg_3.a.a.x, false)), !arg_2)), _wgslsmith_f_op_f32(-var_1.c)), Struct_1(!func_4(select(vec4<bool>(true, arg_3.a.a.x, true, arg_3.a.a.x), vec4<bool>(false, false, arg_2, arg_3.a.a.x), false), _wgslsmith_f_op_f32(696f * -410f)).a.a, arg_3.a.b, arg_3.a.c, _wgslsmith_clamp_i32(var_0, _wgslsmith_clamp_i32(func_4(vec4<bool>(false, false, true, var_1.a.x), var_1.c).a.d, -2147483647i, firstLeadingBit(var_2.b.d)), arg_3.b.e.d), var_2.b.e), vec3<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(188f, var_1.c)), func_4(vec4<bool>(true | arg_2, false != var_2.a.b.d.a.x, arg_2, false), var_1.c).a.c));
    let var_3 = ~var_1.d;
    return Struct_4(Struct_3(var_1, Struct_2(-34332i, vec3<i32>(-1i >> (var_2.b.e.x % 32u), -31896i, arg_3.a.d ^ var_2.b.d), _wgslsmith_f_op_f32(-arg_3.b.e.c), var_1, var_1)), arg_3.b.e, var_2.c);
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: bool) -> Struct_4 {
    var var_0 = arg_1;
    var var_1 = func_5((abs(~vec4<u32>(1941u, 2733u, 4294967295u, arg_1)) | vec4<u32>(_wgslsmith_mult_u32(arg_1, 4134u), _wgslsmith_mod_u32(arg_1, arg_1), _wgslsmith_mult_u32(6449u, 80989u), countOneBits(arg_1))) & ((vec4<u32>(12206u, arg_1, 5138u, arg_1) | vec4<u32>(arg_1, 63680u, 38732u, 28790u)) >> (vec4<u32>(arg_1, arg_1 << (arg_1 % 32u), reverseBits(9122u), arg_1) % vec4<u32>(32u))), u_input.a.x, u_input.a.x <= u_input.a.x, func_4(vec4<bool>(_wgslsmith_div_u32(arg_1, 49351u) != 4294967295u, all(select(vec3<bool>(false, true, arg_0), vec3<bool>(arg_2, false, false), arg_2)), _wgslsmith_f_op_f32(ceil(-635f)) <= 903f, !func_2(Struct_1(vec3<bool>(arg_2, true, false), vec4<u32>(arg_1, arg_1, arg_1, arg_1), -199f, u_input.a.x, vec3<u32>(27771u, 0u, 56629u)), u_input.a, 751f)), _wgslsmith_f_op_f32(-1096f - _wgslsmith_f_op_f32(func_3()))));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.c) * _wgslsmith_f_op_vec3_f32(-var_1.c)));
    var var_3 = _wgslsmith_mult_i32(_wgslsmith_div_i32(var_1.a.b.d.d, -48182i), _wgslsmith_mod_i32(~var_1.b.d, countOneBits(max(~(-1i), ~2147483647i))));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(685f, _wgslsmith_f_op_f32(316f * var_1.b.c))) + var_2.x));
    return Struct_4(func_4(!(!(!vec4<bool>(arg_2, true, arg_2, arg_0))), _wgslsmith_f_op_f32(f32(-1f) * -1328f)), func_4(vec4<bool>(arg_0, arg_0, !(!arg_0), func_4(select(vec4<bool>(true, true, false, arg_2), vec4<bool>(true, arg_0, false, true), true), var_2.x).b.d.a.x), _wgslsmith_f_op_f32(select(var_2.x, var_1.a.b.e.c, select(!arg_2, all(vec4<bool>(false, arg_0, arg_0, arg_0)), select(arg_0, true, arg_0))))).a, func_5(var_1.b.b, ~(-50904i), !(max(var_1.a.b.d.b.x, var_1.a.b.d.e.x) >= 30566u), func_5(vec4<u32>(29026u, arg_1, 17059u, abs(var_1.b.b.x)), -1i, true, Struct_3(func_5(var_1.b.b, u_input.a.x, true, Struct_3(var_1.b, var_1.a.b)).a.b.e, Struct_2(var_1.a.b.a, vec3<i32>(0i, u_input.a.x, 2147483647i), var_2.x, var_1.a.a, Struct_1(vec3<bool>(arg_0, arg_2, var_1.b.a.x), vec4<u32>(var_1.b.e.x, arg_1, 4294967295u, var_1.b.e.x), 1342f, 27133i, vec3<u32>(4294967295u, 13346u, var_1.b.b.x))))).a).c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(all(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), any(vec2<bool>(true, false)))), 53753u << (1u % 32u), !any(vec2<bool>(true, true)));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.a.a.c), func_4(select(select(vec4<bool>(var_0.b.a.x, var_0.b.a.x, true, var_0.a.a.a.x), vec4<bool>(var_0.a.a.a.x, false, true, var_0.a.b.e.a.x), vec4<bool>(true, var_0.a.b.e.a.x, true, false)), !vec4<bool>(var_0.b.a.x, false, false, var_0.a.a.a.x), select(vec4<bool>(true, var_0.b.a.x, true, false), vec4<bool>(var_0.a.a.a.x, var_0.b.a.x, var_0.b.a.x, false), vec4<bool>(true, var_0.a.a.a.x, var_0.b.a.x, var_0.a.b.d.a.x))), _wgslsmith_f_op_f32(var_0.c.x * _wgslsmith_f_op_f32(exp2(var_0.a.a.c)))).a.c, true | var_0.a.b.e.a.x)), var_0.b.c);
    var var_2 = var_0.a.b.e.b.xy;
    var_2 = _wgslsmith_mod_vec2_u32(vec2<u32>(~countOneBits(var_0.b.e.x), var_2.x), vec2<u32>(~(~_wgslsmith_mod_u32(var_2.x, var_0.b.e.x)), 1u));
    let var_3 = Struct_3(func_1(!var_0.b.a.x, _wgslsmith_sub_u32(0u << (var_2.x % 32u), var_2.x) >> (var_2.x % 32u), !(var_0.b.a.x | (var_0.a.b.e.a.x | false))).a.a, Struct_2(_wgslsmith_add_i32(func_5(max(var_0.a.b.e.b, vec4<u32>(4294967295u, var_2.x, 1u, 1u)), 22521i, var_0.a.b.e.a.x && false, Struct_3(var_0.a.b.d, Struct_2(4014i, u_input.a, 1000f, var_0.a.a, Struct_1(vec3<bool>(true, var_0.b.a.x, var_0.a.b.e.a.x), vec4<u32>(var_2.x, var_2.x, var_2.x, var_2.x), var_0.c.x, u_input.a.x, vec3<u32>(1u, var_0.b.b.x, var_0.b.e.x))))).b.d, abs(-1i) | var_0.a.a.d), vec3<i32>(var_0.b.d, _wgslsmith_mod_i32(var_0.b.d, var_0.b.d) >> (~var_0.a.a.b.x % 32u), var_0.b.d), _wgslsmith_f_op_f32(298f * var_1), func_4(select(!vec4<bool>(var_0.a.b.d.a.x, var_0.b.a.x, var_0.b.a.x, false), vec4<bool>(var_0.a.b.d.a.x, var_0.b.a.x, false, var_0.a.a.a.x), true), func_1(!var_0.a.a.a.x, var_2.x, 288f < var_0.a.b.d.c).b.c).a, func_4(select(select(vec4<bool>(var_0.b.a.x, var_0.a.a.a.x, var_0.a.b.e.a.x, false), vec4<bool>(true, true, var_0.a.b.d.a.x, true), var_0.b.a.x), select(vec4<bool>(var_0.b.a.x, var_0.a.a.a.x, var_0.a.a.a.x, var_0.a.b.e.a.x), vec4<bool>(var_0.a.a.a.x, true, var_0.a.b.e.a.x, false), vec4<bool>(var_0.b.a.x, var_0.a.b.e.a.x, false, var_0.b.a.x)), var_0.b.a.x), func_1(true, ~24827u, true).c.x).a));
    let var_4 = var_0.a.b.b.yz;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x);
}

