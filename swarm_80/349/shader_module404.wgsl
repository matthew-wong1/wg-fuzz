struct Struct_1 {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec2<f32>,
    e: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec4<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_2,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: vec4<i32>,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1000f;

var<private> global1: array<Struct_5, 16> = array<Struct_5, 16>(Struct_5(0i), Struct_5(27419i), Struct_5(46215i), Struct_5(-9670i), Struct_5(-36443i), Struct_5(1i), Struct_5(-1i), Struct_5(i32(-2147483648)), Struct_5(-1i), Struct_5(0i), Struct_5(-28086i), Struct_5(2147483647i), Struct_5(2147483647i), Struct_5(1i), Struct_5(32954i), Struct_5(-55216i));

var<private> global2: array<vec2<i32>, 28>;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: u32, arg_1: vec4<bool>, arg_2: Struct_2, arg_3: vec3<bool>) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(735f, arg_2.b.d.x, -488f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_2.d.d.x, arg_2.b.d.x, arg_2.d.d.x))))));
    global0 = arg_2.b.d.x;
    var var_1 = ~(~15443i);
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_2.d.d.x, var_0.x))))), var_0.zy)));
    var var_3 = vec2<i32>(abs(arg_2.b.c.x), 1i);
    return !vec3<bool>(true, true == arg_1.x, false);
}

fn func_2(arg_0: vec3<i32>) -> vec2<bool> {
    var var_0 = vec3<bool>(any(select(select(vec2<bool>(true, true), vec2<bool>(true, true), false), select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec2<bool>(false, true))), true)), true, any(func_3(u_input.a, vec4<bool>(true, true, true, true), Struct_2(vec2<bool>(true, false), Struct_1(arg_0.zz, vec2<i32>(arg_0.x, arg_0.x), global2[_wgslsmith_index_u32(u_input.a, 28u)], vec2<f32>(-653f, 142f), u_input.e.x), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, 56619u, 4754u, u_input.a), vec4<u32>(1u, u_input.d, 77172u, u_input.a)), Struct_1(vec2<i32>(arg_0.x, -30359i), vec2<i32>(11622i, arg_0.x), vec2<i32>(arg_0.x, arg_0.x), vec2<f32>(268f, -739f), 86881u)), vec3<bool>(true, true, true))));
    var var_1 = -14604i;
    var_1 = ~_wgslsmith_mult_i32(0i, arg_0.x);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(156f + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-719f - -1000f), _wgslsmith_f_op_f32(534f - -1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(149f + -189f), _wgslsmith_f_op_f32(round(214f)))) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-278f + 479f))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(125f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-1152f))))))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_2))))) < _wgslsmith_f_op_f32(ceil(-676f));
    return !(!vec2<bool>(!all(var_0.xx), true));
}

fn func_4(arg_0: u32, arg_1: vec2<bool>) -> u32 {
    var var_0 = Struct_2(!vec2<bool>(false, !func_2(vec3<i32>(30786i, -38749i, 0i)).x), Struct_1(vec2<i32>(-4736i, _wgslsmith_mult_i32(72206i, -1i)), vec2<i32>(~0i, firstTrailingBit(-18741i) >> (22190u % 32u)), -vec2<i32>(-32547i, 2147483647i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(852f, -712f))) * _wgslsmith_div_vec2_f32(vec2<f32>(502f, 1250f), vec2<f32>(1330f, 1000f))), 27187u), vec4<u32>(_wgslsmith_dot_vec2_u32(~select(u_input.c, vec2<u32>(arg_0, 98925u), true), ~min(u_input.c, u_input.c)), ~u_input.e.x, u_input.d, 1u), Struct_1(vec2<i32>(-65961i, -2147483647i), _wgslsmith_mod_vec2_i32(~(~vec2<i32>(2147483647i, -1i)), -vec2<i32>(-2147483647i, -46311i)), _wgslsmith_mod_vec2_i32(-abs(vec2<i32>(23i, -36433i)), vec2<i32>(~1i, 18408i)), vec2<f32>(_wgslsmith_f_op_f32(select(415f, -277f, select(arg_1.x, false, arg_1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(636f, 1497f)) + _wgslsmith_f_op_f32(floor(-1000f)))), ~(~_wgslsmith_mod_u32(52607u, arg_0))));
    var var_1 = Struct_4(-1750f, firstTrailingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(countOneBits(var_0.d.c.x), _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.d.c.x, -22252i, 1i), vec3<i32>(var_0.b.b.x, 20351i, var_0.b.b.x)), abs(var_0.b.b.x), var_0.b.b.x), abs(vec4<i32>(var_0.b.a.x, -2147483647i, var_0.b.b.x, var_0.d.a.x)) << (vec4<u32>(7264u, 53023u, 47550u, 60157u) % vec4<u32>(32u)))));
    var var_2 = Struct_4(var_0.b.d.x, _wgslsmith_mult_vec4_i32(-(~(-var_1.b)), -_wgslsmith_mult_vec4_i32(countOneBits(var_1.b), var_1.b)));
    global2 = array<vec2<i32>, 28>();
    var var_3 = !(firstLeadingBit(1u) >= (~1u & (~u_input.c.x ^ var_0.b.e)));
    return u_input.b ^ ~(~var_0.c.x);
}

fn func_1() -> Struct_3 {
    var var_0 = _wgslsmith_mult_u32(~1u, func_4(~reverseBits(~47672u), select(func_2(~vec3<i32>(-2147483647i, 1i, -2147483647i)), vec2<bool>(true, true), true)));
    let var_1 = 1u;
    let var_2 = Struct_1(vec2<i32>(0i, firstLeadingBit(_wgslsmith_div_i32(1i, ~1i))), vec2<i32>(1i, -2147483647i), ~_wgslsmith_div_vec2_i32(-vec2<i32>(-37701i, 1i) << (vec2<u32>(4294967295u, u_input.e.x) % vec2<u32>(32u)), global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(reverseBits(u_input.e.x), u_input.e.x, ~6602u), 28u)]), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(611f, 309f), vec2<f32>(1649f, 750f)))))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(693f + 910f), _wgslsmith_f_op_f32(-1061f * -1991f)))), 0u);
    let var_3 = vec4<u32>(countOneBits(var_2.e), abs(var_2.e) & _wgslsmith_add_u32(0u, ~(~23112u)), 4294967295u, _wgslsmith_mod_u32(~_wgslsmith_mult_u32(var_2.e, 27200u), ~var_2.e) | u_input.d);
    let var_4 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.d.x, -210f, var_2.d.x, -160f) - vec4<f32>(-496f, var_2.d.x, var_2.d.x, var_2.d.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-754f, -1995f, var_2.d.x, var_2.d.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, var_2.d.x, var_2.d.x, -1190f) + vec4<f32>(var_2.d.x, var_2.d.x, var_2.d.x, 768f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(124f, -2120f, -1657f, -472f)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.d.x, 1000f, -1304f, -404f))))));
    return Struct_3(var_3, var_2, Struct_2(vec2<bool>(true, all(func_3(u_input.e.x, vec4<bool>(true, false, true, false), Struct_2(vec2<bool>(false, false), var_2, vec4<u32>(4294967295u, u_input.d, 0u, 1u), Struct_1(var_2.a, global2[_wgslsmith_index_u32(var_3.x, 28u)], global2[_wgslsmith_index_u32(0u, 28u)], var_2.d, 130064u)), vec3<bool>(true, true, false)))), var_2, firstTrailingBit(_wgslsmith_add_vec4_u32(var_3, _wgslsmith_mult_vec4_u32(var_3, vec4<u32>(var_3.x, 53656u, 15482u, var_1)))), var_2), var_2, Struct_1(~(~_wgslsmith_mult_vec2_i32(var_2.a, vec2<i32>(var_2.b.x, 2147483647i))), countOneBits(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.e, vec3<u32>(u_input.a, var_3.x, u_input.a)), 28u)]), -_wgslsmith_div_vec2_i32(~global2[_wgslsmith_index_u32(var_1, 28u)], -vec2<i32>(var_2.b.x, var_2.b.x)), vec2<f32>(_wgslsmith_f_op_f32(-785f * _wgslsmith_f_op_f32(ceil(var_4.x))), _wgslsmith_f_op_f32(f32(-1f) * -1382f)), 3344u));
}

fn func_5(arg_0: vec4<i32>, arg_1: vec2<f32>, arg_2: Struct_3, arg_3: i32) -> u32 {
    var var_0 = u_input.e.xy;
    global2 = array<vec2<i32>, 28>();
    let var_1 = _wgslsmith_f_op_f32(floor(arg_1.x));
    var var_2 = Struct_4(_wgslsmith_f_op_f32(-var_1), vec4<i32>(46781i, min(-5816i, arg_3), -2147483647i, -_wgslsmith_mult_i32(arg_2.c.b.c.x >> (1u % 32u), _wgslsmith_div_i32(arg_2.d.a.x, 1i))));
    return 37166u;
}

fn func_6(arg_0: bool, arg_1: bool, arg_2: f32) -> Struct_5 {
    let var_0 = select(arg_1, true, false);
    var var_1 = func_1();
    let var_2 = 87584u;
    var var_3 = -(_wgslsmith_div_i32(select(-2147483647i, 0i, !var_0), var_1.b.c.x) & ~(-2147483647i));
    var_3 = _wgslsmith_div_i32(-_wgslsmith_mod_i32(-8614i, 1i), ~_wgslsmith_add_i32(var_1.c.d.c.x, abs(96i) | var_1.d.a.x));
    return Struct_5(firstLeadingBit(select(var_1.d.a.x, reverseBits(var_1.e.c.x << (var_1.e.e % 32u)), func_3(_wgslsmith_dot_vec4_u32(vec4<u32>(53950u, var_2, u_input.a, var_2), vec4<u32>(u_input.c.x, 58251u, var_1.d.e, u_input.d)), vec4<bool>(var_0, arg_1, var_1.c.a.x, var_1.c.a.x), var_1.c, !vec3<bool>(arg_0, arg_0, false)).x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(func_5(vec4<i32>(-1i, 55065i, i32(-1i) * -27689i, 1i), vec2<f32>(_wgslsmith_f_op_f32(-1000f + -3557f), _wgslsmith_f_op_f32(-1000f * 205f)), func_1(), -1i) > 0u, true, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-929f))), 1286f)));
    var var_1 = 4294967295u;
    var var_2 = ~1u;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1270f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-539f + 1424f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-552f - 1573f))));
    global2 = array<vec2<i32>, 28>();
    var_1 = 1u;
    let var_4 = reverseBits(func_4(4294967295u, vec2<bool>(true, true)) | u_input.e.x);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x, vec4<u32>(7428u, 4294967295u | _wgslsmith_div_u32(var_4, 0u), ~22113u, 1u));
}

