struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec4<bool>,
    e: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 24> = array<i32, 24>(18785i, -1039i, 0i, 2147483647i, 1i, 35190i, -97045i, 0i, -25750i, -18773i, 1168i, 1i, -1i, 20735i, 0i, 79516i, i32(-2147483648), -1i, i32(-2147483648), -52815i, 6541i, 2147483647i, i32(-2147483648), 0i);

var<private> global1: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(727f, vec3<u32>(0u, 4300u, 47986u), vec4<u32>(17602u, 0u, 88114u, 1u), vec4<bool>(false, true, false, true), 17336i), Struct_1(1306f, vec3<u32>(6293u, 1u, 29927u), vec4<u32>(14685u, 85180u, 42189u, 1u), vec4<bool>(false, true, true, false), 64401i), Struct_1(-2063f, vec3<u32>(4294967295u, 4294967295u, 33363u), vec4<u32>(4294967295u, 1u, 1u, 44003u), vec4<bool>(true, false, true, false), -1i), Struct_1(-1000f, vec3<u32>(20654u, 10138u, 18609u), vec4<u32>(35389u, 66570u, 1u, 0u), vec4<bool>(true, true, true, true), 18298i), Struct_1(585f, vec3<u32>(23224u, 14691u, 0u), vec4<u32>(32702u, 0u, 0u, 80114u), vec4<bool>(true, true, false, false), 1i), Struct_1(-228f, vec3<u32>(4294967295u, 24382u, 4294967295u), vec4<u32>(0u, 4218u, 0u, 1u), vec4<bool>(true, false, true, true), -1i), Struct_1(641f, vec3<u32>(73702u, 47507u, 33639u), vec4<u32>(4294967295u, 0u, 47448u, 4294967295u), vec4<bool>(false, false, true, false), -83676i), Struct_1(-145f, vec3<u32>(0u, 26927u, 27103u), vec4<u32>(9330u, 4294967295u, 1u, 0u), vec4<bool>(true, false, true, true), 6958i), Struct_1(886f, vec3<u32>(43461u, 34804u, 0u), vec4<u32>(8884u, 6898u, 1u, 91232u), vec4<bool>(false, true, true, false), 1i), Struct_1(201f, vec3<u32>(1u, 19605u, 9370u), vec4<u32>(11894u, 44010u, 0u, 47924u), vec4<bool>(true, true, true, true), 1i), Struct_1(-1241f, vec3<u32>(0u, 4294967295u, 16178u), vec4<u32>(68342u, 1u, 32668u, 16292u), vec4<bool>(true, true, false, false), -23795i), Struct_1(559f, vec3<u32>(4294967295u, 8911u, 4294967295u), vec4<u32>(1u, 0u, 25671u, 0u), vec4<bool>(true, true, true, false), i32(-2147483648)), Struct_1(1118f, vec3<u32>(104942u, 58188u, 1u), vec4<u32>(1u, 37120u, 0u, 4294967295u), vec4<bool>(false, false, false, true), -51235i), Struct_1(316f, vec3<u32>(4294967295u, 4294967295u, 1u), vec4<u32>(0u, 6773u, 7608u, 0u), vec4<bool>(true, true, true, false), 2147483647i), Struct_1(1608f, vec3<u32>(47023u, 1u, 1u), vec4<u32>(31425u, 0u, 68212u, 15416u), vec4<bool>(false, true, false, false), -1i), Struct_1(1860f, vec3<u32>(4294967295u, 43852u, 4294967295u), vec4<u32>(34505u, 0u, 31367u, 35211u), vec4<bool>(true, false, true, true), 0i), Struct_1(683f, vec3<u32>(28102u, 7471u, 0u), vec4<u32>(6667u, 3827u, 27279u, 46314u), vec4<bool>(true, true, false, false), 1i));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: i32, arg_1: f32) -> u32 {
    let var_0 = Struct_1(arg_1, select(min(~reverseBits(vec3<u32>(u_input.a.x, 1u, u_input.a.x)), max(vec3<u32>(41050u, u_input.a.x, u_input.a.x), countOneBits(vec3<u32>(u_input.a.x, 18997u, 4294967295u)))), vec3<u32>(_wgslsmith_add_u32(u_input.a.x, u_input.a.x) & u_input.a.x, 0u >> (u_input.a.x % 32u), ~(~u_input.a.x)), select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true), vec3<bool>(true, true, select(false, false, false)), false)), abs(max((vec4<u32>(1u, 4294967295u, 70287u, u_input.a.x) | vec4<u32>(34580u, u_input.a.x, u_input.a.x, u_input.a.x)) & firstLeadingBit(vec4<u32>(u_input.a.x, 60964u, u_input.a.x, u_input.a.x)), firstLeadingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 1u), vec4<u32>(31244u, u_input.a.x, u_input.a.x, 4294967295u), vec4<u32>(u_input.a.x, 40831u, u_input.a.x, 41179u))))), vec4<bool>(any(!select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true))), any(vec3<bool>(true, true, true)) & all(vec3<bool>(true, true, true)), arg_1 > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) + _wgslsmith_div_f32(583f, arg_1)), 2147483647i > -_wgslsmith_add_i32(arg_0, global0[_wgslsmith_index_u32(0u, 24u)])), ~(-_wgslsmith_mult_i32(~11768i, global0[_wgslsmith_index_u32(3083u, 24u)])));
    var var_1 = _wgslsmith_clamp_u32(var_0.b.x, ~(var_0.c.x << (1u % 32u)), abs(var_0.c.x));
    global1 = array<Struct_1, 17>();
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1284f))), var_0.b, ~firstTrailingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, 25250u, 30480u, 44192u), max(vec4<u32>(var_0.b.x, 0u, 4294967295u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, var_0.c.x, u_input.a.x)))), var_0.d, -1i);
    var var_3 = var_2.a;
    return 0u;
}

fn func_4(arg_0: vec3<f32>, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: bool) -> vec4<i32> {
    global1 = array<Struct_1, 17>();
    let var_0 = !vec3<bool>(arg_2.d.x || true, false, !(arg_2.a < arg_2.a) != !arg_2.d.x);
    let var_1 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~arg_1, select(_wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(u_input.a, vec2<u32>(arg_1.x, 23996u) >> (arg_1 % vec2<u32>(32u)), arg_1), ~vec2<u32>(0u, u_input.a.x)), select(u_input.a, ~(vec2<u32>(4294967295u, 263u) & u_input.a), vec2<bool>(arg_2.d.x, arg_2.d.x || false)), !(!var_0.yy))), 17u)];
    var var_2 = -(~(~var_1.e));
    global0 = array<i32, 24>();
    return (vec4<i32>(~0i, (global0[_wgslsmith_index_u32(1u, 24u)] ^ 11309i) & _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.e, -23549i, var_1.e, -395i), u_input.b), reverseBits(-20809i), _wgslsmith_mod_i32(u_input.b.x ^ 14758i, 50805i)) << (_wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(select(var_1.c, vec4<u32>(4294967295u, u_input.a.x, 18547u, u_input.a.x), vec4<bool>(true, true, true, false)), vec4<u32>(arg_2.b.x, arg_1.x, arg_2.c.x, arg_2.c.x)), vec4<u32>(~arg_1.x, _wgslsmith_mod_u32(arg_2.c.x, 5114u), _wgslsmith_dot_vec4_u32(vec4<u32>(47583u, arg_1.x, arg_2.b.x, 85192u), var_1.c), u_input.a.x)) % vec4<u32>(32u))) >> (vec4<u32>(firstLeadingBit(1u), arg_2.c.x, arg_2.c.x, 4845u) % vec4<u32>(32u));
}

fn func_2() -> vec3<bool> {
    global1 = array<Struct_1, 17>();
    global1 = array<Struct_1, 17>();
    let var_0 = func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-907f, 1000f, _wgslsmith_f_op_f32(trunc(1385f))))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1972f), _wgslsmith_f_op_f32(-1105f + 1322f), _wgslsmith_f_op_f32(175f - -1000f)) + vec3<f32>(_wgslsmith_f_op_f32(-137f * -706f), 850f, _wgslsmith_f_op_f32(f32(-1f) * -332f)))), ~u_input.a, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(2432f, -590f))), vec3<u32>(func_3(-47541i | global0[_wgslsmith_index_u32(u_input.a.x, 24u)], _wgslsmith_f_op_f32(f32(-1f) * -1000f)), u_input.a.x, ~(u_input.a.x & 0u)), max(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 1u) ^ vec4<u32>(u_input.a.x, 17401u, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, 4294967295u, 56322u, 2420u)) ^ max(vec4<u32>(u_input.a.x, 0u, u_input.a.x, 77766u), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, 0u, u_input.a.x, 0u), vec4<u32>(u_input.a.x, u_input.a.x, 60604u, 42187u))), vec4<bool>(~4546u == select(u_input.a.x, 59575u, true), !(u_input.a.x == u_input.a.x), select(any(vec2<bool>(true, true)), true, 0u >= u_input.a.x), all(vec4<bool>(false, true, true, false))), _wgslsmith_mod_i32(-(i32(-1i) * -28317i), min(reverseBits(u_input.b.x), -24212i))), select(true, false, false));
    return select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, all(vec2<bool>(true, true)), true), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), true)), vec3<bool>(true, !all(vec3<bool>(false, false, false)), true), true), vec3<bool>(true, true, true), all(select(vec3<bool>(true, true, true), vec3<bool>(false, all(vec3<bool>(true, true, false)), true), true)));
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: u32) -> u32 {
    var var_0 = select(func_2(), arg_1.d.wwx, !((arg_1.c.x | _wgslsmith_mult_u32(1u, 17608u)) < u_input.a.x));
    var_0 = vec3<bool>(any(select(var_0.yz, !select(var_0.xy, var_0.xz, arg_1.d.yx), arg_1.d.x)), true, var_0.x);
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(835f))), _wgslsmith_f_op_f32(1000f - -249f)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_1.a, -388f, 647f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-131f, -1077f, 735f)), arg_1.d.x)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-730f, -131f, 854f)))), vec3<bool>(var_0.x, arg_0, true)))));
    var_1 = vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(1029f)))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-406f, var_1.x))))), _wgslsmith_f_op_f32(var_1.x + var_1.x), var_1.x);
    let var_2 = Struct_1(227f, vec3<u32>(func_3(~(~arg_1.e), _wgslsmith_f_op_f32(arg_1.a + _wgslsmith_f_op_f32(var_1.x + var_1.x))), 5580u, u_input.a.x ^ _wgslsmith_sub_u32(0u, func_3(-1i, -1259f))), vec4<u32>(~0u, arg_1.c.x, _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 128182u), max(u_input.a, vec2<u32>(u_input.a.x, 25049u))), ~arg_1.b.x), firstLeadingBit(arg_1.c.x)), vec4<bool>(!all(arg_1.d.yy), var_0.x, func_2().x, true), -(_wgslsmith_div_i32(u_input.b.x, 7855i << (u_input.a.x % 32u)) ^ (i32(-1i) * -global0[_wgslsmith_index_u32(arg_1.c.x, 24u)])));
    return ~arg_1.b.x;
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_1) -> Struct_1 {
    global1 = array<Struct_1, 17>();
    var var_0 = -vec4<i32>(~(~(-20021i)), arg_1.e, -u_input.b.x, _wgslsmith_dot_vec2_i32(abs(min(vec2<i32>(arg_1.e, global0[_wgslsmith_index_u32(40350u, 24u)]), u_input.b.yw)), _wgslsmith_mult_vec2_i32(-u_input.b.wx, func_4(vec3<f32>(951f, -1196f, arg_1.a), vec2<u32>(arg_0.x, 42912u), Struct_1(-108f, vec3<u32>(arg_0.x, 30897u, 0u), vec4<u32>(25196u, 98070u, 21577u, u_input.a.x), arg_1.d, arg_1.e), true).xz)));
    var_0 = u_input.b;
    global0 = array<i32, 24>();
    var var_1 = vec3<bool>(true, true, all(select(!(!vec4<bool>(true, arg_1.d.x, arg_1.d.x, true)), arg_1.d, true)));
    return global1[_wgslsmith_index_u32(firstLeadingBit(~_wgslsmith_sub_u32(u_input.a.x, ~u_input.a.x)), 17u)];
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 24>();
    let var_0 = u_input.b;
    var var_1 = func_5(abs(vec3<u32>(~(~13225u), _wgslsmith_dot_vec3_u32(vec3<u32>(55878u, 14667u, u_input.a.x), ~vec3<u32>(u_input.a.x, 1u, 14496u)), _wgslsmith_mod_u32(0u, u_input.a.x ^ 1u))), Struct_1(_wgslsmith_f_op_f32(select(1879f, -2215f, all(vec3<bool>(true, true, true)))), _wgslsmith_div_vec3_u32(vec3<u32>(52211u, min(u_input.a.x, 29721u), _wgslsmith_clamp_u32(50926u, 0u, u_input.a.x)), _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 0u, u_input.a.x), ~vec3<u32>(10483u, 35404u, u_input.a.x))), vec4<u32>(_wgslsmith_mult_u32(u_input.a.x, u_input.a.x), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 72488u, 36661u, 1u), vec4<u32>(u_input.a.x, 1u, u_input.a.x, 1u)) & u_input.a.x, ~u_input.a.x, func_1(true, global1[_wgslsmith_index_u32(firstTrailingBit(0u), 17u)], ~u_input.a.x)), vec4<bool>(1i >= var_0.x, false, true, !(0u <= u_input.a.x)), countOneBits(_wgslsmith_mult_i32(1i, global0[_wgslsmith_index_u32(52885u, 24u)]) | reverseBits(0i))));
    let var_2 = !var_1.d.x;
    let var_3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(var_1.a, var_1.a)))) + -245f) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.a)))), var_1.a));
    var var_4 = global1[_wgslsmith_index_u32(u_input.a.x, 17u)];
    var var_5 = _wgslsmith_div_i32(_wgslsmith_mult_i32(-(~global0[_wgslsmith_index_u32(23234u, 24u)]), -_wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(27325u, 24u)], var_1.e, 25933i)), global0[_wgslsmith_index_u32(26050u, 24u)]) <= max(var_4.e | -42491i, abs(~(-2147483647i & global0[_wgslsmith_index_u32(u_input.a.x, 24u)])));
    let var_6 = ~(~(~_wgslsmith_mult_vec4_u32(vec4<u32>(34088u, var_4.b.x, u_input.a.x, var_1.c.x), var_1.c))) ^ ~_wgslsmith_mod_vec4_u32(var_4.c, firstLeadingBit(vec4<u32>(0u, u_input.a.x, 1u, u_input.a.x)));
    var var_7 = Struct_1(1414f, select(~max(vec3<u32>(56704u, 1u, 68121u), ~vec3<u32>(var_4.b.x, var_6.x, 79621u)), vec3<u32>(0u, u_input.a.x, var_4.b.x), false), ~var_1.c, vec4<bool>(true, !(!(var_4.d.x | false)), all(vec4<bool>(!var_2, true, true, false)), !(!var_2)), ~abs(_wgslsmith_dot_vec4_i32(u_input.b, -vec4<i32>(var_1.e, -12167i, var_4.e, var_4.e))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec2_u32(~func_5(var_1.c.wyz, func_5(var_7.b, Struct_1(647f, vec3<u32>(var_4.c.x, 1u, u_input.a.x), var_1.c, var_4.d, 1i))).c.xw, _wgslsmith_mult_vec2_u32(vec2<u32>(~var_6.x, firstTrailingBit(1u)), var_6.ww), countOneBits(~vec2<u32>(4294967295u, 68u))), var_6.xz, (1u & var_7.c.x) << (~func_5(_wgslsmith_div_vec3_u32(var_6.zyz, vec3<u32>(1u, 0u, 1u)), Struct_1(var_1.a, vec3<u32>(56482u, 10179u, var_1.c.x), vec4<u32>(var_7.c.x, 16770u, 0u, var_1.b.x), var_1.d, u_input.b.x)).c.x % 32u));
}

