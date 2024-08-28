struct Struct_1 {
    a: vec2<i32>,
    b: vec2<f32>,
    c: bool,
    d: f32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: vec3<u32>,
    e: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: bool,
    d: Struct_2,
    e: u32,
}

struct Struct_4 {
    a: f32,
    b: bool,
    c: vec4<i32>,
    d: Struct_2,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 5>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: u32) -> vec3<f32> {
    global0 = array<vec2<u32>, 5>();
    global0 = array<vec2<u32>, 5>();
    let var_0 = _wgslsmith_f_op_f32(-arg_1.b.x) < _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b.x + arg_1.d)))), _wgslsmith_f_op_f32(-arg_1.d));
    global0 = array<vec2<u32>, 5>();
    let var_1 = ~_wgslsmith_mod_u32(countOneBits(~(arg_2 ^ 4294967295u)), ~0u);
    return _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.d, -787f, -1367f) + vec3<f32>(-181f, -1765f, arg_1.d)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.d, -1376f, arg_1.d) * vec3<f32>(1066f, 502f, 263f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.b.x, -1515f, -1469f) + vec3<f32>(170f, arg_1.b.x, -388f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(637f, arg_1.d, 229f))))))));
}

fn func_3() -> u32 {
    let var_0 = ~vec2<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a.x, u_input.a.x, 862u), vec3<u32>(24560u, 0u, u_input.a.x)), _wgslsmith_dot_vec2_u32(u_input.a.zz, u_input.a.yy << (u_input.a.xz % vec2<u32>(32u)))), u_input.a.x);
    let var_1 = Struct_3(Struct_2(Struct_1(max(vec2<i32>(-2147483647i, 1141i), vec2<i32>(u_input.b, u_input.b)) & (vec2<i32>(-2147483647i, u_input.b) ^ vec2<i32>(u_input.b, 14875i)), vec2<f32>(_wgslsmith_f_op_f32(trunc(-885f)), -1057f), select(true, true, true), -932f, _wgslsmith_mult_vec4_i32(-vec4<i32>(-7208i, u_input.b, u_input.b, u_input.b), vec4<i32>(-7891i, u_input.b, -1613i, u_input.b))), Struct_1(~(-vec2<i32>(u_input.b, 1i)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -286f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1876f, 1107f) + vec2<f32>(-1313f, 406f))), false, _wgslsmith_f_op_f32(582f * 1f), abs(~vec4<i32>(-4076i, -2147483647i, 1i, -47217i))), ~2147483647i, _wgslsmith_add_vec3_u32(vec3<u32>(1u, 1u, _wgslsmith_clamp_u32(31023u, u_input.a.x, u_input.a.x)), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, var_0.x, var_0.x), _wgslsmith_mod_vec3_u32(u_input.a, u_input.a))), vec4<f32>(1f, 1f, 1f, 1f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(700f))))), !all(!select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true))), Struct_2(Struct_1(vec2<i32>(i32(-1i) * -23215i, ~u_input.b), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-915f, -510f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-664f, 578f))), any(vec3<bool>(false, false, false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-760f + -1211f) * _wgslsmith_f_op_f32(min(1259f, 670f))), vec4<i32>(1i, 59894i >> (0u % 32u), ~u_input.b, u_input.b)), Struct_1((vec2<i32>(-1i, -20511i) | vec2<i32>(1i, u_input.b)) & -vec2<i32>(22821i, 19010i), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2046f, -1456f) + vec2<f32>(-1062f, 434f)))), (44369i >= u_input.b) != true, -840f, vec4<i32>(~u_input.b, abs(1637i), u_input.b, u_input.b >> (var_0.x % 32u))), countOneBits(_wgslsmith_mod_i32(-u_input.b, 1i)), abs(reverseBits(u_input.a >> (vec3<u32>(29357u, 26800u, u_input.a.x) % vec3<u32>(32u)))), vec4<f32>(_wgslsmith_f_op_f32(abs(-1133f)), 1f, 2577f, 2370f)), 94474u);
    global0 = array<vec2<u32>, 5>();
    let var_2 = _wgslsmith_div_f32(var_1.a.a.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1.d.a.d)) - var_1.a.e.x))));
    global0 = array<vec2<u32>, 5>();
    return var_0.x;
}

fn func_2(arg_0: vec3<f32>, arg_1: vec2<i32>, arg_2: i32) -> i32 {
    var var_0 = reverseBits(vec2<u32>(u_input.a.x, ~func_3()));
    var var_1 = vec3<u32>(4294967295u, max(var_0.x, ~0u), _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(11648u, 9360u) | vec2<u32>(u_input.a.x, u_input.a.x), u_input.a.yz), vec2<u32>(4294967295u, u_input.a.x)) ^ ~4294967295u);
    let var_2 = -630f;
    var var_3 = vec2<i32>(0i, _wgslsmith_dot_vec3_i32(-(vec3<i32>(u_input.b, arg_1.x, -2147483647i) ^ vec3<i32>(2147483647i, u_input.b, arg_1.x)), ~abs(vec3<i32>(-2147483647i, 63249i, 2743i))) << (1u % 32u));
    let var_4 = (all(vec3<bool>(true, false, any(vec4<bool>(true, false, false, false)))) && !all(select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true)))) != any(vec3<bool>(true, ~u_input.a.x >= ~7489u, ~54326u >= u_input.a.x));
    return -_wgslsmith_mult_i32((_wgslsmith_div_i32(arg_2, arg_1.x) >> ((0u >> (0u % 32u)) % 32u)) & _wgslsmith_add_i32(14882i, _wgslsmith_add_i32(arg_1.x, 2147483647i)), _wgslsmith_mult_i32(_wgslsmith_clamp_i32(u_input.b | u_input.b, arg_2, i32(-1i) * -1i), u_input.b));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_4) -> Struct_2 {
    let var_0 = Struct_1(_wgslsmith_add_vec2_i32(abs(abs(vec2<i32>(arg_1.d.c, 33957i))), select(select(reverseBits(arg_1.c.ww), max(vec2<i32>(arg_0.x, -5736i), arg_0.ww), true), vec2<i32>(u_input.b, 2147483647i), vec2<bool>(true, any(vec3<bool>(true, arg_1.d.b.c, true))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.e.b)), -265f)), ~_wgslsmith_add_u32(4294967295u, ~u_input.a.x) > _wgslsmith_dot_vec4_u32(~vec4<u32>(4489u, 4294967295u, 4294967295u, 41257u), min(vec4<u32>(u_input.a.x, u_input.a.x, arg_1.d.d.x, arg_1.e.a.d.x), vec4<u32>(u_input.a.x, arg_1.e.a.d.x, 41585u, arg_1.e.e)) & vec4<u32>(arg_1.d.d.x, u_input.a.x, 1u, arg_1.d.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(734f + arg_1.e.a.a.d))), arg_1.a)), _wgslsmith_mod_vec4_i32(vec4<i32>(~u_input.b, -2147483647i, arg_1.d.b.e.x, _wgslsmith_mult_i32(arg_1.e.a.c, -1i)) << ((vec4<u32>(1u, 23678u, u_input.a.x, 7807u) << (~vec4<u32>(u_input.a.x, 0u, 1u, 4294967295u) % vec4<u32>(32u))) % vec4<u32>(32u)), arg_0 | vec4<i32>(1i, -u_input.b, arg_0.x, -arg_1.c.x)));
    global0 = array<vec2<u32>, 5>();
    global0 = array<vec2<u32>, 5>();
    var var_1 = Struct_2(Struct_1(vec2<i32>(-18983i, u_input.b), vec2<f32>(-586f, 604f), true, -1000f, firstTrailingBit(var_0.e)), var_0, u_input.b, arg_1.d.d, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(arg_1.d.e, vec4<f32>(var_0.b.x, 515f, -716f, arg_1.a), var_0.c)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-697f, -1035f, arg_1.d.e.x, -1243f)))))));
    var var_2 = !(!(50940i >= (~arg_0.x & -u_input.b)));
    return arg_1.e.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-116f, -311f, -287f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(true, Struct_1(vec2<i32>(u_input.b, 2147483647i), vec2<f32>(873f, -832f), true, -401f, vec4<i32>(u_input.b, u_input.b, 40051i, u_input.b)), u_input.a.x)))));
    var var_1 = -(~(-u_input.b));
    var var_2 = func_4(-vec4<i32>(select(u_input.b, ~u_input.b, u_input.a.x == u_input.a.x), u_input.b, func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(976f, -1725f, var_0.x) * vec3<f32>(var_0.x, var_0.x, var_0.x)), _wgslsmith_div_vec2_i32(vec2<i32>(-1115i, u_input.b), vec2<i32>(u_input.b, u_input.b)), -u_input.b), u_input.b), Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.x)))), all(select(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false)), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true)), vec3<bool>(false, false, false))), -_wgslsmith_clamp_vec4_i32(vec4<i32>(0i, -32675i, u_input.b, -8093i) << (vec4<u32>(62123u, u_input.a.x, 37429u, u_input.a.x) % vec4<u32>(32u)), abs(vec4<i32>(39180i, u_input.b, u_input.b, u_input.b)), vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b) & vec4<i32>(2147483647i, u_input.b, -2147483647i, 2147483647i)), Struct_2(Struct_1(vec2<i32>(1i, u_input.b), var_0.zy, true, _wgslsmith_f_op_f32(f32(-1f) * -383f), ~vec4<i32>(45965i, -1i, u_input.b, u_input.b)), Struct_1(vec2<i32>(u_input.b, -33046i), _wgslsmith_f_op_vec2_f32(-var_0.zx), true, _wgslsmith_f_op_f32(var_0.x - 328f), vec4<i32>(17162i, u_input.b, u_input.b, u_input.b)), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, 0i), vec2<i32>(u_input.b, -2147483647i)) ^ _wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.b, 15680i, u_input.b), vec4<i32>(0i, 2147483647i, u_input.b, u_input.b)), ~abs(u_input.a), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -340f), _wgslsmith_f_op_f32(max(397f, -410f)), _wgslsmith_div_f32(-1921f, var_0.x), var_0.x)), Struct_3(Struct_2(Struct_1(vec2<i32>(u_input.b, u_input.b), var_0.zx, true, -1000f, vec4<i32>(0i, u_input.b, u_input.b, u_input.b)), Struct_1(vec2<i32>(-1i, -1i), var_0.xx, false, var_0.x, vec4<i32>(10692i, -1i, 2147483647i, u_input.b)), -1i, _wgslsmith_add_vec3_u32(vec3<u32>(1u, u_input.a.x, u_input.a.x), vec3<u32>(8781u, u_input.a.x, 7557u)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, var_0.x, 2025f, var_0.x), vec4<f32>(1000f, -1120f, -757f, var_0.x), true))), var_0.x, select(any(vec3<bool>(false, false, true)), true, true), Struct_2(Struct_1(vec2<i32>(u_input.b, 0i), vec2<f32>(1171f, var_0.x), true, var_0.x, vec4<i32>(-18126i, u_input.b, -2147483647i, 26989i)), Struct_1(vec2<i32>(u_input.b, u_input.b), vec2<f32>(var_0.x, var_0.x), true, 332f, vec4<i32>(-11872i, -60219i, u_input.b, u_input.b)), u_input.b, ~u_input.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 572f, -407f, var_0.x))), ~min(12034u, 39739u))));
    let var_3 = var_2.c;
    global0 = array<vec2<u32>, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.e.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.x))))), ~(var_2.d ^ var_2.d), select(~vec3<u32>(u_input.a.x, 0u, u_input.a.x) & _wgslsmith_div_vec3_u32(abs(vec3<u32>(var_2.d.x, 24851u, 4294967295u)), u_input.a), u_input.a, 1u <= var_2.d.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(1000f, _wgslsmith_div_f32(var_2.e.x, var_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -2184f), _wgslsmith_f_op_f32(step(var_2.b.d, _wgslsmith_div_f32(var_0.x, 2006f)))) * _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-var_2.e.x), _wgslsmith_f_op_f32(f32(-1f) * -2453f), _wgslsmith_f_op_f32(f32(-1f) * -518f))))));
}

