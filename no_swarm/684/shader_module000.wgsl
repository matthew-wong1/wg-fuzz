struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: vec2<i32>,
    d: i32,
    e: u32,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: u32,
    c: Struct_1,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: i32,
    d: vec4<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 5>;

var<private> global1: vec3<f32> = vec3<f32>(-265f, -474f, -442f);

var<private> global2: bool = false;

var<private> global3: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(vec4<f32>(516f, -227f, 1322f, 248f), false, vec2<i32>(205i, 24379i), -49159i, 64264u), Struct_1(vec4<f32>(-379f, -960f, 616f, 251f), false, vec2<i32>(36265i, 0i), -1i, 37878u), Struct_1(vec4<f32>(1873f, 843f, 974f, 1000f), false, vec2<i32>(-24667i, -30523i), 2147483647i, 0u), Struct_1(vec4<f32>(442f, -397f, 2278f, -407f), false, vec2<i32>(-31617i, i32(-2147483648)), i32(-2147483648), 18529u), Struct_1(vec4<f32>(-2172f, 1089f, 495f, 299f), true, vec2<i32>(-264i, -890i), -12813i, 19469u), Struct_1(vec4<f32>(634f, -1368f, -999f, 1652f), true, vec2<i32>(-1i, -15302i), 2147483647i, 4294967295u), Struct_1(vec4<f32>(1000f, -1042f, 1084f, -700f), false, vec2<i32>(0i, 13115i), -13036i, 0u), Struct_1(vec4<f32>(-332f, 1354f, -1629f, 1054f), false, vec2<i32>(15263i, 33441i), 19806i, 1u), Struct_1(vec4<f32>(291f, -389f, 526f, -396f), true, vec2<i32>(-16773i, -818i), 8894i, 71943u), Struct_1(vec4<f32>(1234f, -113f, 634f, 169f), true, vec2<i32>(0i, 2147483647i), 0i, 0u), Struct_1(vec4<f32>(-275f, -462f, 595f, -345f), false, vec2<i32>(2147483647i, -80713i), 2147483647i, 0u), Struct_1(vec4<f32>(419f, 654f, -210f, 915f), true, vec2<i32>(-42695i, 56058i), 2147483647i, 12772u), Struct_1(vec4<f32>(1203f, -948f, -1000f, 1000f), true, vec2<i32>(2147483647i, i32(-2147483648)), -1i, 3u), Struct_1(vec4<f32>(-1000f, -1000f, 671f, 416f), true, vec2<i32>(15602i, -1i), 1i, 23538u), Struct_1(vec4<f32>(-1132f, -1976f, 1491f, 1088f), true, vec2<i32>(2147483647i, -7117i), 0i, 18100u), Struct_1(vec4<f32>(1000f, -1831f, -874f, -391f), true, vec2<i32>(532i, -27168i), 0i, 77687u), Struct_1(vec4<f32>(653f, 1054f, -732f, -2269f), true, vec2<i32>(1i, 2147483647i), 39903i, 32288u), Struct_1(vec4<f32>(776f, 1335f, 311f, -1630f), true, vec2<i32>(-1i, -11143i), i32(-2147483648), 55402u), Struct_1(vec4<f32>(-1728f, 1129f, 1768f, 1000f), true, vec2<i32>(-1i, -1i), 1204i, 1u), Struct_1(vec4<f32>(-1702f, -1670f, 1540f, -1360f), false, vec2<i32>(0i, 30367i), 51808i, 0u), Struct_1(vec4<f32>(370f, -1323f, 536f, -1235f), true, vec2<i32>(0i, i32(-2147483648)), 2147483647i, 4294967295u), Struct_1(vec4<f32>(-1778f, -1261f, 1000f, 213f), true, vec2<i32>(-22783i, 14573i), 2147483647i, 64190u), Struct_1(vec4<f32>(-2240f, -695f, 100f, -277f), false, vec2<i32>(57507i, -5780i), 2147483647i, 16432u), Struct_1(vec4<f32>(1590f, -302f, -389f, 721f), false, vec2<i32>(-1i, 66922i), 2147483647i, 0u));

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: u32, arg_1: vec2<bool>, arg_2: i32) -> vec3<u32> {
    global0 = array<vec2<i32>, 5>();
    var var_0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, global1.x) + vec2<f32>(-2200f, global1.x)), _wgslsmith_div_vec2_f32(vec2<f32>(1848f, global1.x), global1.zz))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1527f, global1.x)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.xx))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(f32(-1f) * -655f))));
    let var_1 = -1644f;
    var var_2 = firstTrailingBit((~u_input.b.zy & u_input.b.yy) & u_input.b.yx);
    let var_3 = 49066i;
    return u_input.b;
}

fn func_3(arg_0: Struct_1) -> bool {
    let var_0 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(arg_0.a)), vec4<f32>(arg_0.a.x, -365f, arg_0.a.x, global1.x)), !any(vec2<bool>(true, arg_0.b)), _wgslsmith_div_vec2_i32(select(abs(select(global0[_wgslsmith_index_u32(17727u, 5u)], arg_0.c, vec2<bool>(true, arg_0.b))), (u_input.d.yx >> (vec2<u32>(28840u, arg_0.e) % vec2<u32>(32u))) ^ _wgslsmith_add_vec2_i32(vec2<i32>(-29256i, u_input.d.x), arg_0.c), !vec2<bool>(arg_0.b, arg_0.b)), global0[_wgslsmith_index_u32(u_input.b.x, 5u)]), select(arg_0.d, _wgslsmith_mod_i32(~arg_0.c.x, -_wgslsmith_dot_vec3_i32(u_input.d.zxx, vec3<i32>(arg_0.d, arg_0.d, u_input.d.x))), true), 1u);
    global3 = array<Struct_1, 24>();
    global3 = array<Struct_1, 24>();
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(arg_0.a.x + arg_0.a.x), _wgslsmith_f_op_f32(min(arg_0.a.x, arg_0.a.x)), _wgslsmith_f_op_f32(-var_0.a.x))))));
    global1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(var_0.a.xww)) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(570f, 229f, 289f), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, global1.x, -316f) * var_0.a.xxw), var_0.b || var_0.b)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-var_0.a.xzx)))))), vec3<f32>(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x - -904f))), _wgslsmith_f_op_f32(f32(-1f) * -1365f)));
    return true;
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: vec4<bool>, arg_3: Struct_3) -> Struct_1 {
    global0 = array<vec2<i32>, 5>();
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(arg_3.c.a.yyx)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3.c.a.x, global1.x, -1508f) * arg_3.c.a.zwz)))), vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(418f, -256f))), _wgslsmith_div_f32(822f, _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.c.a.x)))));
    global0 = array<vec2<i32>, 5>();
    var var_0 = global3[_wgslsmith_index_u32(~u_input.b.x, 24u)];
    var var_1 = arg_1;
    return Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(arg_3.c.a, _wgslsmith_f_op_vec4_f32(sign(arg_3.c.a)), vec4<bool>(all(arg_2.zzy), true, all(arg_2.zww), arg_2.x))) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(585f * global1.x), global1.x, -1690f, -1257f)))), !var_0.b, vec2<i32>(_wgslsmith_add_i32(~0i, 38135i), 0i), -51165i, ~var_1.a.x);
}

fn func_1() -> f32 {
    let var_0 = func_4(u_input.c <= u_input.c, Struct_2(_wgslsmith_div_vec3_u32(vec3<u32>(38017u, ~u_input.e.x, ~4294967295u), func_2(1u, select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false)), _wgslsmith_mult_i32(-2147483647i, u_input.c)))), !select(vec4<bool>(true, true, true, func_3(global3[_wgslsmith_index_u32(u_input.e.x, 24u)])), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), Struct_3(_wgslsmith_sub_vec4_u32(~abs(vec4<u32>(u_input.b.x, 35550u, 4294967295u, u_input.b.x)), max(vec4<u32>(1u, u_input.e.x, 50381u, u_input.b.x), ~vec4<u32>(u_input.e.x, 1u, u_input.b.x, u_input.e.x))), u_input.e.x >> (1u % 32u), Struct_1(vec4<f32>(-122f, _wgslsmith_f_op_f32(global1.x * 334f), global1.x, _wgslsmith_div_f32(global1.x, -1044f)), select(50737u != u_input.e.x, all(vec3<bool>(true, true, false)), false), reverseBits(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.c, 19217i), global0[_wgslsmith_index_u32(u_input.b.x, 5u)])), ~u_input.a.x, u_input.e.x), vec2<u32>(8827u, 8734u >> (u_input.e.x % 32u))));
    var var_1 = _wgslsmith_div_vec4_u32(~vec4<u32>(43840u, ~func_2(u_input.e.x, vec2<bool>(var_0.b, true), -2147483647i).x, _wgslsmith_clamp_u32(reverseBits(1u), 0u | u_input.b.x, 0u), u_input.b.x), vec4<u32>(u_input.e.x, max(32889u, abs(~16579u)), u_input.b.x, 4294967295u));
    let var_2 = vec3<u32>(var_1.x, ~4294967295u, _wgslsmith_clamp_u32(~(~var_0.e), ~108360u, _wgslsmith_mult_u32(26882u, var_0.e)));
    let var_3 = Struct_3(~_wgslsmith_sub_vec4_u32(~(vec4<u32>(4294967295u, var_0.e, var_0.e, 0u) & vec4<u32>(12377u, 4294967295u, 1u, var_0.e)), ~min(vec4<u32>(0u, 4294967295u, 19997u, var_2.x), vec4<u32>(93675u, var_1.x, 0u, u_input.b.x))), 47050u, func_4(var_0.b, Struct_2(var_1.yxz), !select(vec4<bool>(var_0.b, false, true, var_0.b), vec4<bool>(var_0.b, var_0.b, false, true), var_0.a.x > var_0.a.x), Struct_3(firstTrailingBit(vec4<u32>(var_1.x, u_input.b.x, 4294967295u, 69766u)) & min(vec4<u32>(0u, var_2.x, var_2.x, 4294967295u), vec4<u32>(var_0.e, var_1.x, 87726u, 53430u)), var_2.x, var_0, countOneBits(vec2<u32>(34182u, 41888u)))), ~reverseBits(~vec2<u32>(var_2.x, var_2.x)));
    var var_4 = _wgslsmith_dot_vec2_u32(firstLeadingBit(var_2.zz & vec2<u32>(countOneBits(u_input.e.x), 12821u)), vec2<u32>(60998u, u_input.e.x));
    return func_4(!(0u <= var_2.x), Struct_2(vec3<u32>(_wgslsmith_mod_u32(29726u, var_0.e ^ var_1.x), firstTrailingBit(~119891u), _wgslsmith_add_u32(_wgslsmith_mod_u32(var_0.e, 22933u), 4294967295u >> (var_0.e % 32u)))), !select(vec4<bool>(true, true, true, true), vec4<bool>(!var_3.c.b, func_3(Struct_1(vec4<f32>(global1.x, 357f, -1275f, var_0.a.x), var_3.c.b, var_3.c.c, var_0.c.x, 0u)), var_3.c.c.x > var_0.c.x, !var_3.c.b), !select(vec4<bool>(var_0.b, true, var_3.c.b, var_0.b), vec4<bool>(false, false, true, var_3.c.b), var_3.c.b)), var_3).a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~_wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(0u, 0u), max(u_input.e.x, 4294967295u)), ~u_input.b.xz));
    var var_1 = Struct_2(u_input.b);
    let var_2 = _wgslsmith_div_vec2_u32(reverseBits(abs(firstLeadingBit(var_1.a.zy))), var_1.a.xy);
    global1 = vec3<f32>(_wgslsmith_f_op_f32(max(global1.x, _wgslsmith_f_op_f32(func_1()))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-1000f)))))), global1.x);
    let var_3 = ~(~var_1.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-func_4(true, Struct_2(vec3<u32>(4294967295u, 47520u, u_input.e.x)), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), false), Struct_3(vec4<u32>(4528u, 55165u, 13867u, 22455u), 1u, global3[_wgslsmith_index_u32(var_1.a.x, 24u)], var_1.a.yy)).a.x), global1.x, global1.x), firstTrailingBit(1u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -1297f));
}

