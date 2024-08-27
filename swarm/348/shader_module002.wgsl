struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_1,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec3<u32>,
    c: bool,
    d: Struct_2,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec3<f32>,
    d: vec3<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> bool {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-519f * _wgslsmith_div_f32(839f, _wgslsmith_f_op_f32(trunc(-337f)))), _wgslsmith_f_op_f32(f32(-1f) * -489f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(896f * _wgslsmith_f_op_f32(f32(-1f) * -451f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(2664f)) + 1157f))));
    let var_1 = true;
    var var_2 = -vec3<i32>(-_wgslsmith_mult_i32(-17954i, 30858i) >> (max(~u_input.a.x, u_input.b >> (u_input.b % 32u)) % 32u), _wgslsmith_add_i32(abs(-44329i), -_wgslsmith_sub_i32(0i, 26369i)), 9757i);
    var var_3 = _wgslsmith_dot_vec4_u32(~vec4<u32>(firstLeadingBit(u_input.b), u_input.b, 9770u | ~u_input.b, ~1u), vec4<u32>(~_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(u_input.a.zx, vec2<u32>(u_input.a.x, u_input.a.x)), ~6626u), ~u_input.a.x, 1u, _wgslsmith_dot_vec2_u32(u_input.a.yy, ~(~vec2<u32>(u_input.b, u_input.a.x)))));
    let var_4 = Struct_3(_wgslsmith_f_op_f32(var_0.x + _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - var_0.x) * _wgslsmith_f_op_f32(select(617f, var_0.x, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1765f, 2399f)) - var_0.x))), max(reverseBits(~reverseBits(vec3<u32>(13119u, u_input.a.x, u_input.b))), _wgslsmith_add_vec3_u32(u_input.a, vec3<u32>(63092u, u_input.b, 1u)) & u_input.a), true, Struct_2(min(~vec4<u32>(1u, u_input.a.x, u_input.b, u_input.a.x), vec4<u32>(1u, ~u_input.a.x, ~u_input.a.x, 56821u)), Struct_1(true), Struct_1(!all(vec2<bool>(true, false))), true, Struct_1(false)), Struct_1(_wgslsmith_sub_u32(~0u, 1u) == ~_wgslsmith_add_u32(u_input.a.x, 1u)));
    return true;
}

fn func_2(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: vec2<bool>, arg_3: vec2<u32>) -> bool {
    let var_0 = Struct_2(~(~(~vec4<u32>(arg_3.x, arg_3.x, arg_3.x, arg_0.a.x))), Struct_1(true), Struct_1(arg_0.e.a), select(((arg_3.x == arg_3.x) || any(vec3<bool>(arg_0.e.a, false, arg_2.x))) | (65605u <= reverseBits(u_input.b)), func_3(), false), Struct_1(all(vec3<bool>(true, true, arg_0.e.a))));
    let var_1 = ~(~vec2<i32>(-37845i, -78931i));
    let var_2 = vec4<i32>(-1i) * -vec4<i32>(countOneBits(-12592i), -_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.x, var_1.x, var_1.x), vec3<i32>(16973i, var_1.x, -438i)), var_1.x << (~arg_0.a.x % 32u), _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 1i, 1384i, var_1.x), vec4<i32>(-2147483647i, 0i, var_1.x, var_1.x)), 1i));
    let var_3 = var_2.x;
    var var_4 = -reverseBits(vec4<i32>(-2147483647i, abs(max(var_1.x, 6982i)), _wgslsmith_sub_i32(~var_3, ~var_2.x), abs(-15172i & var_3)));
    return !(!func_3());
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: vec2<u32>, arg_3: vec2<bool>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-806f, 373f, 452f)))));
    return Struct_2(_wgslsmith_mod_vec4_u32(select(_wgslsmith_add_vec4_u32(vec4<u32>(arg_2.x, arg_2.x, u_input.b, 90798u), vec4<u32>(arg_2.x, u_input.b, 99760u, arg_2.x)) << ((vec4<u32>(1u, arg_2.x, 0u, 1u) >> (vec4<u32>(arg_2.x, 75529u, u_input.a.x, arg_2.x) % vec4<u32>(32u))) % vec4<u32>(32u)), ~(~vec4<u32>(arg_2.x, 62966u, 6694u, 0u)), func_2(Struct_2(vec4<u32>(arg_2.x, arg_2.x, 701u, 4294967295u), Struct_1(arg_3.x), arg_0, arg_0.a, Struct_1(false)), vec3<f32>(var_0.x, -350f, var_0.x), arg_3, arg_2)), ~vec4<u32>(firstTrailingBit(4137u), 39079u, ~u_input.a.x, u_input.b >> (u_input.a.x % 32u))), Struct_1(!arg_0.a & true), Struct_1(u_input.b > u_input.a.x), false & (arg_3.x & true), arg_0);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec4<f32>) -> bool {
    let var_0 = _wgslsmith_dot_vec4_i32(vec4<i32>(1i, -1i, _wgslsmith_clamp_i32(_wgslsmith_add_i32(_wgslsmith_mult_i32(17115i, -22218i), _wgslsmith_mod_i32(3117i, 2147483647i)), firstLeadingBit(43382i) << (arg_0.a.x % 32u), reverseBits(~(-1i))), ~(-firstTrailingBit(-30904i))), countOneBits(~vec4<i32>(2147483647i, 1i, 2147483647i, 0i) >> (vec4<u32>(min(arg_1.b.x, arg_1.b.x), 80455u | arg_1.d.a.x, max(arg_0.a.x, arg_1.d.a.x), abs(106043u)) % vec4<u32>(32u))));
    var var_1 = Struct_2(arg_1.d.a, Struct_1(false), Struct_1(true), _wgslsmith_sub_u32(u_input.a.x, (u_input.b >> (32446u % 32u)) | firstTrailingBit(u_input.a.x)) > max(~abs(27703u), arg_1.d.a.x), func_1(arg_0.e, firstTrailingBit(_wgslsmith_add_i32(39630i, _wgslsmith_mult_i32(var_0, var_0))), arg_1.d.a.yx, select(vec2<bool>(true, true), vec2<bool>(func_2(Struct_2(arg_1.d.a, arg_0.b, arg_0.e, arg_0.c.a, Struct_1(arg_0.d)), arg_2.zwz, vec2<bool>(arg_0.b.a, arg_1.c), vec2<u32>(arg_0.a.x, 1u)), false), arg_0.d)).c);
    let var_2 = !select(select(vec2<bool>(false, var_1.d), vec2<bool>(1i > var_0, var_1.e.a), vec2<bool>(false, any(vec3<bool>(true, true, false)))), !(!select(vec2<bool>(false, var_1.c.a), vec2<bool>(arg_1.c, false), true)), false);
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(~(~select(abs(vec4<u32>(26377u, u_input.b, 8381u, 0u)), ~vec4<u32>(u_input.b, 32899u, u_input.b, u_input.b), true)), Struct_1(func_4(func_1(Struct_1(true), 1i, vec2<u32>(u_input.a.x, u_input.b), vec2<bool>(true, true)), Struct_3(-748f, max(u_input.a, vec3<u32>(u_input.a.x, 20053u, 4294967295u)), true, func_1(Struct_1(true), -9626i, vec2<u32>(1u, 38243u), vec2<bool>(true, true)), func_1(Struct_1(false), 2147483647i, u_input.a.xx, vec2<bool>(false, true)).c), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(362f, -1897f, 391f, -1000f), vec4<f32>(-768f, -1783f, -1339f, -288f), vec4<bool>(false, true, true, true)))))), func_1(Struct_1(true), firstLeadingBit(_wgslsmith_clamp_i32(abs(8133i), 1i, min(-21670i, -61480i))), ~vec2<u32>(~5001u, u_input.b), vec2<bool>(true, !select(false, true, true))).e, select(select(true, true, false), (~u_input.a.x > ~u_input.a.x) & true, true), func_1(func_1(Struct_1(49135u < u_input.b), _wgslsmith_clamp_i32(-27362i, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -2147483647i, 0i, 0i), vec4<i32>(0i, -14676i, -63272i, 0i)), firstTrailingBit(2147483647i)), u_input.a.xx, vec2<bool>(true, true)).b, _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(17259i, 1i), vec2<i32>(22551i, 1i)), ~countOneBits(vec2<i32>(-17843i, -1i))), firstLeadingBit(u_input.a.zz), select(vec2<bool>(true, true), vec2<bool>(true, true), true)).e);
    var var_1 = Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-709f, _wgslsmith_f_op_f32(sign(929f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-870f + -1000f) + _wgslsmith_f_op_f32(max(1904f, 726f)))), 2288f), var_0.a.xwz, true, Struct_2(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, var_0.a.x, 8198u), reverseBits(vec3<u32>(24023u, var_0.a.x, 1u))), _wgslsmith_div_u32(0u, 28440u), u_input.b, 39987u), func_1(func_1(var_0.e, _wgslsmith_div_i32(-1i, -1i), vec2<u32>(var_0.a.x, 35729u), vec2<bool>(true, true)).b, 1i, countOneBits(vec2<u32>(var_0.a.x, 105044u)), !select(vec2<bool>(var_0.d, true), vec2<bool>(false, var_0.d), vec2<bool>(true, true))).e, var_0.c, var_0.a.x > 1u, Struct_1(false)), func_1(var_0.c, -_wgslsmith_add_i32(~25998i, _wgslsmith_sub_i32(13324i, 1i)), u_input.a.yy, vec2<bool>(var_0.b.a, var_0.b.a)).e);
    var_1 = Struct_3(_wgslsmith_f_op_f32(max(-529f, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(316f, _wgslsmith_f_op_f32(1657f + -958f)))))), var_0.a.yzx, !(var_1.c | true), Struct_2(vec4<u32>(60041u, _wgslsmith_add_u32(countOneBits(1508u), var_1.d.a.x), var_0.a.x, ~21284u), func_1(var_0.b, firstLeadingBit(_wgslsmith_clamp_i32(45999i, 1i, -942i)), var_1.d.a.yw, select(!vec2<bool>(var_0.e.a, var_0.e.a), !vec2<bool>(var_0.b.a, true), select(vec2<bool>(true, true), vec2<bool>(var_0.d, var_0.e.a), var_1.e.a))).c, func_1(func_1(var_1.d.c, 2147483647i, vec2<u32>(u_input.a.x, 4800u), vec2<bool>(var_0.b.a, false)).c, -4318i, var_1.d.a.wz, vec2<bool>(true, true)).c, func_2(func_1(func_1(Struct_1(false), 0i, var_0.a.xw, vec2<bool>(var_0.b.a, true)).b, -2147483647i, var_0.a.xx, select(vec2<bool>(false, false), vec2<bool>(true, var_0.d), false)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_1.a, var_1.a, var_1.a)))), !(!vec2<bool>(var_1.c, var_0.b.a)), firstTrailingBit(vec2<u32>(u_input.a.x, var_0.a.x)) | vec2<u32>(1u, 4294967295u)), var_0.c), func_1(Struct_1(var_0.c.a), (1i << (u_input.b % 32u)) ^ ~max(-20145i, 1i), ~(~firstTrailingBit(vec2<u32>(1u, 1u))), !(!vec2<bool>(true, var_1.d.d))).e);
    let var_2 = 154f;
    let var_3 = vec2<bool>(true, any(!(!(!vec3<bool>(false, var_0.d, var_0.e.a)))));
    let var_4 = select(!select(select(!vec3<bool>(true, true, var_0.b.a), vec3<bool>(true, true, true), true), vec3<bool>(false, true, var_0.d), select(vec3<bool>(true, true, false), select(vec3<bool>(var_3.x, false, var_0.c.a), vec3<bool>(false, true, true), vec3<bool>(var_3.x, var_0.b.a, false)), select(vec3<bool>(false, var_1.e.a, true), vec3<bool>(var_0.e.a, true, var_1.e.a), false))), !select(vec3<bool>(true, var_1.d.a.x < 0u, !var_1.c), !(!vec3<bool>(var_0.b.a, false, var_0.d)), !vec3<bool>(var_1.c, true, true)), vec3<bool>(true, !all(vec2<bool>(var_0.d, var_3.x)), var_0.a.x >= ~(~66460u)));
    var_1 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(718f - _wgslsmith_f_op_f32(f32(-1f) * -1477f)) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_2, var_2), 1001f)), _wgslsmith_f_op_f32(step(var_2, 925f))))), ~(~vec3<u32>(select(var_0.a.x, 26867u, var_0.d), 45879u, 1u)), func_2(func_1(func_1(Struct_1(true), ~2147483647i, firstTrailingBit(u_input.a.zz), select(vec2<bool>(var_4.x, var_1.e.a), var_3, vec2<bool>(true, var_4.x))).b, min(~(-2147483647i), 0i), ~(u_input.a.yx & vec2<u32>(u_input.a.x, 20295u)), var_3), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, var_1.a, var_1.a)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(129f, var_2, var_2)) * vec3<f32>(1032f, var_1.a, var_2))), !(!(!var_4.yz)), ~(~(~vec2<u32>(u_input.a.x, var_1.b.x)))), Struct_2(func_1(func_1(var_0.b, 33322i, ~vec2<u32>(u_input.a.x, 1u), select(var_3, var_3, vec2<bool>(true, var_3.x))).e, -1i, vec2<u32>(~21915u, 24697u), select(var_4.zy, select(vec2<bool>(false, var_0.b.a), vec2<bool>(false, false), var_0.d), select(var_4.zz, vec2<bool>(var_4.x, true), vec2<bool>(true, var_1.e.a)))).a, var_1.d.b, var_1.d.c, true, func_1(var_1.d.b, 0i, firstTrailingBit(vec2<u32>(4294967295u, u_input.a.x)), var_4.zx).b), func_1(Struct_1(true), _wgslsmith_clamp_i32(firstLeadingBit(_wgslsmith_sub_i32(-1i, -9065i)), ~_wgslsmith_dot_vec4_i32(vec4<i32>(44132i, -53247i, -2147483647i, 2147483647i), vec4<i32>(1i, 13279i, 6272i, -2147483647i)), min(-17272i, ~(-1i))), ~select(vec2<u32>(u_input.a.x, 1u), vec2<u32>(54243u, 4294967295u) & u_input.a.yx, false), !(!select(vec2<bool>(false, false), vec2<bool>(true, var_4.x), var_3))).c);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.ww, var_1.d.a.zw, vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(130f + -1000f)))), var_2, _wgslsmith_f_op_f32(abs(var_1.a))), vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 8403i), vec2<i32>(-11847i, -24859i)), 1i), min(1i, _wgslsmith_sub_i32(3123i, -59549i))), 2147483647i & (_wgslsmith_sub_i32(-1i, -1i) >> ((u_input.a.x ^ var_1.d.a.x) % 32u)), ~26011i), ~29820u);
}

