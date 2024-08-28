struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: bool,
    d: vec4<i32>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<f32>) -> f32 {
    let var_0 = Struct_1(_wgslsmith_mult_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 52295u), vec2<u32>(1u, 14816u)), _wgslsmith_mult_u32(4294967295u, 1u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(743f, arg_0.x, arg_0.x, 421f), vec4<f32>(1000f, 895f, arg_0.x, -1143f), true)))), vec4<f32>(arg_0.x, -1165f, 1f, arg_0.x)) - vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(trunc(arg_0.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(arg_0.x)))), _wgslsmith_f_op_f32(-1f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -647f) + arg_0.x) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-876f))), ~(-vec4<i32>(-1i, 56034i, _wgslsmith_dot_vec3_i32(vec3<i32>(-1667i, 1i, 38383i), vec3<i32>(2147483647i, -11612i, u_input.a.x)), u_input.a.x << (8637u % 32u))), _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(_wgslsmith_add_u32(1u, min(13836u, 0u)), select(4294967295u, abs(4294967295u), true)), ~select(vec2<u32>(0u, 1u), select(vec2<u32>(70784u, 38470u), vec2<u32>(4294967295u, 30959u), false), vec2<bool>(true, true))));
    let var_1 = _wgslsmith_div_f32(var_0.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * 206f))) + 952f));
    let var_2 = var_0;
    var var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), false)), -1767f));
    let var_4 = var_2.d;
    return 899f;
}

fn func_2(arg_0: vec4<u32>, arg_1: bool, arg_2: bool, arg_3: vec2<u32>) -> Struct_1 {
    let var_0 = arg_0;
    var var_1 = -1023f;
    var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    var_1 = _wgslsmith_f_op_f32(abs(-552f));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-463f)) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -333f), _wgslsmith_f_op_f32(sign(-1000f)), !(u_input.b > u_input.b)))));
    return Struct_1(0u, vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(1587f)), 1f)), _wgslsmith_f_op_f32(f32(-1f) * -1394f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-544f, -1121f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec2<f32>(-345f, -1990f))) + 2039f)), _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1675f, 124f))))), true, vec4<i32>(abs(~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.b, -1i), vec3<i32>(3739i, u_input.b, 1i))), abs(-u_input.b), firstLeadingBit(-(u_input.b | 20609i)), _wgslsmith_mod_i32(52137i, 1i)), arg_3 >> (vec2<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(arg_3.x, arg_3.x, 0u, arg_3.x), var_0), vec4<u32>(65575u, 31537u, 17628u, arg_3.x)), arg_3.x) % vec2<u32>(32u)));
}

fn func_1(arg_0: bool, arg_1: Struct_1) -> Struct_1 {
    return func_2(_wgslsmith_add_vec4_u32(~vec4<u32>(~0u, ~1u, arg_1.e.x ^ 4294967295u, 0u), vec4<u32>(arg_1.a, arg_1.e.x, _wgslsmith_mult_u32(~91642u, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.a, arg_1.a, arg_1.a), vec3<u32>(arg_1.e.x, 4294967295u, 18245u))), _wgslsmith_clamp_u32(41501u, ~123131u, 50225u | arg_1.e.x))), max(-1i, -u_input.b ^ arg_1.d.x) == 1i, arg_1.c, ~_wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(~arg_1.e, vec2<u32>(arg_1.e.x, 14748u)), abs(arg_1.e)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    let var_0 = ~countOneBits(func_2(vec4<u32>(arg_0.e.x, arg_1.e.x, arg_1.e.x, 3900u), arg_1.c, arg_1.c, arg_0.e).a ^ 1u) != (abs(arg_0.a) >> (arg_0.e.x % 32u));
    let var_1 = 0u;
    var var_2 = arg_0.d.yz;
    var_2 = u_input.a.zx;
    var var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(1324f, arg_1.b.x, _wgslsmith_f_op_f32(arg_1.b.x * arg_1.b.x)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_1.b.x, arg_1.b.x, 812f), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_1.b.x, arg_0.b.x, 254f))))) + func_2(abs(vec4<u32>(117370u, arg_1.e.x, 4294967295u, arg_1.a)), var_1 >= 25702u, false & arg_0.c, arg_0.e).b.xxy) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-func_1(arg_0.c, arg_0).b.xwx) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(arg_0.b.www, arg_1.b.xzz, vec3<bool>(var_0, false, var_0)))))));
    return Struct_1(0u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1.b.x, _wgslsmith_f_op_f32(-var_3.x), func_2(vec4<u32>(79940u, arg_0.e.x, var_1, arg_0.e.x), true, false, arg_0.e).b.x, _wgslsmith_f_op_f32(f32(-1f) * -636f)), vec4<f32>(-1000f, var_3.x, arg_1.b.x, -406f), var_0))), var_1 != func_1(select(true, arg_0.c, true), func_2(~vec4<u32>(arg_0.a, var_1, var_1, 0u), true, true, arg_1.e)).e.x, vec4<i32>(_wgslsmith_dot_vec2_i32(reverseBits(u_input.a.yz), u_input.a.zy), -firstTrailingBit(arg_0.d.x) >> (18037u % 32u), u_input.a.x, arg_1.d.x), arg_1.e);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1(false, Struct_1(_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(1u, 80568u, 0u, 19805u)), countOneBits(vec4<u32>(4294967295u, 22954u, 1u, 4294967295u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1256f, 108f, 1936f, -652f))), true, firstLeadingBit(vec4<i32>(23344i, u_input.a.x, 32333i, u_input.b)), ~vec2<u32>(34541u, 9178u))), func_1(true | all(vec4<bool>(false, false, false, true)), Struct_1(49343u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1137f, -590f, 568f, 1355f) - vec4<f32>(-585f, 1429f, -719f, -1117f)) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1579f, -935f, -1000f, -1944f)))), true, _wgslsmith_add_vec4_i32(func_1(true, Struct_1(4294967295u, vec4<f32>(2630f, -2109f, 1477f, 617f), false, vec4<i32>(-2147483647i, u_input.a.x, u_input.b, 2147483647i), vec2<u32>(364u, 11810u))).d, abs(vec4<i32>(-25309i, u_input.a.x, 10185i, u_input.b))), ~vec2<u32>(1u, 1u))));
    let var_1 = _wgslsmith_f_op_vec4_f32(sign(var_0.b));
    let var_2 = func_2(_wgslsmith_add_vec4_u32(~(~vec4<u32>(var_0.a, var_0.a, var_0.e.x, 31319u)) << (((vec4<u32>(4294967295u, var_0.e.x, 67326u, var_0.a) | vec4<u32>(var_0.e.x, 0u, var_0.a, 8938u)) >> (~vec4<u32>(var_0.a, var_0.a, var_0.a, 24856u) % vec4<u32>(32u))) % vec4<u32>(32u)), select(~abs(vec4<u32>(var_0.a, 40278u, 62330u, 39679u)), vec4<u32>(0u, reverseBits(4294967295u), _wgslsmith_mult_u32(0u, var_0.a), 1702u), var_0.c)), var_0.c && (-113f < _wgslsmith_f_op_f32(343f * _wgslsmith_f_op_f32(var_0.b.x - var_1.x))), var_0.c, vec2<u32>(~select(reverseBits(var_0.a), func_2(vec4<u32>(1u, var_0.a, 4294967295u, var_0.a), var_0.c, false, var_0.e).e.x, all(vec4<bool>(var_0.c, var_0.c, var_0.c, true))), var_0.e.x)).e;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b);
}

