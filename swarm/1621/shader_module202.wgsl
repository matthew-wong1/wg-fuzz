struct Struct_1 {
    a: i32,
    b: u32,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: i32,
    b: vec2<bool>,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: Struct_2,
    d: vec3<u32>,
    e: u32,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec2<u32>,
    c: bool,
    d: Struct_1,
    e: vec4<bool>,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: i32,
    d: vec3<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-691f, 1660f, -745f) * vec3<f32>(-430f, 622f, 1268f)) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-765f, -1388f, 130f)))) + vec3<f32>(1f, 1f, 1f))) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -189f), -1000f, -657f) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(866f, -664f, -1000f) - vec3<f32>(648f, -1931f, -1646f))))), vec3<f32>(1023f, -307f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1533f)))))));
    var var_1 = Struct_5(Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, -u_input.a.x, countOneBits(-18433i), u_input.b << (15436u % 32u)), ~(-vec4<i32>(u_input.b, -2147483647i, u_input.a.x, 12534i))), 4054u, firstLeadingBit(0u), -156f), Struct_1(-_wgslsmith_add_i32(u_input.b, 1i) & (u_input.b ^ 19742i), u_input.c.x, 1u, -1011f));
    global0 = 4294967295u;
    let var_2 = Struct_3(((-u_input.b == _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, var_1.b.a), vec2<i32>(u_input.b, 1079i))) && (any(vec3<bool>(true, false, false)) && all(vec3<bool>(true, true, true)))) == ((select(4294967295u, 41229u, false) < abs(1u)) != (all(vec2<bool>(false, false)) || true)), var_1.a, Struct_2(firstTrailingBit(-13087i), !select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), var_1.b, false), _wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(u_input.c.x, 53974u) ^ (u_input.c.x ^ var_1.b.c), ~(~var_1.a.c), ~u_input.c.x), vec3<u32>(reverseBits(u_input.c.x), ~(1u | var_1.b.c), firstLeadingBit(var_1.a.b))), var_1.a.c);
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1053f + -482f), var_1.a.d))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1247f - 1f)));
    return var_2.b.d;
}

fn func_2() -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-254f, -1279f, -222f, -1145f), vec4<f32>(-334f, 1554f, 362f, 1449f), true))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(388f, -824f, 257f, 1891f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1031f, -2091f, -830f, 783f))))))));
    global0 = ~(~(~(~(34960u | u_input.c.x))));
    global0 = ~u_input.c.x << (12702u % 32u);
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(trunc(1710f))), var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x - var_0.x), var_0.x)), -228f);
    var_0 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, 144f, var_0.x, -1680f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-198f, -922f))), _wgslsmith_f_op_f32(func_3()), var_0.x, _wgslsmith_f_op_f32(var_0.x + var_0.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1475f, var_0.x, var_0.x, var_0.x))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1636f, var_0.x, -208f, var_0.x), vec4<f32>(-165f, var_0.x, 562f, -256f)))), select(select(vec4<bool>(false, false, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), false), vec4<bool>(false, true, false, false)), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), any(vec2<bool>(true, true))), vec4<bool>(all(vec3<bool>(false, true, false)), true, true, true)))), !vec4<bool>(_wgslsmith_f_op_f32(func_3()) < _wgslsmith_f_op_f32(1152f + -795f), true, all(select(vec2<bool>(false, true), vec2<bool>(true, true), true)), false)));
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-104f - -722f))));
}

fn func_1() -> Struct_1 {
    global0 = u_input.c.x;
    let var_0 = abs(_wgslsmith_mod_i32(u_input.a.x, u_input.a.x));
    var var_1 = countOneBits(_wgslsmith_sub_i32(-_wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(2147483647i, 0i, var_0, u_input.b)), vec4<i32>(var_0, 0i, 4409i, 2147483647i)), reverseBits(abs(var_0))));
    let var_2 = Struct_4(vec3<f32>(-716f, _wgslsmith_f_op_f32(trunc(2103f)), _wgslsmith_f_op_f32(func_2())), u_input.c, any(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, all(vec3<bool>(false, true, true))))), Struct_1(_wgslsmith_mod_i32(1i, 44540i), ~(~(~u_input.c.x)), _wgslsmith_sub_u32(_wgslsmith_add_u32(~u_input.c.x, ~0u), 27249u), _wgslsmith_f_op_f32(-412f - -1320f)), !select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), false), vec4<bool>(false, true, false, true)), true));
    let var_3 = var_2;
    return Struct_1(1i, ~(~1u | ~(4294967295u << (var_2.d.b % 32u))), ~var_3.d.b, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_2()))), var_2.d.d)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_i32(-22285i, -37888i >> (max(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(u_input.c.x, 4294967295u), _wgslsmith_mod_u32(u_input.c.x, u_input.c.x), ~u_input.c.x), _wgslsmith_add_u32(4294967295u, u_input.c.x)) % 32u));
    var var_1 = Struct_1(-u_input.a.x, _wgslsmith_dot_vec2_u32(~u_input.c, ~select(vec2<u32>(9974u, 85869u) << (u_input.c % vec2<u32>(32u)), vec2<u32>(34008u, 28674u), true)), u_input.c.x, -1651f);
    var_1 = func_1();
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(213f, 1398f, var_1.d), vec3<f32>(var_1.d, 210f, 687f))) - vec3<f32>(var_1.d, -2819f, var_1.d)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_1.d, 289f, var_1.d)))))) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.d, -1071f, -169f)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_1.d, -1000f, var_1.d))), all(vec4<bool>(false, false, true, false))))))) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1270f + var_1.d), func_1().d, true)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(116f, var_1.d)), _wgslsmith_f_op_f32(-115f - var_1.d)))));
    var var_3 = _wgslsmith_div_u32(u_input.c.x, abs(~(~var_1.b) ^ ~(~u_input.c.x)));
    let var_4 = _wgslsmith_f_op_f32(abs(-690f)) < _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) + _wgslsmith_f_op_f32(-770f - var_2.x))));
    let var_5 = abs(vec3<u32>(var_1.c, _wgslsmith_clamp_u32(_wgslsmith_mult_u32(firstTrailingBit(u_input.c.x), ~u_input.c.x), max(var_1.c << (4294967295u % 32u), max(30598u, 104363u)), 0u), _wgslsmith_mod_u32(var_1.c, _wgslsmith_clamp_u32(_wgslsmith_add_u32(u_input.c.x, 45669u), ~0u, u_input.c.x))));
    var var_6 = var_1.b;
    var var_7 = Struct_3(false, func_1(), Struct_2(u_input.a.x, vec2<bool>(all(vec2<bool>(var_4, var_4)), all(vec4<bool>(false, false, false, false))), func_1(), select(_wgslsmith_div_u32(u_input.c.x, var_5.x) < (u_input.c.x | 77002u), countOneBits(0u) < max(0u, var_1.b), var_4)), firstLeadingBit(var_5), _wgslsmith_dot_vec2_u32(vec2<u32>(14836u | var_5.x, ~24201u) >> (var_5.zx % vec2<u32>(32u)), vec2<u32>(_wgslsmith_mod_u32(0u, var_5.x), 1u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_7.c.c.d * -410f))), vec4<i32>(abs(_wgslsmith_clamp_i32(var_7.b.a, 1i, 0i)), 14890i, ~firstTrailingBit(u_input.a.x), _wgslsmith_dot_vec2_i32(firstTrailingBit(abs(vec2<i32>(u_input.a.x, var_7.b.a))), -(~vec2<i32>(var_7.c.c.a, -3719i)))), _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(-vec4<i32>(var_7.b.a, var_7.c.c.a, u_input.a.x, 3287i) | (vec4<i32>(var_7.b.a, u_input.b, var_1.a, -50031i) >> (vec4<u32>(u_input.c.x, var_7.e, 0u, 4294967295u) % vec4<u32>(32u))), vec4<i32>(0i, ~2147483647i, countOneBits(u_input.a.x), _wgslsmith_dot_vec3_i32(vec3<i32>(var_7.b.a, u_input.a.x, u_input.b), vec3<i32>(var_1.a, -20542i, -7777i)))), vec4<i32>(-1i) * -select(vec4<i32>(-5597i, 12632i, -2882i, 0i), vec4<i32>(-2147483647i, 0i, 1i, -5223i), var_7.c.b.x)), _wgslsmith_mult_vec3_i32(vec3<i32>(-6878i, var_1.a, func_1().a), vec3<i32>(u_input.a.x | u_input.a.x, 1i, _wgslsmith_add_i32(0i, var_1.a))) << (_wgslsmith_mult_vec3_u32(var_7.d << (vec3<u32>(40891u, 31196u, 51081u) % vec3<u32>(32u)), ~(~vec3<u32>(var_5.x, var_7.c.c.b, u_input.c.x))) % vec3<u32>(32u)), ~var_5.x);
}

