struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<f32>,
    d: vec3<f32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: i32,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<i32>,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 2>;

var<private> global1: f32 = 907f;

var<private> global2: vec3<bool> = vec3<bool>(false, false, false);

var<private> global3: array<bool, 3>;

var<private> global4: array<vec3<u32>, 23> = array<vec3<u32>, 23>(vec3<u32>(0u, 25439u, 0u), vec3<u32>(9147u, 10459u, 0u), vec3<u32>(0u, 9272u, 1557u), vec3<u32>(0u, 1u, 4294967295u), vec3<u32>(36423u, 54097u, 1u), vec3<u32>(83629u, 21895u, 77941u), vec3<u32>(0u, 80731u, 11524u), vec3<u32>(74904u, 21989u, 22660u), vec3<u32>(66099u, 16111u, 87308u), vec3<u32>(4294967295u, 0u, 4294967295u), vec3<u32>(4294967295u, 1u, 0u), vec3<u32>(54782u, 0u, 4294967295u), vec3<u32>(8112u, 2398u, 0u), vec3<u32>(1u, 4294967295u, 34160u), vec3<u32>(48206u, 4294967295u, 0u), vec3<u32>(1u, 65107u, 1u), vec3<u32>(1u, 61826u, 4294967295u), vec3<u32>(24779u, 1u, 4294967295u), vec3<u32>(4294967295u, 4294967295u, 0u), vec3<u32>(69636u, 34100u, 23751u), vec3<u32>(31662u, 0u, 1u), vec3<u32>(45871u, 1u, 4294967295u), vec3<u32>(1u, 4294967295u, 1u));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec4<bool>, arg_1: u32, arg_2: Struct_5, arg_3: f32) -> i32 {
    var var_0 = 29848u;
    global0 = array<vec3<u32>, 2>();
    global1 = arg_3;
    let var_1 = ~arg_1;
    var var_2 = Struct_5(_wgslsmith_add_i32(2147483647i, u_input.c.x), 87072u);
    return ~1i;
}

fn func_2() -> f32 {
    global2 = vec3<bool>(reverseBits(-_wgslsmith_dot_vec4_i32(vec4<i32>(-33077i, -1i, -2147483647i, -13727i), vec4<i32>(u_input.c.x, 10375i, u_input.c.x, u_input.c.x))) <= func_3(select(vec4<bool>(global3[_wgslsmith_index_u32(2084u, 3u)], global2.x, false, global3[_wgslsmith_index_u32(u_input.e.x, 3u)]), select(vec4<bool>(global3[_wgslsmith_index_u32(82781u, 3u)], false, global3[_wgslsmith_index_u32(u_input.b.x, 3u)], true), vec4<bool>(true, global2.x, global2.x, false), vec4<bool>(true, global2.x, global3[_wgslsmith_index_u32(0u, 3u)], false)), vec4<bool>(true, false, true, true)), u_input.b.x, Struct_5(~(-32413i), _wgslsmith_mult_u32(u_input.b.x, 4294967295u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1104f * -525f))), false, any(select(select(!vec4<bool>(false, true, global2.x, global3[_wgslsmith_index_u32(u_input.d, 3u)]), vec4<bool>(global3[_wgslsmith_index_u32(u_input.d, 3u)], false, global2.x, true), select(vec4<bool>(true, false, false, global3[_wgslsmith_index_u32(u_input.b.x, 3u)]), vec4<bool>(true, false, false, global3[_wgslsmith_index_u32(1u, 3u)]), vec4<bool>(global3[_wgslsmith_index_u32(52994u, 3u)], false, global2.x, global2.x))), vec4<bool>(true, true, true, true), vec4<bool>(!global3[_wgslsmith_index_u32(0u, 3u)], all(vec3<bool>(true, global2.x, false)), global2.x, true & global3[_wgslsmith_index_u32(13270u, 3u)]))));
    global0 = array<vec3<u32>, 2>();
    let var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(abs(-115f)), _wgslsmith_f_op_f32(max(171f, 372f)), _wgslsmith_f_op_f32(-224f + -463f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-923f, 1000f, -129f) - vec3<f32>(-1359f, 1179f, 999f))))) + _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(632f - -768f), _wgslsmith_f_op_f32(1612f - 1825f), -747f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(736f, 321f, 129f), vec3<f32>(-525f, -2289f, -825f), vec3<bool>(global2.x, global2.x, global3[_wgslsmith_index_u32(u_input.b.x, 3u)])))))), select(global2.zz, !(!vec2<bool>(true, global2.x)), true), Struct_2(Struct_1(reverseBits(_wgslsmith_sub_u32(u_input.d, u_input.e.x)), (vec3<u32>(37545u, 1956u, u_input.a) >> (u_input.b.wxw % vec3<u32>(32u))) >> (global4[_wgslsmith_index_u32(select(u_input.d, u_input.a, true), 23u)] % vec3<u32>(32u)), u_input.c.zz, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1041f, -2137f, 475f) + vec3<f32>(-1000f, 351f, 979f)))), Struct_1(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.e.x, 1u, u_input.d), u_input.e), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(85080u, 0u), u_input.e.xy), ~u_input.d, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e.x, 0u, u_input.d, u_input.b.x), vec4<u32>(1u, 1u, 0u, u_input.a))), u_input.c.xz, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-995f, 447f, 521f)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1659f, -943f, -1209f), vec3<f32>(-887f, 681f, 570f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(405f, -500f, -138f, 1810f) + vec4<f32>(-586f, 543f, 771f, -395f))) - vec4<f32>(1f, 1f, 1f, 1f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(1322f, 1312f, -866f), vec3<f32>(934f, -1341f, -242f)))) * vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1914f), -809f, _wgslsmith_f_op_f32(-633f * 2074f)))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-731f, _wgslsmith_f_op_f32(f32(-1f) * -146f))));
    var var_2 = max(vec4<u32>(_wgslsmith_clamp_u32(u_input.a, u_input.e.x, 7350u), u_input.a, 0u << (reverseBits(_wgslsmith_mod_u32(u_input.e.x, u_input.a)) % 32u), _wgslsmith_div_u32(78445u, countOneBits(var_0.c.a.b.x))), _wgslsmith_clamp_vec4_u32(vec4<u32>(45586u, 1u, _wgslsmith_mod_u32(var_0.c.a.a, u_input.a), 42637u), _wgslsmith_sub_vec4_u32(u_input.b, ~u_input.b), max(u_input.b, select(vec4<u32>(95544u, 63930u, 4294967295u, 2990u), u_input.b, vec4<bool>(global3[_wgslsmith_index_u32(0u, 3u)], false, false, var_0.b.x)))) >> ((abs(u_input.b >> (vec4<u32>(var_0.c.a.a, 4294967295u, 65477u, var_0.c.a.b.x) % vec4<u32>(32u))) ^ ~reverseBits(u_input.b)) % vec4<u32>(32u)));
    return -857f;
}

fn func_1() -> vec3<f32> {
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) + 873f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-475f + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -2513f))))));
    var var_0 = countOneBits(u_input.e.yy);
    let var_1 = ~u_input.e.x;
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_2()), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-327f)), -390f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(225f * 2530f), _wgslsmith_f_op_f32(abs(-422f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1167f + -1308f)))));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_4, arg_2: u32) -> vec4<f32> {
    global3 = array<bool, 3>();
    global0 = array<vec3<u32>, 2>();
    var var_0 = ~(vec3<u32>(~4294967295u, select(4294967295u, ~19842u, true), _wgslsmith_mod_u32(64287u, arg_2 ^ arg_2)) ^ global0[_wgslsmith_index_u32(~abs(arg_2), 2u)]);
    var_0 = global4[_wgslsmith_index_u32(select(68646u, u_input.b.x, true) ^ var_0.x, 23u)];
    let var_1 = ~arg_1.a.a.b;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a.c.x, 175f, arg_0.x, -590f) + vec4<f32>(-348f, arg_1.a.d.x, -746f, arg_1.a.d.x)))) * arg_1.a.c));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_f_op_vec3_f32(func_1()), Struct_4(Struct_2(Struct_1(u_input.d, global4[_wgslsmith_index_u32(65760u, 23u)], u_input.c.yz, vec3<f32>(-1172f, 683f, -1000f)), Struct_1(36969u, global0[_wgslsmith_index_u32(0u, 2u)], u_input.c.yz, vec3<f32>(-2192f, 1336f, -1599f)), vec4<f32>(-1331f, -1000f, 1307f, -458f), vec3<f32>(1763f, -548f, -2217f))), 4294967295u)) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-478f, -1509f, 879f, -581f)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-697f, -857f, 866f, 858f))), select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, global3[_wgslsmith_index_u32(u_input.e.x, 3u)], global2.x), true)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(733f, -1383f, 1000f, 1000f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-865f, -166f, 2093f, -202f), vec4<f32>(1098f, 1074f, -331f, 828f))))), false)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1042f, _wgslsmith_f_op_f32(func_2()), -288f, -442f)));
    let var_1 = Struct_5(u_input.c.x, _wgslsmith_div_u32(u_input.d, u_input.b.x));
    global3 = array<bool, 3>();
    var var_2 = Struct_4(Struct_2(Struct_1(u_input.a, global4[_wgslsmith_index_u32(76919u, 23u)], vec2<i32>(39613i, ~26191i), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-var_0.zzy), vec3<f32>(var_0.x, var_0.x, 2270f), !vec3<bool>(global3[_wgslsmith_index_u32(u_input.d, 3u)], global2.x, false)))), Struct_1(reverseBits(countOneBits(var_1.b)), abs(countOneBits(global4[_wgslsmith_index_u32(var_1.b, 23u)])), ~u_input.c.yy >> (_wgslsmith_mod_vec2_u32(vec2<u32>(var_1.b, u_input.d), vec2<u32>(var_1.b, var_1.b)) % vec2<u32>(32u)), var_0.ywz), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.x)) + -1284f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-976f)) * _wgslsmith_f_op_f32(1048f * -492f)), _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(var_0.x - -1000f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(1434f))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-388f, var_0.x, var_0.x))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, -559f, var_0.x) * vec3<f32>(369f, var_0.x, var_0.x)))))));
    var var_3 = vec4<bool>(true, global2.x, global3[_wgslsmith_index_u32(u_input.b.x, 3u)], global2.x);
    let var_4 = global2.x;
    var_2 = Struct_4(var_2.a);
    var var_5 = _wgslsmith_div_vec3_i32(select((-u_input.c ^ _wgslsmith_div_vec3_i32(vec3<i32>(10458i, 0i, u_input.c.x), u_input.c)) >> (vec3<u32>(43064u, abs(u_input.a), u_input.b.x) % vec3<u32>(32u)), ~vec3<i32>(-1i, var_2.a.b.c.x, var_2.a.a.c.x) >> ((~var_2.a.b.b & _wgslsmith_mult_vec3_u32(var_2.a.a.b, u_input.e)) % vec3<u32>(32u)), !(!select(vec3<bool>(global3[_wgslsmith_index_u32(6974u, 3u)], false, var_3.x), vec3<bool>(var_3.x, false, true), false))), min(u_input.c, vec3<i32>(-1i, -18923i, _wgslsmith_clamp_i32(-1i, var_2.a.a.c.x, -2147483647i)) >> (vec3<u32>(var_2.a.a.b.x, firstTrailingBit(var_1.b), _wgslsmith_mult_u32(u_input.b.x, var_2.a.b.b.x)) % vec3<u32>(32u))));
    global1 = _wgslsmith_f_op_f32(ceil(var_2.a.d.x));
    let x = u_input.a;
    s_output = StorageBuffer(0u ^ ~_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(var_2.a.b.b.zy, var_2.a.a.b.xx), firstLeadingBit(4294967295u)), ~(~firstLeadingBit(_wgslsmith_mult_vec2_u32(vec2<u32>(15361u, 45857u), var_2.a.b.b.yz))));
}

