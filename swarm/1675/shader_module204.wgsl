struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<u32>,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: u32,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<f32>,
    c: vec3<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 41430u;

var<private> global1: array<Struct_2, 23>;

var<private> global2: array<i32, 20>;

var<private> global3: array<vec4<u32>, 32> = array<vec4<u32>, 32>(vec4<u32>(0u, 1u, 39092u, 0u), vec4<u32>(13067u, 0u, 4294967295u, 1u), vec4<u32>(2719u, 4294967295u, 101748u, 4294967295u), vec4<u32>(0u, 56616u, 52476u, 17545u), vec4<u32>(0u, 0u, 26548u, 4294967295u), vec4<u32>(32095u, 83282u, 67739u, 4294967295u), vec4<u32>(5501u, 19874u, 0u, 88855u), vec4<u32>(0u, 1u, 52477u, 3295u), vec4<u32>(1u, 23707u, 87792u, 77631u), vec4<u32>(0u, 0u, 35549u, 16920u), vec4<u32>(62754u, 2070u, 52125u, 20277u), vec4<u32>(14081u, 4294967295u, 1u, 0u), vec4<u32>(31480u, 4294967295u, 0u, 4294967295u), vec4<u32>(77799u, 21992u, 4294967295u, 4294967295u), vec4<u32>(1u, 1638u, 1u, 30707u), vec4<u32>(87037u, 0u, 39576u, 0u), vec4<u32>(71142u, 18150u, 0u, 1u), vec4<u32>(1u, 30478u, 77183u, 4294967295u), vec4<u32>(1u, 33835u, 35769u, 50803u), vec4<u32>(4294967295u, 0u, 4294967295u, 92373u), vec4<u32>(27269u, 1u, 4294967295u, 49927u), vec4<u32>(34217u, 4294967295u, 28550u, 4294967295u), vec4<u32>(1u, 63954u, 0u, 34372u), vec4<u32>(4294967295u, 1u, 55195u, 0u), vec4<u32>(0u, 4294967295u, 1u, 0u), vec4<u32>(82544u, 1u, 1u, 1u), vec4<u32>(4294967295u, 13901u, 8882u, 1u), vec4<u32>(64787u, 0u, 64242u, 37879u), vec4<u32>(28872u, 4294967295u, 0u, 0u), vec4<u32>(8001u, 3103u, 20896u, 4294967295u), vec4<u32>(0u, 1u, 4294967295u, 5618u), vec4<u32>(4294967295u, 15995u, 57274u, 5301u));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32) -> i32 {
    global0 = ~((countOneBits(u_input.a.x) >> (1u % 32u)) & 1u);
    global2 = array<i32, 20>();
    var var_0 = !(!(!all(vec4<bool>(true, true, true, true))));
    let var_1 = firstTrailingBit(1u);
    var var_2 = i32(-1i) * -_wgslsmith_div_i32(8079i, abs(u_input.e));
    return -reverseBits(u_input.b.x);
}

fn func_2(arg_0: f32, arg_1: vec4<i32>, arg_2: f32, arg_3: f32) -> Struct_2 {
    var var_0 = u_input.c;
    let var_1 = Struct_1(func_3(2313u), select(select(select(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), vec3<bool>(true, true, u_input.a.x >= u_input.c)), !(!select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true)), any(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), true)))), !(!vec3<bool>(u_input.c >= 7565u, any(vec2<bool>(true, true)), true)));
    global0 = min(~4294967295u, 0u);
    let var_2 = select(vec2<bool>(false, u_input.c > u_input.a.x), select(vec2<bool>(any(select(vec4<bool>(var_1.c.x, true, false, var_1.c.x), vec4<bool>(var_1.c.x, true, true, true), true)), true || (var_1.b.x & false)), !(!select(var_1.c.xz, vec2<bool>(var_1.c.x, var_1.b.x), vec2<bool>(true, false))), var_1.b.x), !(!(u_input.a.x < _wgslsmith_sub_u32(u_input.c, 18604u))));
    let var_3 = arg_1;
    return Struct_2(var_1, var_1, u_input.a.yy, Struct_1(firstLeadingBit(_wgslsmith_mult_i32(abs(global2[_wgslsmith_index_u32(u_input.c, 20u)]), 7959i)), vec3<bool>(!var_1.c.x, var_2.x, var_1.b.x), select(vec3<bool>(true, any(vec2<bool>(var_1.c.x, var_2.x)), false), var_1.b, var_2.x)), var_1);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: f32) -> Struct_2 {
    global3 = array<vec4<u32>, 32>();
    global3 = array<vec4<u32>, 32>();
    var var_0 = arg_0.d;
    let var_1 = arg_1.d.b.x;
    global2 = array<i32, 20>();
    return Struct_2(Struct_1(u_input.b.x, !func_2(_wgslsmith_div_f32(-1957f, arg_2), firstLeadingBit(vec4<i32>(1i, var_0.a, -14801i, 0i)), -1078f, arg_2).d.c, arg_1.a.c), arg_0.e, ~vec2<u32>(select(_wgslsmith_clamp_u32(13992u, 4294967295u, 15563u), u_input.c & u_input.c, true), firstLeadingBit(u_input.a.x)), Struct_1(u_input.b.x, arg_1.b.c, !func_2(-1089f, ~vec4<i32>(2147483647i, -5746i, 2147483647i, 0i), _wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(arg_2 + 576f)).e.b), arg_0.b);
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1, arg_2: u32) -> bool {
    let var_0 = func_4(func_2(422f, abs(select(vec4<i32>(arg_0.b.a, 1i, global2[_wgslsmith_index_u32(arg_0.c.x, 20u)], -1i), vec4<i32>(-1i, arg_0.d.a, 77677i, 0i), vec4<bool>(arg_0.a.c.x, arg_0.e.c.x, false, false))) ^ ~_wgslsmith_sub_vec4_i32(vec4<i32>(1i, u_input.d.x, 19128i, u_input.e), vec4<i32>(49245i, -40832i, arg_1.a, global2[_wgslsmith_index_u32(1021u, 20u)])), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(219f)) + _wgslsmith_f_op_f32(trunc(-458f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-168f + 998f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), Struct_2(func_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(1241f)), 1627f)), _wgslsmith_clamp_vec4_i32(~vec4<i32>(-14394i, arg_0.e.a, u_input.b.x, -2147483647i), -vec4<i32>(arg_0.a.a, arg_0.e.a, global2[_wgslsmith_index_u32(1u, 20u)], -2147483647i), ~vec4<i32>(arg_1.a, arg_0.a.a, -2147483647i, arg_1.a)), _wgslsmith_f_op_f32(f32(-1f) * -898f), _wgslsmith_f_op_f32(f32(-1f) * -1879f)).e, arg_1, ~vec2<u32>(~arg_0.c.x, arg_0.c.x), func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1379f * 1303f) - _wgslsmith_f_op_f32(-490f * 724f)), ~vec4<i32>(-1i, -1i, arg_1.a, arg_0.d.a), _wgslsmith_f_op_f32(step(-1108f, 780f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-541f)))).d, Struct_1(select(firstLeadingBit(u_input.b.x), 2147483647i, arg_2 < 21473u), arg_0.e.c, arg_0.e.c)), _wgslsmith_f_op_f32(1109f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1115f + 882f)))));
    let var_1 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1194f)), ~select(-vec4<i32>(arg_0.a.a, u_input.b.x, u_input.e, u_input.e), ~firstTrailingBit(vec4<i32>(26669i, -2147483647i, arg_1.a, global2[_wgslsmith_index_u32(0u, 20u)])), !(!vec4<bool>(false, false, false, arg_1.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-202f, 1091f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(137f, -765f))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -613f)))));
    var var_2 = var_1.d.b;
    let var_3 = Struct_2(Struct_1(arg_1.a, !vec3<bool>(true, !arg_0.d.b.x, var_1.b.b.x), !var_0.e.c), func_4(Struct_2(arg_0.a, func_4(func_4(Struct_2(arg_1, arg_1, arg_0.c, var_1.e, Struct_1(var_1.b.a, var_0.b.c, vec3<bool>(var_0.b.b.x, false, var_1.b.c.x))), arg_0, 2459f), func_2(394f, vec4<i32>(2147483647i, 0i, -55149i, -2147483647i), -136f, 220f), _wgslsmith_f_op_f32(301f - 103f)).b, max(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(1u, var_0.c.x)) ^ _wgslsmith_add_vec2_u32(arg_0.c, vec2<u32>(1u, 4294967295u)), Struct_1(max(arg_1.a, var_0.e.a), vec3<bool>(var_2.x, var_0.e.b.x, var_2.x), !arg_1.b), var_0.a), Struct_2(var_0.b, Struct_1(u_input.b.x, vec3<bool>(false, arg_0.d.c.x, var_1.e.c.x), arg_1.c), vec2<u32>(u_input.a.x, 4294967295u), var_1.e, arg_0.a), _wgslsmith_f_op_f32(f32(-1f) * -926f)).e, max(_wgslsmith_mod_vec2_u32(~var_1.c, vec2<u32>(arg_0.c.x, arg_2)) ^ ~(~var_0.c), abs(~min(arg_0.c, u_input.a.zz))), Struct_1(-_wgslsmith_dot_vec3_i32(vec3<i32>(12147i, u_input.b.x, 50507i), vec3<i32>(global2[_wgslsmith_index_u32(34924u, 20u)], var_1.b.a, 19520i)), var_0.b.c, func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-329f - 1714f) * _wgslsmith_f_op_f32(round(-675f))), vec4<i32>(-1i << (var_1.c.x % 32u), global2[_wgslsmith_index_u32(28145u, 20u)] | -25064i, 2147483647i, ~(-1i)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-781f, -917f)), _wgslsmith_f_op_f32(round(-1304f)))), 778f).e.c), Struct_1(~min(-23450i, i32(-1i) * -2147483647i), vec3<bool>(true, var_1.b.a > -16242i, ~2147483647i <= _wgslsmith_mod_i32(2147483647i, global2[_wgslsmith_index_u32(4294967295u, 20u)])), vec3<bool>(var_1.a.c.x, false, true)));
    let var_4 = ~4020u;
    return any(select(vec4<bool>(true, true, true, true), select(select(!vec4<bool>(true, true, var_1.a.b.x, var_1.b.b.x), !vec4<bool>(true, arg_0.a.c.x, false, false), !vec4<bool>(var_0.a.b.x, true, var_1.e.b.x, var_2.x)), select(vec4<bool>(false, true, var_1.b.b.x, true), !vec4<bool>(var_3.a.c.x, false, arg_0.d.c.x, false), vec4<bool>(var_1.b.b.x, true, true, var_0.d.c.x)), arg_0.d.c.x), !(true || all(var_1.d.b.yy))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2) -> i32 {
    global2 = array<i32, 20>();
    let var_0 = -2398f;
    var var_1 = ~33533u;
    var_1 = _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(func_2(1304f, vec4<i32>(58238i, 2147483647i, arg_0.a, 0i), 170f, var_0).c, max(~vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(u_input.a.x, 0u))) << (u_input.c % 32u), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(u_input.a.xyz, vec3<u32>(21710u, 0u, 1u)), 0u) >> (~(~arg_2.c.x) % 32u));
    global3 = array<vec4<u32>, 32>();
    return 0i;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<i32, 20>();
    let var_0 = ~func_5(Struct_1(~0i, vec3<bool>(true, false, func_1(Struct_2(Struct_1(u_input.b.x, vec3<bool>(true, false, true), vec3<bool>(true, true, true)), Struct_1(-1i, vec3<bool>(true, false, false), vec3<bool>(true, false, false)), vec2<u32>(52834u, 4294967295u), Struct_1(u_input.b.x, vec3<bool>(true, false, true), vec3<bool>(true, false, true)), Struct_1(-2147483647i, vec3<bool>(false, false, false), vec3<bool>(false, false, true))), Struct_1(global2[_wgslsmith_index_u32(u_input.a.x, 20u)], vec3<bool>(false, false, false), vec3<bool>(true, true, true)), 18861u)), !select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), false)), Struct_1(select(~(-79560i), 28437i, true), select(func_2(588f, vec4<i32>(2147483647i, global2[_wgslsmith_index_u32(1u, 20u)], -17629i, 2147483647i), 432f, 1466f).e.c, vec3<bool>(true, true, true), any(vec4<bool>(true, true, true, false))), vec3<bool>(true, true, true)), global1[_wgslsmith_index_u32(~0u, 23u)]);
    let var_1 = func_4(global1[_wgslsmith_index_u32(0u, 23u)], Struct_2(Struct_1(_wgslsmith_sub_i32(~(-22469i), var_0), vec3<bool>(false, true, all(vec2<bool>(false, false))), func_4(func_2(-670f, vec4<i32>(var_0, 9626i, u_input.e, -37273i), 2122f, 832f), Struct_2(Struct_1(global2[_wgslsmith_index_u32(u_input.c, 20u)], vec3<bool>(false, false, false), vec3<bool>(true, true, true)), Struct_1(var_0, vec3<bool>(true, false, false), vec3<bool>(true, false, false)), vec2<u32>(u_input.a.x, 18041u), Struct_1(6018i, vec3<bool>(false, true, false), vec3<bool>(false, true, false)), Struct_1(global2[_wgslsmith_index_u32(u_input.a.x, 20u)], vec3<bool>(false, false, true), vec3<bool>(true, false, true))), _wgslsmith_f_op_f32(1777f - 1309f)).b.b), func_4(func_4(Struct_2(Struct_1(var_0, vec3<bool>(true, false, false), vec3<bool>(true, false, false)), Struct_1(var_0, vec3<bool>(false, true, false), vec3<bool>(true, true, false)), u_input.a.wx, Struct_1(0i, vec3<bool>(false, true, true), vec3<bool>(false, false, true)), Struct_1(-3587i, vec3<bool>(true, true, true), vec3<bool>(false, true, true))), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 23261u, 0u), u_input.a.wzw), 23u)], 1f), func_2(_wgslsmith_f_op_f32(f32(-1f) * -418f), abs(vec4<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 20u)], u_input.e, global2[_wgslsmith_index_u32(4294967295u, 20u)], 2147483647i)), 1351f, 312f), _wgslsmith_div_f32(-407f, _wgslsmith_f_op_f32(step(712f, -966f)))).b, vec2<u32>(21382u, select(u_input.c, _wgslsmith_clamp_u32(u_input.c, 9825u, 1u), true)), Struct_1(u_input.e | 2147483647i, vec3<bool>(true, 1u > u_input.a.x, true), func_2(_wgslsmith_f_op_f32(trunc(-455f)), ~vec4<i32>(var_0, u_input.b.x, var_0, u_input.b.x), -1868f, _wgslsmith_f_op_f32(sign(161f))).d.c), Struct_1(reverseBits(2147483647i), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(470f, 668f)) - -1687f)), _wgslsmith_f_op_f32(step(1689f, -352f))))).d;
    var var_2 = _wgslsmith_clamp_i32(-2147483647i, _wgslsmith_dot_vec4_i32(abs(_wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-12053i, var_0, global2[_wgslsmith_index_u32(70773u, 20u)], 0i), vec4<i32>(global2[_wgslsmith_index_u32(u_input.c, 20u)], 13922i, 5033i, global2[_wgslsmith_index_u32(48887u, 20u)])), min(vec4<i32>(-35740i, -1i, u_input.b.x, global2[_wgslsmith_index_u32(475u, 20u)]), vec4<i32>(var_0, 2147483647i, u_input.b.x, -1i)))), -vec4<i32>(2147483647i, -17851i, u_input.b.x, global2[_wgslsmith_index_u32(u_input.c, 20u)]) & _wgslsmith_sub_vec4_i32(vec4<i32>(var_1.a, global2[_wgslsmith_index_u32(65079u, 20u)], 2176i, 0i), vec4<i32>(var_0, -1i, global2[_wgslsmith_index_u32(u_input.a.x, 20u)], u_input.e))), _wgslsmith_dot_vec3_i32(reverseBits(firstLeadingBit(~vec3<i32>(-2147483647i, -11937i, 2147483647i))), vec3<i32>(34925i, abs(var_1.a), 1i)));
    global0 = firstLeadingBit(~_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(u_input.c, 1u, u_input.a.x, u_input.a.x)) & _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c, u_input.a.x, u_input.a.x, u_input.c), vec4<u32>(u_input.c, 0u, u_input.a.x, 0u), vec4<u32>(u_input.a.x, 86796u, u_input.a.x, u_input.c)), vec4<u32>(4294967295u, 0u, u_input.a.x, u_input.c >> (49609u % 32u))));
    let var_3 = -global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, u_input.c, 12074u, 0u) >> (vec4<u32>(1u, 27454u, 1u, 20213u) % vec4<u32>(32u))), 20u)] >> (0u % 32u);
    global2 = array<i32, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(0u, 32285u, ~abs(u_input.a.x), _wgslsmith_clamp_u32(1u, u_input.a.x, u_input.a.x)), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1f)), _wgslsmith_f_op_f32(f32(-1f) * -878f)), -1000f, _wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1602f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(vec3<f32>(421f, 574f, -1458f), vec3<f32>(357f, 1034f, 1299f))))))), _wgslsmith_sub_i32(reverseBits(u_input.e & global2[_wgslsmith_index_u32(u_input.a.x, 20u)]), -2147483647i));
}

