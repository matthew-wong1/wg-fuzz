struct Struct_1 {
    a: f32,
    b: u32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: vec4<i32>,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 30> = array<vec3<f32>, 30>(vec3<f32>(1000f, 1317f, 708f), vec3<f32>(892f, -1057f, -250f), vec3<f32>(-157f, 619f, 1323f), vec3<f32>(785f, 722f, 1161f), vec3<f32>(394f, 1170f, -403f), vec3<f32>(-444f, -435f, 967f), vec3<f32>(-437f, 642f, -167f), vec3<f32>(-224f, -112f, -261f), vec3<f32>(946f, 403f, 1391f), vec3<f32>(-1114f, 1000f, 759f), vec3<f32>(435f, -1753f, -2126f), vec3<f32>(583f, -511f, -1000f), vec3<f32>(178f, 240f, -1757f), vec3<f32>(-1543f, 1590f, 2236f), vec3<f32>(1187f, -798f, -673f), vec3<f32>(-763f, -106f, -102f), vec3<f32>(1295f, 1000f, 191f), vec3<f32>(1662f, -1145f, -875f), vec3<f32>(-502f, 1000f, -678f), vec3<f32>(-446f, 780f, 537f), vec3<f32>(285f, -829f, 242f), vec3<f32>(436f, -1187f, 2472f), vec3<f32>(-907f, 1423f, -629f), vec3<f32>(-1333f, -1019f, 1197f), vec3<f32>(1472f, -904f, 446f), vec3<f32>(1000f, -821f, -536f), vec3<f32>(-718f, -439f, -1000f), vec3<f32>(-1441f, 1000f, 1925f), vec3<f32>(-494f, -426f, -1355f), vec3<f32>(-1461f, 805f, -1737f));

var<private> global1: array<vec3<bool>, 20> = array<vec3<bool>, 20>(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true));

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: bool) -> u32 {
    return u_input.a;
}

fn func_2(arg_0: i32, arg_1: bool, arg_2: vec3<bool>, arg_3: i32) -> Struct_2 {
    var var_0 = ~51540u;
    var_0 = ~u_input.b;
    var var_1 = 31900u;
    var var_2 = countOneBits(func_3(Struct_2(u_input.a, Struct_1(_wgslsmith_f_op_f32(trunc(-232f)), 4294967295u, select(vec4<bool>(false, arg_1, false, true), vec4<bool>(arg_2.x, arg_1, arg_2.x, false), false)), Struct_1(_wgslsmith_f_op_f32(-2637f * 896f), _wgslsmith_add_u32(u_input.a, 59645u), vec4<bool>(arg_1, arg_2.x, true, arg_1)), ~vec4<i32>(arg_3, 2545i, 2147483647i, 0i), _wgslsmith_f_op_f32(-843f - _wgslsmith_f_op_f32(-580f * -1000f))), false, true));
    var var_3 = Struct_2(u_input.b, Struct_1(-502f, u_input.a, vec4<bool>(arg_1, true, countOneBits(-35163i) >= ~arg_0, -arg_3 == (arg_3 ^ -1i))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(656f * 962f), -279f, 0i > arg_0)) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(521f, -118f))))), 6643u, select(select(select(vec4<bool>(false, false, false, arg_2.x), vec4<bool>(true, true, arg_2.x, false), false), select(vec4<bool>(true, true, arg_1, false), vec4<bool>(arg_1, arg_2.x, true, false), vec4<bool>(true, arg_1, true, true)), select(vec4<bool>(false, arg_1, arg_1, arg_2.x), vec4<bool>(arg_1, arg_2.x, arg_1, arg_1), arg_2.x)), select(vec4<bool>(true, true, arg_1, arg_1), !vec4<bool>(arg_2.x, false, arg_1, false), !vec4<bool>(true, true, true, arg_1)), select(vec4<bool>(true, true, true, true), !vec4<bool>(false, true, arg_1, false), select(vec4<bool>(arg_2.x, true, arg_1, arg_2.x), vec4<bool>(false, arg_2.x, true, false), vec4<bool>(true, false, arg_1, false))))), _wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(-vec4<i32>(-2147483647i, arg_3, -2147483647i, 37607i), vec4<i32>(arg_0, arg_3, 1i, 0i)), ~(vec4<i32>(arg_3, arg_3, -36950i, -1i) & vec4<i32>(arg_0, arg_3, -2147483647i, 33714i)), min(~vec4<i32>(-16682i, -2147483647i, arg_3, 0i), _wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, 2147483647i, arg_3, -11887i), vec4<i32>(-2147483647i, arg_3, arg_3, 34194i)))) & _wgslsmith_mult_vec4_i32(vec4<i32>(0i, -29312i, -1i, 16800i) & (vec4<i32>(1i, -1i, arg_0, -28665i) & vec4<i32>(arg_0, arg_0, arg_3, 28568i)), vec4<i32>(select(arg_0, -1i, true), arg_0, 44204i, ~arg_3)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(708f + -611f))) + _wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-286f - 412f))))));
    return Struct_2(0u, Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1021f), max(73854u, abs(~1768u)), vec4<bool>(max(var_3.c.b, var_3.a) < 4294967295u, arg_2.x, select(arg_2.x, any(var_3.c.c), !var_3.c.c.x), true)), var_3.c, vec4<i32>(~(-36546i), _wgslsmith_mult_i32(var_3.d.x, var_3.d.x), -3115i, 1i), _wgslsmith_f_op_f32(floor(var_3.e)));
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: vec4<f32>) -> u32 {
    var var_0 = min(vec3<u32>(u_input.a, arg_0.c.b, arg_0.a), vec3<u32>(~arg_0.b.b, ~firstLeadingBit(37842u), firstTrailingBit(abs(arg_0.c.b)))) & _wgslsmith_div_vec3_u32(~(~(vec3<u32>(arg_0.b.b, 63274u, u_input.a) ^ vec3<u32>(arg_0.a, u_input.a, arg_0.b.b))), firstTrailingBit(_wgslsmith_div_vec3_u32(abs(vec3<u32>(arg_0.a, 1u, 4294967295u)), vec3<u32>(arg_0.a, arg_0.a, 4294967295u) ^ vec3<u32>(u_input.a, 4294967295u, u_input.b))));
    var var_1 = arg_0.b;
    global1 = array<vec3<bool>, 20>();
    return arg_0.c.b << (~0u % 32u);
}

fn func_5(arg_0: u32, arg_1: u32) -> f32 {
    global1 = array<vec3<bool>, 20>();
    var var_0 = -163f;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_2(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 7998i), vec3<i32>(1i, 1i, 1i)), false, global1[_wgslsmith_index_u32(4294967295u, 20u)], _wgslsmith_clamp_i32(~5392i, abs(-4662i), func_2(-2147483647i, true, global1[_wgslsmith_index_u32(arg_0, 20u)], -12068i).d.x)).b.a) + _wgslsmith_f_op_f32(ceil(1f)));
    global1 = array<vec3<bool>, 20>();
    let var_1 = _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -min(1i, -2147483647i)), vec2<i32>(1i, 1i)) <= _wgslsmith_mod_i32(7288i, ~360i);
    return _wgslsmith_f_op_f32(ceil(-1193f));
}

fn func_1(arg_0: f32, arg_1: vec2<f32>, arg_2: u32, arg_3: i32) -> vec2<i32> {
    var var_0 = 1i;
    let var_1 = vec4<f32>(arg_0, _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_5(func_4(func_2(-1i, false, global1[_wgslsmith_index_u32(1u, 20u)], arg_3), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_3, arg_3, -10526i), vec3<i32>(27880i, -1i, arg_3)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, arg_0, arg_0) + vec4<f32>(981f, 936f, 1378f, arg_1.x))), _wgslsmith_add_u32(arg_2, arg_2))), arg_1.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x * arg_1.x)), 1182f));
    let var_2 = Struct_1(-982f, 4294967295u, vec4<bool>(any(func_2(arg_3, true, func_2(arg_3, false, global1[_wgslsmith_index_u32(u_input.a, 20u)], arg_3).c.c.wyx, arg_3 & -41232i).b.c), true, _wgslsmith_add_u32(~u_input.a, _wgslsmith_mult_u32(4294967295u, 0u)) <= 0u, all(vec4<bool>(2147483647i < arg_3, any(vec3<bool>(true, true, true)), true, true))));
    let var_3 = func_2(1i, var_2.c.x, func_2(i32(-1i) * -2147483647i, false, var_2.c.xxw, arg_3).b.c.wwy, -119872i);
    var var_4 = Struct_1(func_2(arg_3, true, var_2.c.xxz, _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(var_3.d.wy, -vec2<i32>(arg_3, -2147483647i)), min(vec2<i32>(22700i, 1i), var_3.d.xy))).c.a, var_3.c.b, func_2(_wgslsmith_sub_i32(1i, ~0i), all(vec4<bool>(-775f > var_3.c.a, false, true, true)), !(!select(vec3<bool>(true, true, var_2.c.x), global1[_wgslsmith_index_u32(0u, 20u)], true)), ~2147483647i).b.c);
    return min(-vec2<i32>(var_3.d.x, arg_3), _wgslsmith_add_vec2_i32(var_3.d.ww >> ((_wgslsmith_mod_vec2_u32(vec2<u32>(38993u, var_4.b), vec2<u32>(76216u, u_input.a)) | reverseBits(vec2<u32>(0u, 81682u))) % vec2<u32>(32u)), _wgslsmith_div_vec2_i32(var_3.d.wz, min(-vec2<i32>(-30904i, var_3.d.x), ~var_3.d.zz))));
}

fn func_6(arg_0: vec2<i32>, arg_1: u32, arg_2: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_mod_i32(reverseBits(_wgslsmith_mult_i32(arg_0.x, arg_0.x >> (u_input.b % 32u))), arg_0.x) >> (~(~(~countOneBits(arg_2.b))) % 32u);
    global1 = array<vec3<bool>, 20>();
    global0 = array<vec3<f32>, 30>();
    var var_1 = vec3<bool>(_wgslsmith_div_i32(-2147483647i ^ -var_0, arg_0.x) == var_0, (true | any(vec3<bool>(arg_2.c.x, false, false))) || arg_2.c.x, true);
    let var_2 = func_2(arg_0.x, false, !vec3<bool>(func_2(-20612i, arg_0.x == -11668i, vec3<bool>(var_1.x, arg_2.c.x, false), var_0 << (arg_2.b % 32u)).c.c.x, _wgslsmith_f_op_f32(-387f * -133f) >= arg_2.a, var_1.x), ~arg_0.x).c;
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(func_1(_wgslsmith_f_op_f32(158f - _wgslsmith_f_op_f32(step(-1085f, _wgslsmith_f_op_f32(round(-837f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1549f, -433f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1902f, -968f)))), 0u, -14891i), _wgslsmith_dot_vec4_u32(~abs(vec4<u32>(0u, 1u, 47140u, 4294967295u)) >> (vec4<u32>(~0u, u_input.b, ~1u, 16541u) % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(max(vec4<u32>(0u, 0u, 0u, 70016u), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, u_input.b, 78829u, u_input.a), vec4<u32>(u_input.b, 12886u, u_input.b, 50153u))), firstLeadingBit(vec4<u32>(u_input.a, 714u, 30988u, u_input.b)))), Struct_1(1000f, func_4(func_2(select(0i, -23248i, false), true, global1[_wgslsmith_index_u32(u_input.b, 20u)], 1i), select(_wgslsmith_mult_i32(-29771i, 0i), _wgslsmith_dot_vec3_i32(vec3<i32>(4650i, -45502i, -2147483647i), vec3<i32>(-1i, 2147483647i, -2147483647i)), true), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1487f, 1000f, 345f, -606f), vec4<f32>(869f, -162f, 2697f, 934f)) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-448f, -887f, -1566f, 326f), vec4<f32>(-1000f, 1000f, -736f, -1824f))))), vec4<bool>(any(global1[_wgslsmith_index_u32(0u, 20u)]), any(vec2<bool>(false, true)) && (u_input.b > u_input.b), any(vec2<bool>(true, false)), ~25725i >= _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 2354i, 6793i), vec3<i32>(64717i, 2147483647i, 0i)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -710f) * 1131f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a + _wgslsmith_f_op_f32(1000f * var_0.a)))), u_input.b, -_wgslsmith_sub_i32(_wgslsmith_div_i32(1i, 2147483647i), -(~7794i)));
}

