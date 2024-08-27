struct Struct_1 {
    a: vec4<i32>,
    b: vec2<f32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec2<u32>,
    c: bool,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<Struct_2, 16> = array<Struct_2, 16>(Struct_2(vec2<bool>(false, false), vec2<u32>(46487u, 4294967295u), true), Struct_2(vec2<bool>(false, true), vec2<u32>(16696u, 1u), true), Struct_2(vec2<bool>(true, false), vec2<u32>(4294967295u, 4294967295u), false), Struct_2(vec2<bool>(false, true), vec2<u32>(8479u, 1u), false), Struct_2(vec2<bool>(false, false), vec2<u32>(4294967295u, 69746u), true), Struct_2(vec2<bool>(false, true), vec2<u32>(14903u, 76832u), false), Struct_2(vec2<bool>(false, true), vec2<u32>(1u, 1u), false), Struct_2(vec2<bool>(false, false), vec2<u32>(12506u, 23876u), false), Struct_2(vec2<bool>(true, false), vec2<u32>(4294967295u, 1u), false), Struct_2(vec2<bool>(false, true), vec2<u32>(4294967295u, 8042u), true), Struct_2(vec2<bool>(false, true), vec2<u32>(43032u, 1u), true), Struct_2(vec2<bool>(false, false), vec2<u32>(1u, 0u), true), Struct_2(vec2<bool>(true, true), vec2<u32>(92709u, 4294967295u), true), Struct_2(vec2<bool>(true, true), vec2<u32>(82527u, 19061u), false), Struct_2(vec2<bool>(false, false), vec2<u32>(15346u, 47634u), true), Struct_2(vec2<bool>(true, false), vec2<u32>(4294967295u, 4294967295u), true));

var<private> global2: array<Struct_2, 15> = array<Struct_2, 15>(Struct_2(vec2<bool>(false, false), vec2<u32>(4294967295u, 40156u), true), Struct_2(vec2<bool>(false, false), vec2<u32>(4294967295u, 23638u), true), Struct_2(vec2<bool>(true, true), vec2<u32>(0u, 53388u), false), Struct_2(vec2<bool>(false, true), vec2<u32>(4294967295u, 1u), true), Struct_2(vec2<bool>(true, true), vec2<u32>(1u, 67153u), true), Struct_2(vec2<bool>(true, true), vec2<u32>(42445u, 21655u), true), Struct_2(vec2<bool>(false, true), vec2<u32>(0u, 0u), false), Struct_2(vec2<bool>(true, false), vec2<u32>(48870u, 25495u), true), Struct_2(vec2<bool>(true, true), vec2<u32>(4294967295u, 1u), false), Struct_2(vec2<bool>(true, false), vec2<u32>(35962u, 29523u), false), Struct_2(vec2<bool>(false, false), vec2<u32>(0u, 74605u), true), Struct_2(vec2<bool>(false, false), vec2<u32>(5229u, 4294967295u), false), Struct_2(vec2<bool>(false, false), vec2<u32>(1u, 1u), false), Struct_2(vec2<bool>(true, true), vec2<u32>(50006u, 0u), true), Struct_2(vec2<bool>(true, true), vec2<u32>(1u, 4294967295u), true));

var<private> global3: array<i32, 13> = array<i32, 13>(13821i, 1i, 16068i, 1i, 4052i, 16169i, -17671i, 0i, 7337i, -376i, -1i, 2147483647i, -93758i);

var<private> global4: array<vec4<i32>, 6> = array<vec4<i32>, 6>(vec4<i32>(2147483647i, -54663i, 38969i, -16130i), vec4<i32>(-56299i, -1i, -24549i, 1i), vec4<i32>(i32(-2147483648), 0i, i32(-2147483648), -1i), vec4<i32>(-29185i, 0i, i32(-2147483648), -32688i), vec4<i32>(-35756i, -1i, 1i, -1i), vec4<i32>(63758i, -35472i, 37928i, -12141i));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_1(arg_0: vec2<f32>, arg_1: vec3<f32>, arg_2: Struct_3) -> u32 {
    global2 = array<Struct_2, 15>();
    return ~(~76552u);
}

fn func_3(arg_0: Struct_2, arg_1: vec2<f32>) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)), arg_1.x)));
    var var_1 = Struct_3(!any(vec4<bool>(any(vec2<bool>(false, arg_0.a.x)), arg_0.a.x | arg_0.a.x, !arg_0.a.x, all(arg_0.a))), _wgslsmith_f_op_f32(-1372f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x * arg_1.x)), _wgslsmith_f_op_f32(-167f + arg_1.x))), Struct_1(global4[_wgslsmith_index_u32(min(min(89107u, 9979u) & (arg_0.b.x | arg_0.b.x), 4294967295u), 6u)], _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(-996f, 612f, false)), _wgslsmith_f_op_f32(min(947f, -843f))) + _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_1.x, arg_1.x)))), _wgslsmith_div_vec3_u32(firstLeadingBit(vec3<u32>(arg_0.b.x, arg_0.b.x, arg_0.b.x) | vec3<u32>(arg_0.b.x, arg_0.b.x, arg_0.b.x)), vec3<u32>(~arg_0.b.x, arg_0.b.x ^ 0u, ~73092u))), Struct_1(vec4<i32>(0i, _wgslsmith_mult_i32(1i, u_input.a.x), -5370i, -1i), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(min(arg_1.x, 889f))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.x, -407f))))), vec3<u32>(~arg_0.b.x, arg_0.b.x, ~func_1(arg_1, vec3<f32>(arg_1.x, -1087f, arg_1.x), Struct_3(true, -680f, Struct_1(vec4<i32>(-10684i, -2147483647i, 47119i, global3[_wgslsmith_index_u32(4294967295u, 13u)]), arg_1, vec3<u32>(56119u, 8922u, arg_0.b.x)), Struct_1(global4[_wgslsmith_index_u32(arg_0.b.x, 6u)], arg_1, vec3<u32>(5412u, 0u, 0u)))))));
    let var_2 = -var_1.d.a.zw;
    var var_3 = !var_1.a;
    var_3 = ((i32(-1i) * -37243i) != -_wgslsmith_sub_i32(_wgslsmith_div_i32(11399i, u_input.a.x), 1i)) && var_1.a;
    return _wgslsmith_sub_i32(abs(2147483647i), var_1.c.a.x ^ -(~abs(7598i)));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: i32) -> u32 {
    global3 = array<i32, 13>();
    var var_0 = Struct_3(true, arg_0.b.x, arg_0, Struct_1(vec4<i32>((global3[_wgslsmith_index_u32(5951u, 13u)] >> (1u % 32u)) << (~0u % 32u), 1i, arg_0.a.x, ~func_3(Struct_2(vec2<bool>(false, arg_1.x), arg_0.c.xz, arg_1.x), arg_0.b)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(arg_0.b, arg_0.b))) - _wgslsmith_div_vec2_f32(arg_0.b, vec2<f32>(119f, -715f))), arg_0.c));
    global2 = array<Struct_2, 15>();
    global0 = 9034u;
    var var_1 = false;
    return min(~4294967295u, 0u);
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_3, arg_2: Struct_3) -> Struct_1 {
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_2.c.c.x, ~firstLeadingBit(58347u)), 16u)];
    var var_1 = arg_1.d.c.yz;
    let var_2 = any(vec4<bool>(any(select(select(vec3<bool>(false, arg_1.a, arg_1.a), vec3<bool>(var_0.a.x, arg_1.a, true), vec3<bool>(arg_2.a, false, arg_1.a)), !vec3<bool>(arg_2.a, var_0.a.x, false), vec3<bool>(false, false, false))), all(!vec4<bool>(arg_1.a, false, false, var_0.c)), var_0.c, !arg_2.a));
    let var_3 = Struct_2(select(var_0.a, select(vec2<bool>(arg_2.a && true, arg_2.a), var_0.a, any(vec2<bool>(false, var_0.a.x)) && (var_0.c || true)), var_0.a), _wgslsmith_div_vec2_u32(max(vec2<u32>(arg_1.d.c.x, arg_2.c.c.x) | vec2<u32>(arg_1.d.c.x, var_0.b.x), vec2<u32>(var_1.x, arg_0.x)), firstTrailingBit(vec2<u32>(4294967295u, 12979u))) & vec2<u32>(var_0.b.x, arg_2.c.c.x), any(var_0.a));
    return Struct_1(global4[_wgslsmith_index_u32(~(~53487u), 6u)], vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.d.b.x * 981f)), 525f), ~vec3<u32>(~(~var_0.b.x), _wgslsmith_add_u32(0u, arg_1.c.c.x) ^ 39322u, min(arg_0.x, _wgslsmith_mod_u32(var_0.b.x, 37731u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(sign(1000f));
    let var_1 = func_4(_wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(~1u, firstLeadingBit(4294967295u), 0u >> (1u % 32u), ~55438u), vec4<u32>(1u, ~1u, func_1(vec2<f32>(var_0, -1000f), vec3<f32>(-376f, var_0, var_0), Struct_3(true, var_0, Struct_1(global4[_wgslsmith_index_u32(1u, 6u)], vec2<f32>(-648f, var_0), vec3<u32>(1u, 20797u, 4294967295u)), Struct_1(global4[_wgslsmith_index_u32(5451u, 6u)], vec2<f32>(var_0, var_0), vec3<u32>(6787u, 4294967295u, 4294967295u)))), _wgslsmith_mult_u32(50896u, 40936u))), vec4<u32>(~func_2(Struct_1(vec4<i32>(-21732i, 69384i, global3[_wgslsmith_index_u32(29727u, 13u)], 35839i), vec2<f32>(272f, var_0), vec3<u32>(4294967295u, 33239u, 0u)), vec3<bool>(false, true, true), 49865i), ~4294967295u, ~min(87489u, 26425u), abs(~65824u))), Struct_3(true, _wgslsmith_f_op_f32(exp2(var_0)), Struct_1(_wgslsmith_mult_vec4_i32(global4[_wgslsmith_index_u32(1u, 6u)], global4[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, 14107u), 6u)]), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, var_0) - vec2<f32>(var_0, 165f)))), _wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(22620u, 31734u, 42760u), vec3<u32>(55269u, 433u, 0u)), abs(vec3<u32>(1u, 1u, 0u)), vec3<u32>(4294967295u, 33609u, 0u))), Struct_1(countOneBits(global4[_wgslsmith_index_u32(select(7880u, 0u, false), 6u)]), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, var_0) * vec2<f32>(-504f, 1891f)), vec3<u32>(23477u, firstTrailingBit(4294967295u), 0u))), Struct_3(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(884f - var_0))) < -430f, var_0, Struct_1(reverseBits(vec4<i32>(global3[_wgslsmith_index_u32(12432u, 13u)], global3[_wgslsmith_index_u32(1u, 13u)], u_input.a.x, 35534i)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(355f, -956f) - vec2<f32>(697f, var_0)) * vec2<f32>(var_0, 1000f)), ~_wgslsmith_mod_vec3_u32(vec3<u32>(0u, 35686u, 62211u), vec3<u32>(71076u, 4294967295u, 1u))), Struct_1(vec4<i32>(_wgslsmith_dot_vec3_i32(u_input.a, u_input.a), 0i, _wgslsmith_sub_i32(0i, u_input.a.x), -15478i), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(622f, var_0))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0, var_0))))), _wgslsmith_clamp_vec3_u32(~vec3<u32>(9087u, 4294967295u, 4294967295u), vec3<u32>(1u, 1u, 1u), select(vec3<u32>(4294967295u, 11145u, 1u), vec3<u32>(50244u, 1u, 0u), vec3<bool>(true, false, true))))));
    let var_2 = var_1.b;
    var var_3 = var_1.c.x;
    global0 = ~var_1.c.x;
    var var_4 = _wgslsmith_div_u32(_wgslsmith_mod_u32(var_1.c.x, 1227u), ~(~reverseBits(reverseBits(16814u))));
    var var_5 = ~_wgslsmith_mod_i32(_wgslsmith_mult_i32(~_wgslsmith_div_i32(global3[_wgslsmith_index_u32(var_1.c.x, 13u)], var_1.a.x), -2147483647i), ~u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(~(~(_wgslsmith_clamp_vec4_u32(vec4<u32>(16612u, 0u, 40137u, 54471u), vec4<u32>(0u, 1u, var_1.c.x, var_1.c.x), vec4<u32>(4294967295u, 4759u, var_1.c.x, var_1.c.x)) << (abs(vec4<u32>(var_1.c.x, var_1.c.x, var_1.c.x, var_1.c.x)) % vec4<u32>(32u)))), firstTrailingBit(vec4<u32>(~_wgslsmith_dot_vec3_u32(var_1.c, var_1.c), select(3523u, 0u, true) ^ var_1.c.x, _wgslsmith_div_u32(var_1.c.x, _wgslsmith_sub_u32(var_1.c.x, var_1.c.x)), var_1.c.x)), vec3<u32>(4294967295u, _wgslsmith_sub_u32(select(4294967295u, 1u, any(vec2<bool>(false, false))), ~(var_1.c.x >> (var_1.c.x % 32u))), var_1.c.x));
}

