struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: vec4<u32>,
    d: vec4<f32>,
    e: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: f32,
    d: vec4<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<f32>,
    c: bool,
    d: Struct_1,
}

struct Struct_4 {
    a: vec3<u32>,
    b: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: u32, arg_1: Struct_3, arg_2: vec4<u32>, arg_3: vec2<f32>) -> vec4<f32> {
    var var_0 = -1354f;
    var var_1 = Struct_4(_wgslsmith_clamp_vec3_u32(abs(~(~arg_1.d.c.zyw)), arg_1.a.b.c.yzz, arg_2.zzw), i32(-1i) * -77766i);
    var_1 = Struct_4(firstLeadingBit(~vec3<u32>(5051u, 29781u, _wgslsmith_clamp_u32(arg_1.d.c.x, u_input.a, arg_2.x))), _wgslsmith_clamp_i32(1i, var_1.b, var_1.b));
    var_0 = 1316f;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1510f + _wgslsmith_f_op_f32(ceil(arg_1.b.x))))));
    return arg_1.d.d;
}

fn func_2(arg_0: bool) -> Struct_2 {
    var var_0 = u_input.a;
    var_0 = ~_wgslsmith_clamp_u32(62825u, max(~54840u, 1u), u_input.a);
    var var_1 = _wgslsmith_mult_vec2_i32(vec2<i32>(min(-1i, ~(-29621i)), -_wgslsmith_div_i32(-41147i >> (u_input.a % 32u), min(2147483647i, 2147483647i))), _wgslsmith_add_vec2_i32(vec2<i32>(-(i32(-1i) * -9517i), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 0i), -vec2<i32>(14849i, 21006i))), vec2<i32>(-(~0i), 10723i)));
    var var_2 = 9940i < _wgslsmith_dot_vec2_i32(~(~countOneBits(vec2<i32>(var_1.x, -37937i))), -(~vec2<i32>(var_1.x, var_1.x)));
    var var_3 = var_1.x;
    return Struct_2(_wgslsmith_mult_vec2_u32(~(~(vec2<u32>(31771u, 19168u) & vec2<u32>(u_input.a, 15770u))), abs(abs(vec2<u32>(0u, 62964u) | vec2<u32>(u_input.a, u_input.a)))), Struct_1(!vec2<bool>(all(vec2<bool>(true, false)), arg_0 | false), -1229f, ~_wgslsmith_add_vec4_u32(firstTrailingBit(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)), ~vec4<u32>(1u, 32548u, 1u, 76685u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(u_input.a, Struct_3(Struct_2(vec2<u32>(u_input.a, 4294967295u), Struct_1(vec2<bool>(arg_0, arg_0), -1626f, vec4<u32>(1u, u_input.a, u_input.a, 101357u), vec4<f32>(1577f, 1809f, -599f, 1684f), arg_0), -2052f, vec4<bool>(false, false, false, arg_0), Struct_1(vec2<bool>(arg_0, arg_0), -581f, vec4<u32>(4294967295u, 0u, u_input.a, u_input.a), vec4<f32>(-476f, -1301f, -1548f, -899f), false)), vec4<f32>(2228f, 1560f, 1338f, -350f), false, Struct_1(vec2<bool>(false, arg_0), 670f, vec4<u32>(38873u, 120182u, 20259u, u_input.a), vec4<f32>(632f, 652f, -694f, -1975f), arg_0)), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec2<f32>(-844f, 1000f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-401f, 1164f, -432f, -1832f) * vec4<f32>(-1005f, 1385f, -3319f, 1048f)))), true == (true && all(vec3<bool>(arg_0, false, arg_0)))), _wgslsmith_div_f32(_wgslsmith_f_op_vec4_f32(func_3(u_input.a, Struct_3(Struct_2(vec2<u32>(u_input.a, u_input.a), Struct_1(vec2<bool>(true, true), 327f, vec4<u32>(u_input.a, u_input.a, 53254u, u_input.a), vec4<f32>(1141f, 454f, -1539f, 581f), false), 753f, vec4<bool>(arg_0, arg_0, arg_0, arg_0), Struct_1(vec2<bool>(true, arg_0), 123f, vec4<u32>(43768u, 4294967295u, 17905u, 24512u), vec4<f32>(-1174f, -179f, -645f, 439f), false)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1312f, 1323f, -1000f, -944f)), all(vec3<bool>(arg_0, arg_0, arg_0)), Struct_1(vec2<bool>(arg_0, true), 162f, vec4<u32>(u_input.a, 1u, u_input.a, 4294967295u), vec4<f32>(1149f, 119f, -907f, -2112f), arg_0)), vec4<u32>(u_input.a, 19544u, 4294967295u, 4294967295u) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, 1u, u_input.a, 48162u)) % vec4<u32>(32u)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -426f), -1945f))).x, _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(ceil(-1000f)))), select(vec4<bool>(arg_0 & true, all(select(vec4<bool>(arg_0, false, false, true), vec4<bool>(arg_0, arg_0, arg_0, arg_0), true)), false, arg_0), select(select(select(vec4<bool>(arg_0, false, false, false), vec4<bool>(true, false, false, true), arg_0), vec4<bool>(arg_0, true, true, true), all(vec2<bool>(true, arg_0))), !(!vec4<bool>(arg_0, arg_0, arg_0, false)), false), vec4<bool>(any(!vec2<bool>(arg_0, true)), true, ~u_input.a >= ~34876u, arg_0)), Struct_1(!vec2<bool>(all(vec3<bool>(false, false, false)), any(vec4<bool>(true, true, true, arg_0))), 1247f, min(reverseBits(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 30259u, 43766u, u_input.a), vec4<u32>(53484u, u_input.a, u_input.a, 19752u))), countOneBits(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u), vec4<u32>(u_input.a, u_input.a, u_input.a, 84626u)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1368f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-529f)) - _wgslsmith_f_op_f32(f32(-1f) * -582f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(-178f, -1455f)), false));
}

fn func_1(arg_0: Struct_3, arg_1: vec2<i32>, arg_2: f32) -> u32 {
    let var_0 = Struct_3(func_2((select(u_input.a, arg_0.a.b.c.x, true) & _wgslsmith_dot_vec4_u32(arg_0.a.b.c, vec4<u32>(arg_0.d.c.x, 32769u, 66584u, 16290u))) >= ~abs(u_input.a)), arg_0.b, arg_0.c, func_2(false || all(vec3<bool>(arg_0.d.e, false, false))).e);
    var var_1 = 4294967295u;
    let var_2 = -vec3<i32>(arg_1.x, arg_1.x, max(arg_1.x, min(arg_1.x, arg_1.x)) ^ -23727i);
    var_1 = _wgslsmith_mult_u32(max(60512u, 1u), 32866u);
    var_1 = 4294967295u;
    return _wgslsmith_add_u32(46728u, _wgslsmith_mult_u32(4294967295u, arg_0.d.c.x));
}

fn func_4(arg_0: u32) -> vec2<bool> {
    let var_0 = 24568i;
    var var_1 = Struct_3(func_2(!(true || any(vec2<bool>(false, true)))), vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -2333f), _wgslsmith_f_op_f32(max(-636f, 105f)))))), -1000f, _wgslsmith_f_op_f32(max(-1847f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-501f, 2854f, false))))), -575f), true, func_2(true).b);
    let var_2 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1.b.x, _wgslsmith_f_op_f32(-var_1.a.e.d.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_vec4_f32(func_3(var_1.d.c.x >> (25869u % 32u), Struct_3(var_1.a, vec4<f32>(1108f, -576f, -255f, -220f), true, var_1.d), ~vec4<u32>(var_1.d.c.x, var_1.a.b.c.x, 92809u, 23431u), var_1.d.d.yy)).x, _wgslsmith_f_op_f32(round(340f)))), firstLeadingBit(abs(firstLeadingBit(u_input.a))) >= ~arg_0));
    var var_3 = abs(-12673i);
    var_1 = Struct_3(Struct_2(reverseBits(var_1.d.c.xy), var_1.a.b, _wgslsmith_f_op_f32(f32(-1f) * -264f), var_1.a.d, func_2((var_0 << (u_input.a % 32u)) != -var_0).b), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.a.e.d.x, _wgslsmith_f_op_f32(286f - -696f), _wgslsmith_f_op_f32(1f - var_2.x), 284f), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, var_1.d.d.x, var_1.a.c, var_2.x) * vec4<f32>(var_1.d.d.x, 591f, var_1.a.c, 2744f)), vec4<f32>(var_1.b.x, var_2.x, -1000f, var_1.d.b)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(370f, -223f, -1000f, var_1.d.d.x) - vec4<f32>(-778f, 1074f, 1000f, -745f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, var_1.a.c, -409f, 321f) + var_1.a.e.d), select(vec4<bool>(var_1.d.e, true, true, var_1.d.e), var_1.a.d, vec4<bool>(true, true, var_1.c, var_1.c))))), select(all(vec4<bool>(true, false, var_1.c, false)) && true, var_0 < 6891i, any(func_2(var_1.d.e).d.wz)))), !(any(!vec4<bool>(false, false, true, var_1.a.b.e)) && false), func_2(var_1.a.c > var_2.x).e);
    return select(vec2<bool>(false, false), select(var_1.a.b.a, !vec2<bool>(!var_1.c, var_1.a.d.x), !var_1.d.a), any(vec3<bool>(any(select(var_1.a.b.a, vec2<bool>(false, var_1.d.a.x), var_1.c)), !(var_1.d.d.x <= var_1.a.b.b), var_1.d.e)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(func_4(max(func_1(Struct_3(Struct_2(vec2<u32>(u_input.a, u_input.a), Struct_1(vec2<bool>(true, true), -877f, vec4<u32>(4294967295u, u_input.a, 0u, 1u), vec4<f32>(-1000f, -266f, 1177f, -746f), true), -126f, vec4<bool>(true, false, true, true), Struct_1(vec2<bool>(true, false), -565f, vec4<u32>(35941u, 38269u, u_input.a, u_input.a), vec4<f32>(-848f, 663f, -1306f, 245f), true)), vec4<f32>(-896f, -374f, 809f, 957f), false, Struct_1(vec2<bool>(false, false), -734f, vec4<u32>(0u, 4294967295u, u_input.a, u_input.a), vec4<f32>(102f, 327f, -303f, -1028f), false)), vec2<i32>(-1i, 0i), -550f) << (firstTrailingBit(27294u) % 32u), max(u_input.a, 76322u) >> (u_input.a % 32u))), vec2<bool>(true, true), false);
    var_0 = vec2<bool>(!(false != !var_0.x), func_2(func_2(any(vec3<bool>(var_0.x, var_0.x, var_0.x))).e.b >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1411f)) * _wgslsmith_f_op_f32(floor(-276f)))).b.e);
    var var_1 = max(_wgslsmith_add_vec4_i32(abs(vec4<i32>(_wgslsmith_mult_i32(-1i, 2147483647i), 1i >> (u_input.a % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 21061i, 7884i), vec3<i32>(2147483647i, -41509i, 22226i)), _wgslsmith_mult_i32(-21436i, -20848i))), vec4<i32>(abs(min(-9072i, -2147483647i)), _wgslsmith_sub_i32(-1i >> (u_input.a % 32u), i32(-1i) * -10183i), 2147483647i, 10812i)), select(reverseBits(~(-vec4<i32>(-2147483647i, -1i, 3652i, 0i))), -_wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(1i, 0i, -6866i, -1i), vec4<i32>(-1i, 2147483647i, 16310i, 1693i)), -vec4<i32>(-20549i, -1320i, 2147483647i, 2147483647i)), true));
    let var_2 = func_2(func_2(!var_0.x).b.e);
    var var_3 = false;
    let var_4 = firstTrailingBit(27306u);
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b.d.xw, firstLeadingBit(var_1.yxw & (var_1.yzx >> (select(vec3<u32>(67031u, 115054u, 0u), vec3<u32>(1u, var_2.a.x, var_4), var_0.x) % vec3<u32>(32u)))));
}

