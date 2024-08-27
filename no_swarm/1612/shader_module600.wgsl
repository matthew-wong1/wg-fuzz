struct Struct_1 {
    a: vec4<bool>,
    b: vec4<f32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: vec4<i32>,
    c: vec3<u32>,
    d: Struct_1,
    e: vec2<f32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: bool,
    c: vec4<u32>,
}

struct Struct_4 {
    a: bool,
    b: f32,
    c: vec4<u32>,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec3<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 0i;

var<private> global1: array<Struct_3, 7>;

var<private> global2: i32 = 37142i;

var<private> global3: array<Struct_4, 26> = array<Struct_4, 26>(Struct_4(false, 753f, vec4<u32>(31278u, 11209u, 4294967295u, 45968u), 0u), Struct_4(true, -1952f, vec4<u32>(28251u, 1u, 0u, 36217u), 0u), Struct_4(false, 1929f, vec4<u32>(50927u, 8657u, 4294967295u, 1u), 26856u), Struct_4(true, 1000f, vec4<u32>(31161u, 36674u, 0u, 0u), 0u), Struct_4(false, 1000f, vec4<u32>(0u, 45960u, 15721u, 1u), 54975u), Struct_4(false, 790f, vec4<u32>(34327u, 4294967295u, 4294967295u, 1u), 53313u), Struct_4(true, 2063f, vec4<u32>(4294967295u, 52751u, 18220u, 23163u), 94650u), Struct_4(true, -428f, vec4<u32>(3019u, 52463u, 24179u, 11678u), 1u), Struct_4(true, -1084f, vec4<u32>(0u, 4294967295u, 41252u, 0u), 4294967295u), Struct_4(true, -306f, vec4<u32>(24975u, 0u, 0u, 39593u), 1u), Struct_4(false, -423f, vec4<u32>(1994u, 1u, 1u, 1u), 0u), Struct_4(true, -116f, vec4<u32>(4294967295u, 0u, 6525u, 0u), 4400u), Struct_4(false, -1184f, vec4<u32>(0u, 5461u, 1u, 93271u), 10022u), Struct_4(false, 834f, vec4<u32>(4294967295u, 0u, 56201u, 49144u), 89290u), Struct_4(false, 1051f, vec4<u32>(25730u, 1u, 59934u, 4294967295u), 57414u), Struct_4(true, -999f, vec4<u32>(32547u, 11338u, 61589u, 28483u), 0u), Struct_4(false, -1696f, vec4<u32>(28013u, 28676u, 1u, 4294967295u), 4294967295u), Struct_4(false, -1357f, vec4<u32>(59103u, 0u, 0u, 18023u), 1u), Struct_4(true, -409f, vec4<u32>(21361u, 43854u, 53777u, 4294967295u), 98333u), Struct_4(false, -580f, vec4<u32>(1u, 28657u, 4294967295u, 4294967295u), 15216u), Struct_4(false, 1775f, vec4<u32>(4294967295u, 40599u, 51289u, 2835u), 4294967295u), Struct_4(false, 172f, vec4<u32>(62723u, 4294967295u, 22231u, 1u), 12033u), Struct_4(false, -1803f, vec4<u32>(54663u, 1u, 63798u, 63434u), 70717u), Struct_4(true, 601f, vec4<u32>(4294967295u, 1u, 5634u, 4294967295u), 3565u), Struct_4(false, 1271f, vec4<u32>(25821u, 4294967295u, 16786u, 10143u), 4294967295u), Struct_4(false, 1000f, vec4<u32>(25007u, 7997u, 37506u, 3506u), 4294967295u));

var<private> global4: array<bool, 24> = array<bool, 24>(false, true, true, true, false, false, false, true, true, false, false, true, false, true, true, false, false, true, false, true, false, true, true, false);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_2() -> i32 {
    global4 = array<bool, 24>();
    global3 = array<Struct_4, 26>();
    global1 = array<Struct_3, 7>();
    let var_0 = global3[_wgslsmith_index_u32(u_input.d.x, 26u)];
    var var_1 = ~_wgslsmith_add_vec3_i32(~(-(~u_input.e)), u_input.c);
    return var_1.x;
}

fn func_3(arg_0: Struct_3, arg_1: f32, arg_2: vec3<bool>) -> vec4<u32> {
    global3 = array<Struct_4, 26>();
    var var_0 = global3[_wgslsmith_index_u32(~arg_0.c.x, 26u)];
    var_0 = Struct_4(arg_2.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)), _wgslsmith_f_op_f32(sign(1f))), firstTrailingBit(~arg_0.c), 5994u);
    let var_1 = ~vec3<i32>(u_input.c.x, reverseBits(max(-u_input.b.x, -574i)), u_input.c.x);
    var var_2 = Struct_2(global4[_wgslsmith_index_u32(~u_input.d.x, 24u)], vec4<i32>(-448i, var_1.x, ~(~6649i), -1i), firstTrailingBit(vec3<u32>(12824u, 4294967295u, arg_0.c.x)), Struct_1(arg_0.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(593f, var_0.b, 861f, -2978f) - vec4<f32>(arg_1, -1944f, arg_1, arg_1)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-704f, arg_1, 954f, 328f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b, var_0.b, var_0.b) + vec3<f32>(471f, var_0.b, -442f)))) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1515f, -455f, -1791f)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-544f, 798f))), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_1, arg_1)))) - vec2<f32>(-771f, _wgslsmith_f_op_f32(-arg_1))));
    return countOneBits(_wgslsmith_div_vec4_u32(((vec4<u32>(var_2.c.x, 27581u, 0u, arg_0.c.x) >> (vec4<u32>(1u, 4294967295u, u_input.d.x, var_2.c.x) % vec4<u32>(32u))) << (vec4<u32>(1u, var_2.c.x, u_input.d.x, 79227u) % vec4<u32>(32u))) | ~_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 17209u, u_input.d.x, 58833u), vec4<u32>(0u, 12159u, 4294967295u, 1u)), abs(max(arg_0.c, ~var_0.c))));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: u32, arg_3: vec2<u32>) -> f32 {
    let var_0 = vec2<i32>(u_input.c.x, -(u_input.c.x | _wgslsmith_sub_i32(_wgslsmith_mult_i32(-30431i, 0i), _wgslsmith_clamp_i32(u_input.b.x, -2147483647i, u_input.b.x))));
    global1 = array<Struct_3, 7>();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-439f * arg_0.x), 258f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1180f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-730f - arg_0.x), _wgslsmith_f_op_f32(floor(arg_0.x)))))), false | (arg_0.x <= 322f))) * _wgslsmith_f_op_f32(-1325f * 1f));
    var var_2 = -_wgslsmith_dot_vec3_i32(~u_input.b.yxx << (max(min(vec3<u32>(0u, 9460u, 5068u), vec3<u32>(arg_3.x, arg_3.x, arg_2)), _wgslsmith_add_vec3_u32(arg_1.c.xyx, vec3<u32>(arg_1.c.x, 4294967295u, arg_1.c.x))) % vec3<u32>(32u)), u_input.e);
    var_2 = 8435i;
    return -308f;
}

fn func_1(arg_0: u32) -> vec3<i32> {
    var var_0 = reverseBits(abs(_wgslsmith_div_vec3_u32(u_input.d, _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.d.x, 4294967295u, 97323u), vec3<u32>(u_input.d.x, 4294967295u, 4294967295u)) >> (vec3<u32>(u_input.d.x, arg_0, 101955u) % vec3<u32>(32u)))));
    var var_1 = vec3<i32>(-u_input.b.x, _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, -2147483647i, 45780i, -55692i), _wgslsmith_add_vec4_i32(u_input.b, vec4<i32>(u_input.b.x, u_input.a, -48620i, u_input.c.x))), ~0i), max(-2147483647i, func_2()));
    var var_2 = _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(-803f)), _wgslsmith_f_op_f32(sign(-443f)), _wgslsmith_f_op_f32(trunc(-934f)), _wgslsmith_f_op_f32(-456f - 700f)) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(405f, -1969f, 587f, -368f)))))) - vec4<f32>(838f, -554f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -475f) - 626f), 304f)), Struct_3(!vec4<bool>(true, all(vec3<bool>(global4[_wgslsmith_index_u32(6351u, 24u)], global4[_wgslsmith_index_u32(var_0.x, 24u)], false)), true, false), all(!vec4<bool>(global4[_wgslsmith_index_u32(0u, 24u)], global4[_wgslsmith_index_u32(0u, 24u)], global4[_wgslsmith_index_u32(0u, 24u)], false)), vec4<u32>(4294967295u, ~0u, min(12668u, var_0.x), ~arg_0) | func_3(global1[_wgslsmith_index_u32(4294967295u ^ var_0.x, 7u)], -507f, vec3<bool>(false, false, global4[_wgslsmith_index_u32(50683u, 24u)]))), ~_wgslsmith_div_u32(u_input.d.x & abs(0u), ~21952u), vec2<u32>(_wgslsmith_add_u32(1u, min(u_input.d.x, min(4294967295u, 38587u))), min(1u, 84578u))));
    var var_3 = Struct_2(false, ~u_input.b & vec4<i32>(reverseBits(-1i), -52856i, u_input.a, -1i), vec3<u32>(abs(u_input.d.x), 38028u, _wgslsmith_clamp_u32(~(0u << (arg_0 % 32u)), 45176u, 64493u)), Struct_1(!(!vec4<bool>(global4[_wgslsmith_index_u32(u_input.d.x, 24u)], global4[_wgslsmith_index_u32(83634u, 24u)], false, global4[_wgslsmith_index_u32(var_0.x, 24u)])), vec4<f32>(1600f, -1156f, -1548f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(vec4<f32>(635f, 2148f, 1031f, 1516f), Struct_3(vec4<bool>(global4[_wgslsmith_index_u32(u_input.d.x, 24u)], false, global4[_wgslsmith_index_u32(1u, 24u)], global4[_wgslsmith_index_u32(56770u, 24u)]), global4[_wgslsmith_index_u32(u_input.d.x, 24u)], vec4<u32>(27426u, var_0.x, 1u, 6888u)), 1u, u_input.d.xx)) - _wgslsmith_f_op_f32(select(1000f, -420f, false)))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1f, 1f, 1f)))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-257f, 1209f))) - vec2<f32>(-2152f, -149f)))));
    let var_4 = vec2<bool>(any(var_3.d.a.xx), ~(0i ^ ~u_input.b.x) <= var_3.b.x);
    return u_input.b.yxy;
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_3, arg_2: vec4<i32>, arg_3: f32) -> Struct_1 {
    global1 = array<Struct_3, 7>();
    let var_0 = ~(~4294967295u);
    global2 = 1i;
    var var_1 = Struct_1(select(!arg_1.a, vec4<bool>(false | arg_1.b, !(!global4[_wgslsmith_index_u32(var_0, 24u)]), false, (arg_1.a.x & false) && !arg_1.b), !vec4<bool>(all(arg_1.a.xyx), any(arg_1.a), true, any(vec2<bool>(global4[_wgslsmith_index_u32(var_0, 24u)], global4[_wgslsmith_index_u32(42079u, 24u)])))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3, 615f, arg_3, arg_3) + vec4<f32>(421f, arg_3, arg_3, 243f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3, 1072f, arg_3, arg_3) * vec4<f32>(-749f, 1115f, 825f, arg_3))))))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3, arg_3, 570f) - vec3<f32>(arg_3, arg_3, -862f)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(894f, arg_3, -1664f)))) * vec3<f32>(_wgslsmith_f_op_f32(ceil(arg_3)), _wgslsmith_f_op_f32(trunc(arg_3)), _wgslsmith_f_op_f32(-arg_3))))));
    global3 = array<Struct_4, 26>();
    return Struct_1(arg_1.a, var_1.b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.c.x, _wgslsmith_f_op_f32(func_4(vec4<f32>(861f, -414f, var_1.c.x, 228f), Struct_3(arg_1.a, false, arg_1.c), u_input.d.x, select(arg_1.c.xz, arg_0.zy, arg_1.b))), var_1.c.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(_wgslsmith_div_vec4_u32(max(~(vec4<u32>(u_input.d.x, 27020u, u_input.d.x, 44143u) & vec4<u32>(4294967295u, 11746u, 0u, u_input.d.x)), vec4<u32>(4294967295u, ~0u, ~49717u, u_input.d.x)), firstLeadingBit(vec4<u32>(~u_input.d.x, firstLeadingBit(100983u), ~u_input.d.x, u_input.d.x))), global1[_wgslsmith_index_u32(abs(_wgslsmith_div_u32(4294967295u << (u_input.d.x % 32u), 0u) << (u_input.d.x % 32u)), 7u)], vec4<i32>(u_input.b.x, ~_wgslsmith_dot_vec3_i32(func_1(u_input.d.x), u_input.b.xwy), _wgslsmith_mod_i32(u_input.e.x, u_input.b.x), firstLeadingBit(~(u_input.b.x ^ u_input.c.x))), _wgslsmith_f_op_f32(min(-1336f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -350f), -896f, global4[_wgslsmith_index_u32(u_input.d.x, 24u)])))));
    var var_1 = ~_wgslsmith_mod_i32(~(-18286i << (_wgslsmith_dot_vec4_u32(vec4<u32>(5816u, u_input.d.x, 72840u, 17489u), vec4<u32>(u_input.d.x, 1u, u_input.d.x, 21269u)) % 32u)), _wgslsmith_dot_vec3_i32(u_input.c, -firstLeadingBit(u_input.c)));
    let var_2 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c.x, 1060f, _wgslsmith_f_op_f32(f32(-1f) * -1248f)) - var_0.c), _wgslsmith_f_op_vec3_f32(var_0.c * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.b.x, _wgslsmith_f_op_f32(func_4(vec4<f32>(-798f, -210f, 329f, 1181f), global1[_wgslsmith_index_u32(u_input.d.x, 7u)], 1u, u_input.d.xx)), var_0.c.x), _wgslsmith_f_op_vec3_f32(var_0.b.zxy * vec3<f32>(1374f, var_0.b.x, -1640f)), true)))));
    let var_3 = global1[_wgslsmith_index_u32(~(~(~u_input.d.x)), 7u)];
    global4 = array<bool, 24>();
    var var_4 = Struct_1(var_0.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-721f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1373f * var_2.x), _wgslsmith_f_op_f32(1172f + 175f), true)), _wgslsmith_div_f32(var_2.x, _wgslsmith_f_op_f32(trunc(var_2.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1894f, var_0.c.x))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_0.b.x - -384f), _wgslsmith_f_op_f32(f32(-1f) * -226f), _wgslsmith_f_op_f32(var_0.b.x * var_2.x)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(581f, -824f, var_2.x) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-695f, -917f, 163f))))));
    var var_5 = vec3<f32>(var_4.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_4.c.x + var_2.x), var_0.c.x)) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(745f)))))), _wgslsmith_f_op_f32(-176f - -1331f));
    let var_6 = Struct_3(!vec4<bool>(var_4.a.x, all(var_4.a) & true, select(var_2.x != -983f, global4[_wgslsmith_index_u32(~u_input.d.x, 24u)], any(vec3<bool>(true, false, false))), true), true, vec4<u32>(~_wgslsmith_div_u32(reverseBits(var_3.c.x), var_3.c.x << (12564u % 32u)), u_input.d.x, _wgslsmith_mult_u32(var_3.c.x, reverseBits(53572u)), 4294967295u));
    var_1 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(1f);
}

