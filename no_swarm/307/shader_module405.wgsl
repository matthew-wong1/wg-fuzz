struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec3<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: Struct_1) -> Struct_3 {
    return Struct_3(arg_0, -abs(_wgslsmith_add_i32(arg_0.b, arg_0.b)) >> (43194u % 32u), arg_0, arg_0, arg_0);
}

fn func_3(arg_0: Struct_3, arg_1: bool, arg_2: Struct_2) -> f32 {
    let var_0 = Struct_3(Struct_1(true, 1i), countOneBits(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(~vec4<i32>(arg_0.a.b, 2147483647i, arg_2.a.x, 55603i), _wgslsmith_sub_vec4_i32(vec4<i32>(17246i, arg_2.a.x, arg_2.a.x, 2147483647i), vec4<i32>(-36320i, arg_0.c.b, 12735i, arg_0.e.b))), abs(0i))), Struct_1(true, 28573i), Struct_1(arg_0.a.a, arg_0.e.b << (_wgslsmith_div_u32(u_input.a.x, 91986u) % 32u)), Struct_1(true, arg_0.d.b));
    let var_1 = Struct_2(_wgslsmith_div_vec4_i32(arg_2.a, _wgslsmith_sub_vec4_i32(arg_2.a, -(vec4<i32>(var_0.d.b, -57477i, -11476i, 33569i) >> (vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x) % vec4<u32>(32u))))));
    var var_2 = true;
    var_2 = firstLeadingBit(firstTrailingBit(var_0.b)) != min(arg_0.c.b, arg_2.a.x);
    var var_3 = Struct_3(Struct_1((_wgslsmith_dot_vec2_u32(u_input.a.ww, u_input.a.xz) > u_input.a.x) && func_2(arg_0.d).c.a, i32(-1i) * -5155i), arg_2.a.x, var_0.d, arg_0.d, var_0.d);
    return 253f;
}

fn func_1() -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-968f, -112f, -361f), vec3<f32>(776f, 1957f, -245f))))))));
    let var_1 = -517f;
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(max(-715f, _wgslsmith_f_op_f32(func_3(func_2(Struct_1(false, 3345i)), var_0.x < _wgslsmith_f_op_f32(exp2(var_1)), Struct_2(-vec4<i32>(-2562i, -1i, 40781i, -27044i)))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(526f + _wgslsmith_f_op_f32(var_1 - var_1)) + _wgslsmith_f_op_f32(min(var_0.x, _wgslsmith_f_op_f32(ceil(-901f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1), -2643f))))), 1357f);
    var var_2 = Struct_2(select(-vec4<i32>(38586i, _wgslsmith_dot_vec4_i32(vec4<i32>(-4860i, 0i, 10595i, 29992i), vec4<i32>(15078i, 6743i, 0i, 1i)), _wgslsmith_add_i32(-1i, 15850i), i32(-1i) * -2147483647i), vec4<i32>(~(-11505i), ~(i32(-1i) * -11023i), func_2(func_2(Struct_1(false, 1i)).d).e.b, -1i), select(!select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true)), true), vec4<bool>(true, true, true, true))));
    var var_3 = Struct_2(var_2.a);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_0.x, -862f))))));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_4) -> Struct_1 {
    var var_0 = all(arg_1.b);
    var var_1 = u_input.a.x;
    var_0 = true;
    let var_2 = _wgslsmith_f_op_f32(floor(arg_0.x));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_1()), arg_0.x)))));
    return func_2(arg_1.c).d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(func_4(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_1()), 774f)), _wgslsmith_f_op_f32(-166f + _wgslsmith_f_op_f32(min(-143f, -146f))), -276f), Struct_4(vec3<i32>(8671i << (u_input.a.x % 32u), abs(1i), -1i >> (u_input.a.x % 32u)), vec3<bool>(true, true, true), func_2(Struct_1(true, -22001i)).a)), -48601i, Struct_1(true, func_2(func_4(_wgslsmith_div_vec3_f32(vec3<f32>(-2241f, 884f, -936f), vec3<f32>(-201f, -440f, 797f)), Struct_4(vec3<i32>(-7565i, -1i, -7333i), vec3<bool>(false, false, false), Struct_1(true, -15096i)))).d.b), Struct_1(true, min(6862i, _wgslsmith_mult_i32(~1i, ~(-30703i)))), Struct_1(true, func_2(Struct_1(true, _wgslsmith_clamp_i32(-9353i, 0i, 2147483647i))).b));
    let var_1 = true;
    var var_2 = _wgslsmith_mod_vec4_i32(select(~reverseBits(vec4<i32>(30407i, var_0.a.b, var_0.e.b, 63213i) & vec4<i32>(var_0.c.b, -25367i, -51450i, var_0.e.b)), countOneBits(vec4<i32>(var_0.b, firstTrailingBit(var_0.c.b), -2064i, -var_0.c.b)), select(!vec4<bool>(false, true, var_1, false), select(select(vec4<bool>(var_0.a.a, var_0.d.a, var_0.a.a, var_0.c.a), vec4<bool>(var_1, true, var_1, true), var_0.d.a), vec4<bool>(false, var_1, true, var_1), select(vec4<bool>(false, false, var_0.a.a, false), vec4<bool>(var_0.d.a, var_0.a.a, false, false), var_0.d.a)), !(!vec4<bool>(false, var_1, var_0.a.a, false)))), vec4<i32>(-(~1i), func_4(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-221f, -1000f, -886f) * vec3<f32>(1468f, 303f, 960f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(165f, 374f, -591f))), Struct_4(~vec3<i32>(-23835i, var_0.b, var_0.b), !vec3<bool>(var_0.a.a, true, var_0.c.a), func_4(vec3<f32>(-668f, -1252f, -1469f), Struct_4(vec3<i32>(-10005i, -2147483647i, var_0.a.b), vec3<bool>(false, true, var_1), var_0.c)))).b, max(_wgslsmith_div_i32(_wgslsmith_mult_i32(-69201i, -17391i), var_0.a.b), _wgslsmith_mult_i32(_wgslsmith_clamp_i32(-12265i, -55935i, -31588i), abs(var_0.d.b))), _wgslsmith_mod_i32(var_0.a.b, i32(-1i) * -1i)));
    var var_3 = vec2<bool>(!all(select(!vec3<bool>(false, var_0.c.a, var_1), !vec3<bool>(false, true, var_0.a.a), all(vec4<bool>(false, true, var_0.e.a, false)))), true);
    var_2 = firstLeadingBit(_wgslsmith_mult_vec4_i32(-firstLeadingBit(countOneBits(vec4<i32>(var_2.x, var_0.a.b, var_2.x, 0i))), ~min(vec4<i32>(var_2.x, -1i, var_2.x, -13528i), vec4<i32>(2147483647i, 1i, var_2.x, var_0.c.b) ^ vec4<i32>(-37525i, var_0.d.b, var_0.b, var_2.x))));
    var_3 = select(vec2<bool>(true, true), !(!select(vec2<bool>(var_3.x, true), select(vec2<bool>(true, var_1), vec2<bool>(var_3.x, false), true), var_1 | true)), any(!select(select(vec3<bool>(true, var_3.x, var_1), vec3<bool>(false, var_0.d.a, false), vec3<bool>(false, true, true)), vec3<bool>(var_1, false, var_0.d.a), vec3<bool>(var_3.x, true, true))));
    let var_4 = Struct_3(func_2(Struct_1(any(select(vec2<bool>(var_3.x, var_3.x), vec2<bool>(var_1, false), vec2<bool>(false, var_1))), _wgslsmith_dot_vec3_i32(~var_2.yxy, _wgslsmith_mult_vec3_i32(vec3<i32>(var_2.x, var_0.c.b, -1i), vec3<i32>(-2147483647i, var_2.x, var_2.x))))).c, abs(abs(27399i)) & (~(i32(-1i) * -90385i) << (reverseBits(_wgslsmith_clamp_u32(u_input.a.x, 0u, u_input.a.x)) % 32u)), func_2(func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(519f, 573f, 746f)) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-251f, -288f, 541f)))), Struct_4(var_2.wzw, vec3<bool>(true, var_3.x, var_3.x), Struct_1(false, var_0.b)))).c, var_0.a, var_0.a);
    var var_5 = true;
    var var_6 = true;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(326f - 564f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-402f)))) - 1964f), -1047f), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(334f, 1678f, 1148f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-493f, 723f, -1000f), vec3<f32>(475f, -690f, -1000f))) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1484f, 2681f, 316f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-321f, 1227f, -1873f) + vec3<f32>(651f, 110f, -1509f)), vec3<bool>(var_1, var_1, var_3.x))))));
}

