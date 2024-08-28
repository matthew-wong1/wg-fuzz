struct Struct_1 {
    a: bool,
    b: vec3<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec3<f32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: f32,
    c: Struct_3,
    d: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1) -> f32 {
    let var_0 = !all(!(!select(vec2<bool>(false, arg_1.a), vec2<bool>(arg_1.a, true), false)));
    var var_1 = select(var_0, false, select(true, all(vec3<bool>(true, var_0, arg_1.a)) & !(false && var_0), !((29993u ^ u_input.c) <= abs(43791u))));
    let var_2 = select(select(!vec2<bool>(arg_1.a, true), vec2<bool>(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.b.x, arg_1.b.x, -63497i), arg_1.b) > -71139i, var_0), select(select(!vec2<bool>(var_0, var_0), vec2<bool>(true, true), arg_0.x == 1000f), select(vec2<bool>(arg_1.a, false), select(vec2<bool>(true, true), vec2<bool>(arg_1.a, true), true), true), select(!vec2<bool>(true, arg_1.a), select(vec2<bool>(arg_1.a, true), vec2<bool>(true, false), false), !vec2<bool>(var_0, arg_1.a)))), select(select(select(!vec2<bool>(var_0, arg_1.a), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(var_0, true), !any(vec3<bool>(false, true, false))), !vec2<bool>(any(vec2<bool>(arg_1.a, var_0)), any(vec2<bool>(arg_1.a, false))), vec2<bool>(!any(vec2<bool>(false, false)), var_0)), !select(select(!vec2<bool>(var_0, var_0), select(vec2<bool>(false, arg_1.a), vec2<bool>(arg_1.a, arg_1.a), vec2<bool>(true, false)), !vec2<bool>(var_0, true)), !select(vec2<bool>(true, var_0), vec2<bool>(false, var_0), arg_1.a), var_0));
    let var_3 = _wgslsmith_dot_vec4_i32(~(-_wgslsmith_add_vec4_i32(vec4<i32>(-5850i, -2147483647i, arg_1.b.x, arg_1.b.x), ~vec4<i32>(-1i, arg_1.b.x, arg_1.b.x, arg_1.b.x))), _wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_1.b.x, arg_1.b.x, -2147483647i, arg_1.b.x) ^ countOneBits(vec4<i32>(-1i, -11221i, arg_1.b.x, -1i)), -min(vec4<i32>(arg_1.b.x, arg_1.b.x, 4385i, 10443i), vec4<i32>(1i, arg_1.b.x, arg_1.b.x, arg_1.b.x))), max(vec4<i32>(arg_1.b.x, 1i, arg_1.b.x, arg_1.b.x) ^ _wgslsmith_mult_vec4_i32(vec4<i32>(arg_1.b.x, -59578i, -1i, 2059i), vec4<i32>(-33100i, 1i, 34027i, 33704i)), vec4<i32>(1i, _wgslsmith_mod_i32(arg_1.b.x, -12165i), 23258i, arg_1.b.x))));
    let var_4 = arg_1.b.xy;
    return 749f;
}

fn func_2() -> f32 {
    var var_0 = Struct_2(u_input.d, Struct_1(!((u_input.e.x ^ 0u) < 4294967295u), -(~min(vec3<i32>(31974i, -2147483647i, 1i), vec3<i32>(-1i, 1i, 8680i)))));
    var_0 = Struct_2(0u, Struct_1(var_0.b.a, vec3<i32>(1i, var_0.b.b.x, 46759i)));
    var_0 = Struct_2(min(~select(reverseBits(1u), 1u, true), _wgslsmith_mod_u32(~u_input.e.x, firstTrailingBit(var_0.a))), var_0.b);
    var_0 = Struct_2(4294967295u, var_0.b);
    var_0 = Struct_2(var_0.a, Struct_1(false, abs(select(-var_0.b.b, select(var_0.b.b, vec3<i32>(16129i, -1i, 2147483647i), vec3<bool>(var_0.b.a, true, false)), !var_0.b.a))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + -1311f) - _wgslsmith_f_op_f32(func_3(vec4<f32>(-1162f, 251f, -576f, 588f), Struct_1(true, var_0.b.b)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(320f, -264f)) * _wgslsmith_f_op_f32(floor(367f))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-118f, -131f) + -1046f))));
}

fn func_4(arg_0: vec4<f32>) -> Struct_3 {
    var var_0 = Struct_3(Struct_1(all(vec3<bool>(true, true, true)), _wgslsmith_clamp_vec3_i32(~abs(vec3<i32>(0i, -1i, 2147483647i)), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -1i, 0i), vec3<i32>(32261i, -6334i, 0i)), max(10280i, 2147483647i), 1141i >> (1u % 32u)), -vec3<i32>(40164i, -2147483647i, 2147483647i))), Struct_2(~23505u, Struct_1(true, vec3<i32>(1i, 1i, 1i) << (~vec3<u32>(u_input.b, u_input.d, u_input.d) % vec3<u32>(32u)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec4_f32(-arg_0), Struct_1(false, vec3<i32>(-26852i, -36146i, 29700i)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(arg_0.x)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.x))))));
    var_0 = Struct_3(Struct_1(true, vec3<i32>(var_0.b.b.b.x, ~countOneBits(1i), -1i)), var_0.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.x, var_0.c.x, -1914f))));
    var_0 = Struct_3(var_0.a, var_0.b, vec3<f32>(1442f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) + -1171f), _wgslsmith_f_op_f32(var_0.c.x * arg_0.x)));
    var_0 = Struct_3(Struct_1(!(!any(vec2<bool>(true, false))), abs(vec3<i32>(var_0.a.b.x | 1i, -33883i, i32(-1i) * -6365i))), var_0.b, vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec4_f32(arg_0 + _wgslsmith_f_op_vec4_f32(abs(arg_0))), var_0.b.b)), _wgslsmith_f_op_f32(select(942f, _wgslsmith_f_op_f32(-630f + _wgslsmith_f_op_f32(arg_0.x * -723f)), false))));
    var_0 = Struct_3(var_0.b.b, Struct_2(~31295u, Struct_1(true, var_0.a.b)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(351f, var_0.c.x, arg_0.x)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, var_0.c.x, arg_0.x))) - _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_0.x, -675f, 404f))))))));
    return Struct_3(Struct_1(all(vec2<bool>(!var_0.b.b.a, var_0.b.b.a)), ~vec3<i32>(-2147483647i, 41287i, -50585i) ^ var_0.a.b), var_0.b, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(488f, 758f, -810f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1082f, var_0.c.x, var_0.c.x))))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(arg_0.xzx * vec3<f32>(arg_0.x, 877f, arg_0.x)))), _wgslsmith_f_op_vec3_f32(-arg_0.zww))))));
}

fn func_1() -> u32 {
    let var_0 = select((-(~vec4<i32>(1i, 14123i, 2147483647i, -2147483647i)) << (firstLeadingBit(vec4<u32>(0u, 1374u, u_input.b, 51794u)) % vec4<u32>(32u))) >> (firstTrailingBit(~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.d, u_input.b, 0u, u_input.a.x), vec4<u32>(u_input.c, 67712u, 6158u, u_input.a.x))) % vec4<u32>(32u)), vec4<i32>(1i, 1i, 1i, 1i) << (max(~(~vec4<u32>(74609u, u_input.a.x, u_input.e.x, 69452u)), vec4<u32>(u_input.e.x, u_input.e.x | u_input.d, 22848u, ~u_input.b)) % vec4<u32>(32u)), vec4<bool>(any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true))), true, u_input.e.x < ~(u_input.b & u_input.d), true));
    let var_1 = select(u_input.a.x, reverseBits(~1u), true);
    let var_2 = _wgslsmith_div_u32(u_input.e.x, min(~reverseBits(var_1 | u_input.e.x), 0u));
    let var_3 = func_4(vec4<f32>(_wgslsmith_f_op_f32(1029f - _wgslsmith_f_op_f32(-2306f - _wgslsmith_f_op_f32(floor(-1352f)))), -717f, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1337f + -1285f), _wgslsmith_f_op_f32(func_2())), 781f, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_2()))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(985f, 1383f, true)), _wgslsmith_f_op_f32(114f * 676f)))));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_3.c.x, -545f)));
    return _wgslsmith_clamp_u32(var_3.b.a, _wgslsmith_div_u32(u_input.b, 35309u), min(u_input.d, abs(~1u)));
}

fn func_5(arg_0: u32) -> Struct_1 {
    let var_0 = ~select(u_input.d, ~1u, all(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), true)));
    var var_1 = func_4(vec4<f32>(1f, 1f, 1f, 1f)).b;
    var var_2 = ~select(~vec3<u32>(~arg_0, 1u, u_input.d), vec3<u32>(0u, var_1.a << (var_0 % 32u), reverseBits(u_input.d) << (select(35391u, u_input.e.x, true) % 32u)), select(vec3<bool>(var_1.b.a, !var_1.b.a, var_1.b.b.x > 2147483647i), vec3<bool>(true, true, true == var_1.b.a), true));
    var_2 = ~(~_wgslsmith_div_vec3_u32(u_input.e, firstLeadingBit(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.d, var_2.x, 4294967295u), u_input.e))));
    var var_3 = func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2252f, -482f, -671f, -1336f)) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1108f, -2158f, -277f, -409f), vec4<f32>(-1000f, -604f, -974f, -613f)))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-430f, -674f, 375f, 901f))))) + _wgslsmith_div_vec4_f32(vec4<f32>(-485f, _wgslsmith_f_op_f32(f32(-1f) * -177f), _wgslsmith_f_op_f32(trunc(-248f)), 561f), vec4<f32>(-619f, 1570f, -155f, _wgslsmith_f_op_f32(-319f + 244f))))).b.b;
    return func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(497f, -2136f, -241f, -499f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(814f, -1733f, 940f, -779f), vec4<f32>(-130f, -858f, -551f, 392f), vec4<bool>(true, var_3.a, true, false))) - vec4<f32>(842f, 906f, 388f, -149f))) + _wgslsmith_div_vec4_f32(vec4<f32>(-1198f, _wgslsmith_f_op_f32(1894f * -172f), -1109f, _wgslsmith_f_op_f32(func_3(vec4<f32>(-1052f, 552f, 731f, 822f), var_1.b))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-316f, 1938f, -269f, -232f))))))).a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(u_input.d, func_5(abs(func_1())));
    var var_1 = (_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(u_input.e, vec3<u32>(u_input.b, var_0.a, var_0.a), u_input.e), ~u_input.e), u_input.e) > 4294967295u) || (_wgslsmith_f_op_f32(sign(1105f)) > _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -847f) + _wgslsmith_f_op_f32(f32(-1f) * -381f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(420f, 949f))));
    var var_2 = vec2<bool>(any(!(!vec2<bool>(false, var_0.b.a))), select(abs(-var_0.b.b.x) != 1i, all(!vec3<bool>(true, false, var_0.b.a)), false));
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1f - 578f), _wgslsmith_f_op_f32(-func_4(vec4<f32>(261f, 289f, -1000f, -680f)).c.x), 1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-462f * 666f), _wgslsmith_f_op_f32(-358f + 142f)))) - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1085f)) * _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(-184f * _wgslsmith_f_op_f32(f32(-1f) * -113f)))), _wgslsmith_f_op_f32(f32(-1f) * -1812f)));
    let var_4 = var_0.b;
    var_1 = any(!vec3<bool>(u_input.e.x <= ~u_input.a.x, !any(vec3<bool>(true, var_2.x, false)), select(true, !var_0.b.a, var_2.x || var_2.x)));
    var var_5 = -var_4.b.x;
    var var_6 = vec3<bool>(true, !func_5(~1u).a, true);
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, ~var_4.b.x, min(~20037u, abs(0u)), vec2<u32>(~firstLeadingBit(_wgslsmith_sub_u32(u_input.e.x, var_0.a)), 56818u));
}

