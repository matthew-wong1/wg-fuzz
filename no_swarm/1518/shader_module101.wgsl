struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: vec3<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: u32;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<bool>, arg_1: vec2<u32>, arg_2: vec2<f32>, arg_3: vec4<u32>) -> vec2<i32> {
    var var_0 = Struct_1(_wgslsmith_clamp_vec2_u32(vec2<u32>(reverseBits(arg_3.x), 0u << (_wgslsmith_add_u32(arg_3.x, 24393u) % 32u)), _wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, ~1078u), firstTrailingBit(firstTrailingBit(vec2<u32>(49425u, 4294967295u)))), global0.yy), 81481i, -vec2<i32>(u_input.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-66748i, 34606i), u_input.a.zx)));
    global1 = arg_1.x;
    return var_0.c;
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = 0i;
    global1 = global0.x;
    global0 = ~vec4<u32>(4294967295u, arg_0.a.x, ~countOneBits(~24895u), _wgslsmith_div_u32(4294967295u & abs(global0.x), _wgslsmith_clamp_u32(66092u, global0.x, arg_0.a.x)));
    let var_1 = arg_0;
    global0 = vec4<u32>(~(~(~var_1.a.x)), max(~arg_0.a.x, ~_wgslsmith_sub_u32(4294967295u, global0.x)), ~firstLeadingBit(_wgslsmith_add_u32(global0.x, arg_0.a.x)), ~_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.a.x, 0u), ~vec2<u32>(16171u, global0.x)), 4294967295u));
    return Struct_1(~_wgslsmith_clamp_vec2_u32(~vec2<u32>(global0.x, 4294967295u), ~(~vec2<u32>(global0.x, arg_0.a.x)), min(var_1.a, countOneBits(vec2<u32>(var_1.a.x, 6114u)))), arg_0.c.x, ~abs(func_3(vec3<bool>(true, true, true), ~vec2<u32>(var_1.a.x, 4294967295u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1291f, -810f)), _wgslsmith_clamp_vec4_u32(vec4<u32>(52565u, var_1.a.x, arg_0.a.x, global0.x), vec4<u32>(global0.x, 44812u, 45667u, 0u), vec4<u32>(27951u, arg_0.a.x, global0.x, arg_0.a.x)))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32, arg_3: f32) -> Struct_1 {
    var var_0 = arg_1;
    global0 = _wgslsmith_mult_vec4_u32(select(~firstLeadingBit(vec4<u32>(global0.x, 14229u, arg_1.a.x, arg_1.a.x)), vec4<u32>(_wgslsmith_mult_u32(global0.x | arg_0.a.x, ~var_0.a.x), reverseBits(_wgslsmith_div_u32(arg_0.a.x, var_0.a.x)), countOneBits(func_2(Struct_1(vec2<u32>(53878u, 5730u), var_0.b, var_0.c)).a.x), arg_1.a.x | 2749u), !vec4<bool>(arg_1.a.x <= arg_2, false, true, false)), vec4<u32>(99981u, 10177u, global0.x, 7813u));
    global0 = select(vec4<u32>(5255u, ~arg_2, 0u, firstLeadingBit(1u >> (~arg_1.a.x % 32u))), ~(~vec4<u32>(arg_0.a.x, firstTrailingBit(arg_2), 24064u, 42193u)), !(!vec4<bool>(true, -2037f == arg_3, true, all(vec2<bool>(true, false)))));
    let var_1 = vec4<bool>(true, true, true, true);
    let var_2 = true;
    return func_2(Struct_1(arg_0.a, select(~(~arg_1.b), u_input.a.x, var_1.x), func_3(vec3<bool>(arg_0.a.x < arg_2, true, all(vec2<bool>(var_2, true))), min(arg_0.a ^ vec2<u32>(1u, 128587u), vec2<u32>(17536u, arg_0.a.x)), vec2<f32>(522f, _wgslsmith_div_f32(arg_3, arg_3)), vec4<u32>(~1u, 0u, ~global0.x, var_0.a.x))));
}

fn func_5(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    global1 = (min(5446u, 1u) << (~arg_2.a.x % 32u)) | ~arg_2.a.x;
    var var_0 = arg_2;
    var_0 = func_4(Struct_1(abs(arg_1.a), ~_wgslsmith_mod_i32(abs(-2147483647i), 7944i), arg_1.c), Struct_1(reverseBits((vec2<u32>(global0.x, global0.x) ^ global0.zz) | arg_2.a), -func_4(func_4(arg_1, Struct_1(vec2<u32>(var_0.a.x, 4294967295u), 38357i, vec2<i32>(2147483647i, 2147483647i)), arg_2.a.x, -1123f), func_4(Struct_1(arg_1.a, 7058i, var_0.c), Struct_1(arg_2.a, arg_2.c.x, u_input.a.yy), 0u, 682f), 231u, _wgslsmith_f_op_f32(789f + -360f)).c.x, select(_wgslsmith_add_vec2_i32(func_4(Struct_1(var_0.a, -1i, arg_1.c), Struct_1(vec2<u32>(1u, arg_1.a.x), 25402i, vec2<i32>(arg_1.c.x, u_input.a.x)), 4294967295u, 294f).c, select(vec2<i32>(u_input.a.x, -28553i), vec2<i32>(arg_1.c.x, u_input.a.x), vec2<bool>(false, true))), reverseBits(u_input.a.zz), true)), countOneBits(10811u), -479f);
    var var_1 = var_0.c;
    global0 = select(select(vec4<u32>(func_2(arg_2).a.x, 0u, ~22416u, reverseBits(_wgslsmith_clamp_u32(1u, 13492u, arg_2.a.x))), abs(countOneBits(vec4<u32>(36u, arg_1.a.x, global0.x, 26317u))), true), vec4<u32>(~12670u, var_0.a.x, ~_wgslsmith_dot_vec2_u32(arg_2.a << (vec2<u32>(0u, arg_1.a.x) % vec2<u32>(32u)), func_2(arg_2).a), var_0.a.x), true);
    return Struct_1(abs(arg_2.a), 7679i, arg_2.c);
}

fn func_6(arg_0: vec2<u32>, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    global1 = ~_wgslsmith_clamp_u32(global0.x, global0.x, ~arg_3.a.x >> (52741u % 32u));
    var var_0 = true;
    let var_1 = Struct_1(vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_div_u32(global0.x, arg_2.a.x), 0u), ~(~arg_3.a.x ^ 46291u)), -1i, u_input.a.xy);
    global1 = _wgslsmith_mult_u32(func_4(arg_2, var_1, var_1.a.x & 0u, _wgslsmith_div_f32(366f, _wgslsmith_f_op_f32(max(-525f, -392f)))).a.x, ~1u) | ~_wgslsmith_dot_vec4_u32(vec4<u32>(47352u, 28660u, abs(global0.x), 1u), vec4<u32>(1u, var_1.a.x, 43203u, 53937u));
    global1 = select(~7167u, countOneBits(0u) | _wgslsmith_mod_u32(min(var_1.a.x, func_4(arg_3, Struct_1(vec2<u32>(1u, arg_0.x), u_input.a.x, vec2<i32>(-14160i, var_1.b)), 8473u, -1000f).a.x), _wgslsmith_div_u32(arg_3.a.x >> (var_1.a.x % 32u), 4294967295u)), all(vec4<bool>(any(vec2<bool>(true, true)), any(vec3<bool>(true, true, true)), !(arg_3.b == arg_3.b), true)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1153f + 157f)))))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-567f, 458f)));
}

fn func_1() -> Struct_1 {
    var var_0 = -1000f;
    let var_1 = !(!(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true)));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_6(~(~vec2<u32>(global0.x, global0.x) >> (_wgslsmith_mod_vec2_u32(vec2<u32>(70712u, 41528u), global0.xw) % vec2<u32>(32u))), vec2<i32>(~_wgslsmith_dot_vec2_i32(u_input.a.yx, vec2<i32>(u_input.a.x, 0i)), 0i), func_5(global0.x, func_4(Struct_1(global0.wx, u_input.a.x, vec2<i32>(u_input.a.x, -35370i)), func_2(Struct_1(global0.zy, u_input.a.x, u_input.a.xx)), ~global0.x, -303f), func_2(func_2(Struct_1(global0.zy, -28996i, vec2<i32>(u_input.a.x, -34732i))))), func_4(Struct_1(vec2<u32>(1u, global0.x), 2147483647i, vec2<i32>(u_input.a.x, u_input.a.x)), Struct_1(_wgslsmith_add_vec2_u32(global0.xy, global0.zy), u_input.a.x, func_4(Struct_1(global0.yx, u_input.a.x, vec2<i32>(u_input.a.x, u_input.a.x)), Struct_1(vec2<u32>(4294967295u, 46381u), -2147483647i, vec2<i32>(8739i, u_input.a.x)), global0.x, 1000f).c), ~global0.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1703f * 263f)))))) + 715f);
    let var_2 = !(-_wgslsmith_clamp_i32(-9552i, _wgslsmith_add_i32(u_input.a.x, -2147483647i), i32(-1i) * -18065i) >= (u_input.a.x | u_input.a.x));
    var var_3 = ~1u;
    return func_2(Struct_1(global0.wx, _wgslsmith_sub_i32(u_input.a.x, -func_3(vec3<bool>(var_2, false, var_1.x), vec2<u32>(global0.x, global0.x), vec2<f32>(1788f, -1260f), vec4<u32>(53552u, global0.x, 1u, global0.x)).x), countOneBits(-u_input.a.yy)));
}

fn func_7(arg_0: vec2<bool>, arg_1: vec4<bool>, arg_2: vec2<f32>, arg_3: Struct_1) -> i32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_2.x), arg_2.x, _wgslsmith_f_op_f32(-557f + -282f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.x, arg_2.x, arg_2.x) + vec3<f32>(arg_2.x, arg_2.x, 168f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_2.x, arg_2.x, arg_2.x), vec3<f32>(arg_2.x, 1025f, 227f), vec3<bool>(true, arg_1.x, arg_1.x))), vec3<bool>(false, arg_0.x, arg_1.x))))) - _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.x, 955f, arg_2.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.x, arg_2.x, -432f) + vec3<f32>(arg_2.x, -387f, 643f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-145f, arg_2.x, -2621f)))))));
    var var_1 = func_2(Struct_1(select(_wgslsmith_add_vec2_u32(global0.ww, select(vec2<u32>(0u, 18672u), global0.yz, arg_0.x)), vec2<u32>(~59770u, max(1u, arg_3.a.x)), !arg_1.xx), i32(-1i) * -49794i, func_5(~global0.x, Struct_1(vec2<u32>(arg_3.a.x, global0.x), -32951i, arg_3.c), arg_3).c ^ ((u_input.a.zx & u_input.a.zz) << ((global0.wx | vec2<u32>(arg_3.a.x, global0.x)) % vec2<u32>(32u)))));
    var_1 = arg_3;
    let var_2 = 0i;
    var var_3 = func_5(~reverseBits(46602u), arg_3, arg_3);
    return -(_wgslsmith_mod_i32(33398i ^ var_2, var_1.c.x) << (29468u % 32u));
}

fn func_8(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: i32, arg_3: Struct_1) -> StorageBuffer {
    var var_0 = Struct_1((countOneBits(countOneBits(arg_3.a)) | arg_3.a) ^ ~vec2<u32>(min(arg_3.a.x, arg_3.a.x), arg_3.a.x), -func_4(arg_3, arg_3, ~arg_0.a.x << (abs(1u) % 32u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_6(arg_0.a, arg_0.c, arg_0, Struct_1(vec2<u32>(arg_3.a.x, arg_3.a.x), arg_3.c.x, vec2<i32>(arg_0.c.x, arg_2)))) * _wgslsmith_f_op_f32(arg_1.x * -825f))).c.x, ~arg_3.c);
    var var_1 = _wgslsmith_dot_vec4_u32(~firstLeadingBit(_wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 40028u, 0u, 0u), vec4<u32>(6850u, 25242u, arg_3.a.x, 0u)), vec4<u32>(var_0.a.x, global0.x, arg_3.a.x, 4294967295u))), ~firstTrailingBit(~vec4<u32>(global0.x, arg_0.a.x, var_0.a.x, 18686u)));
    var_0 = func_2(Struct_1(func_1().a, -12856i, abs(-min(vec2<i32>(u_input.a.x, var_0.b), u_input.a.yz))));
    var var_2 = arg_0;
    let var_3 = vec3<bool>(true, false, true);
    return StorageBuffer(arg_1.x, vec4<i32>(_wgslsmith_sub_i32(var_2.c.x, 0i), (i32(-1i) * -var_2.b) >> (_wgslsmith_div_u32(41243u, ~31415u) % 32u), ~select(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.c.x, u_input.a.x, 1i, var_2.c.x), vec4<i32>(arg_0.c.x, 32522i, arg_3.b, arg_2)), _wgslsmith_mod_i32(var_0.c.x, arg_0.b), !var_3.x), 1i), ~vec2<u32>(~0u, _wgslsmith_mult_u32(var_0.a.x, var_2.a.x)) | ~func_5(2798u, Struct_1(var_0.a, 1i, vec2<i32>(1i, -2147483647i)), arg_3).a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1507f, -1262f, -899f) * vec3<f32>(598f, arg_1.x, 1356f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, -742f, 1030f) - vec3<f32>(arg_1.x, arg_1.x, arg_1.x))))), _wgslsmith_f_op_f32(753f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)) - -873f)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = global0.x;
    let var_0 = ~global0.yyw;
    let x = u_input.a;
    s_output = func_8(Struct_1(~_wgslsmith_add_vec2_u32(~vec2<u32>(global0.x, 7349u), _wgslsmith_mod_vec2_u32(var_0.yz, var_0.xx)), -u_input.a.x, vec2<i32>(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(u_input.a.x, 1i)), vec2<i32>(u_input.a.x, u_input.a.x) | u_input.a.xz), -_wgslsmith_sub_i32(-1i, u_input.a.x))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2901f - 1110f) * _wgslsmith_f_op_f32(round(2177f))), -1542f), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1618f, 1117f) - vec2<f32>(972f, -1029f)))))), ~func_7(select(vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(false, true), false), true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true))), vec2<f32>(_wgslsmith_f_op_f32(min(1047f, -792f)), _wgslsmith_div_f32(564f, -1823f)), func_1()), func_4(func_2(func_2(Struct_1(vec2<u32>(1u, var_0.x), -1i, vec2<i32>(u_input.a.x, -1i)))), func_2(func_2(func_1())), func_5(func_5(0u, Struct_1(var_0.xy, u_input.a.x, vec2<i32>(u_input.a.x, 2147483647i)), func_2(Struct_1(vec2<u32>(global0.x, global0.x), -2147483647i, u_input.a.xx))).a.x, Struct_1(func_5(8733u, Struct_1(var_0.xz, -1i, vec2<i32>(u_input.a.x, 3949i)), Struct_1(global0.zx, u_input.a.x, u_input.a.yz)).a, max(-45765i, u_input.a.x), vec2<i32>(u_input.a.x, 2699i) ^ vec2<i32>(u_input.a.x, 2147483647i)), func_5(global0.x, Struct_1(global0.xz, u_input.a.x, u_input.a.xx), Struct_1(global0.zx, -1i, vec2<i32>(55331i, u_input.a.x)))).a.x, _wgslsmith_f_op_f32(ceil(176f))));
}

