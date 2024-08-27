struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: vec4<i32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_1, arg_3: f32) -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-231f, 462f) - vec2<f32>(arg_3, -982f))))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(arg_3)), _wgslsmith_f_op_f32(min(454f, arg_3))))));
    var_0 = vec2<f32>(540f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -218f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.x + arg_3)))));
    let var_1 = arg_2;
    var var_2 = arg_2;
    var var_3 = vec2<u32>(_wgslsmith_add_u32(_wgslsmith_add_u32(_wgslsmith_sub_u32(u_input.a, var_2.a) & ~arg_1.a, var_2.a), 1u), ~20228u);
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 1414f)) + _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(2595f, -1202f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-453f, -1000f))) + vec2<f32>(1000f, -469f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3, arg_3) - vec2<f32>(1048f, arg_3)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_0.x, -816f)))))))));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<bool>) -> vec4<i32> {
    let var_0 = arg_0;
    let var_1 = Struct_1(38653u);
    let var_2 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(func_3(select(vec3<bool>(true, false, false), arg_1.zxw, arg_1.xyx), Struct_1(u_input.a), Struct_1(4294967295u), _wgslsmith_f_op_f32(f32(-1f) * -306f))))) + vec2<f32>(1f, 1f))));
    var var_3 = vec2<u32>(_wgslsmith_div_u32(_wgslsmith_mod_u32(0u, max(17112u, _wgslsmith_dot_vec4_u32(vec4<u32>(15770u, 0u, var_1.a, u_input.a), vec4<u32>(80496u, arg_0.a, var_0.a, 4294967295u)))), ~arg_0.a), ~(arg_0.a ^ ~1u));
    var_3 = ~vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_0.a, var_3.x) << (vec3<u32>(arg_0.a, 1u, u_input.a) % vec3<u32>(32u)), vec3<u32>(u_input.a, 73114u, 110445u)) << (select(0u, 1u, true && arg_1.x) % 32u), var_0.a);
    return vec4<i32>(1i, _wgslsmith_clamp_i32(-43716i, -2147483647i, 0i >> (var_1.a % 32u)), ~select(select(u_input.b.x, -u_input.b.x, arg_1.x | true), _wgslsmith_add_i32(~u_input.b.x, u_input.c), false), -_wgslsmith_dot_vec3_i32(u_input.b, firstLeadingBit(u_input.b)));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec4<i32>, arg_2: vec3<i32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x + -780f) + _wgslsmith_f_op_f32(f32(-1f) * -897f)))) + -1300f);
    let var_1 = arg_0.zy;
    let var_2 = Struct_1(~23848u);
    let var_3 = select(vec3<u32>(~0u, 0u, u_input.a), vec3<u32>(_wgslsmith_clamp_u32(0u, _wgslsmith_add_u32(firstLeadingBit(u_input.a), u_input.a), 3045u), select(u_input.a, var_2.a, true) >> (var_2.a % 32u), 1u), false);
    var_0 = 710f;
    return Struct_1(~39747u);
}

fn func_5(arg_0: Struct_1, arg_1: f32) -> bool {
    var var_0 = ~(~(~select(vec3<u32>(1u, 10968u, u_input.a), vec3<u32>(0u, arg_0.a, 0u), false)) >> (abs(firstLeadingBit(vec3<u32>(u_input.a, 30341u, 1u) & vec3<u32>(4294967295u, u_input.a, 16630u))) % vec3<u32>(32u)));
    let var_1 = arg_0;
    var_0 = vec3<u32>(u_input.a, 4294967295u, var_1.a);
    var_0 = _wgslsmith_mult_vec3_u32(vec3<u32>(firstLeadingBit(~0u), u_input.a, 4294967295u), _wgslsmith_mod_vec3_u32(~(~countOneBits(vec3<u32>(13118u, 4294967295u, 55543u))), ~vec3<u32>(6936u, u_input.a, max(46875u, 26781u))));
    let var_2 = Struct_1(_wgslsmith_add_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(83500u, u_input.a)), reverseBits(var_0.xz)), select(1u, firstLeadingBit(var_1.a), true)), u_input.a));
    return true;
}

fn func_1() -> vec4<i32> {
    let var_0 = select(vec3<bool>(func_5(func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2335f, 1888f, 1064f, 514f)), func_2(Struct_1(u_input.a), vec4<bool>(false, false, true, false)), u_input.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2270f))), true, true), vec3<bool>(~(u_input.d ^ 0i) < select(-2147483647i, -50954i, true), select(u_input.a <= 50537u, true, func_5(Struct_1(u_input.a), _wgslsmith_f_op_f32(round(3481f)))), any(vec4<bool>(true, true, true, true))), vec3<bool>(true == all(vec4<bool>(false, true, true, true)), false | (4294967295u > reverseBits(u_input.a)), true));
    let var_1 = 1f;
    let var_2 = func_4(vec4<f32>(var_1, -278f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(114f, -883f) - _wgslsmith_f_op_f32(var_1 + var_1)) + -227f), var_1), vec4<i32>(2147483647i, -u_input.d, -57224i, 20625i), countOneBits(firstLeadingBit((vec3<i32>(0i, 34009i, 1i) & u_input.b) & u_input.b)));
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(780f, 161f, var_1, -434f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_1, var_1, var_1, 204f))))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(var_1, var_1), var_1, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_1)), -2278f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_1)) - var_1)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(383f, _wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(max(var_1, 938f)), _wgslsmith_f_op_f32(max(var_1, var_1))) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1, 1405f, -495f, 826f))))));
    var var_4 = var_2;
    return -select(vec4<i32>(~(-1680i), firstLeadingBit(i32(-1i) * -1i), u_input.b.x >> (~var_4.a % 32u), 1978i), select(min(_wgslsmith_mult_vec4_i32(vec4<i32>(-1805i, -2147483647i, u_input.b.x, -1i), vec4<i32>(u_input.d, u_input.d, u_input.b.x, -2147483647i)), vec4<i32>(-1i, u_input.c, 0i, u_input.d)), -vec4<i32>(0i, u_input.d, 37713i, 1i) << (vec4<u32>(30369u, var_4.a, 26727u, 4292u) % vec4<u32>(32u)), select(!vec4<bool>(true, var_0.x, true, true), !vec4<bool>(false, var_0.x, false, var_0.x), !vec4<bool>(true, var_0.x, true, var_0.x))), !select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, var_0.x, var_0.x, true), vec4<bool>(true, false, var_0.x, var_0.x)), !vec4<bool>(var_0.x, true, var_0.x, var_0.x), any(var_0)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_u32(13566u, ~u_input.a) | (_wgslsmith_div_u32(_wgslsmith_add_u32(~u_input.a, u_input.a), 63200u) & ~min(_wgslsmith_sub_u32(u_input.a, 101200u), 1u));
    var_0 = ~(~1u);
    var_0 = 17499u;
    var_0 = 30850u;
    var_0 = ~min(u_input.a, u_input.a);
    var_0 = 80413u ^ u_input.a;
    var_0 = max(_wgslsmith_add_u32(u_input.a, countOneBits(max(u_input.a, 12989u))), 0u) | 25342u;
    var_0 = ~u_input.a | ~(~u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_i32(u_input.b, vec3<i32>(8505i, u_input.c, -1i)), max(firstLeadingBit(~1u), countOneBits(u_input.a)), 0u, func_1(), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-450f, 498f) + _wgslsmith_f_op_f32(f32(-1f) * -1784f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(-346f, -738f))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(335f, -1352f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(813f, -885f) - vec2<f32>(-2897f, 1394f))))));
}

