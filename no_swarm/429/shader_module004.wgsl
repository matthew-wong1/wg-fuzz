struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec4<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec2<u32>,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: u32,
    d: vec2<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 26> = array<bool, 26>(false, false, false, false, false, true, false, true, false, false, false, true, false, true, true, false, false, true, false, false, true, true, false, true, true, false);

var<private> global1: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(vec2<u32>(1u, 42945u), 1u, -18844i), Struct_1(vec2<u32>(34806u, 0u), 34266u, 1i), Struct_1(vec2<u32>(46713u, 1u), 0u, 29426i), Struct_1(vec2<u32>(31724u, 53422u), 0u, -35654i), Struct_1(vec2<u32>(36862u, 41677u), 4294967295u, 468i), Struct_1(vec2<u32>(85121u, 7914u), 35125u, -33018i), Struct_1(vec2<u32>(0u, 79928u), 59270u, 14922i), Struct_1(vec2<u32>(16243u, 4649u), 4294967295u, -15115i), Struct_1(vec2<u32>(28202u, 20018u), 5785u, 26336i), Struct_1(vec2<u32>(30267u, 1u), 1u, -10405i), Struct_1(vec2<u32>(23471u, 0u), 11584u, -53109i), Struct_1(vec2<u32>(1222u, 1u), 4294967295u, i32(-2147483648)), Struct_1(vec2<u32>(62609u, 7762u), 4294967295u, 41740i));

var<private> global2: i32;

var<private> global3: array<Struct_3, 24>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: u32, arg_1: vec3<i32>, arg_2: vec2<u32>, arg_3: Struct_1) -> u32 {
    global1 = array<Struct_1, 13>();
    global1 = array<Struct_1, 13>();
    let var_0 = -vec2<i32>(-2147483647i, -13916i);
    var var_1 = global3[_wgslsmith_index_u32(max(arg_3.a.x, 0u), 24u)];
    var var_2 = vec4<bool>(!any(vec4<bool>(var_1.a.c.x, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(42220u, 0u), 26u)], true, true)), select(global0[_wgslsmith_index_u32(arg_2.x, 26u)], all(vec3<bool>(true || global0[_wgslsmith_index_u32(28696u, 26u)], true, all(vec4<bool>(global0[_wgslsmith_index_u32(0u, 26u)], var_1.b.c.x, false, true)))), true), any(vec3<bool>(true, any(!var_1.b.c.xyz), select(true, !var_1.b.b, false))), true);
    return _wgslsmith_div_u32(_wgslsmith_div_u32(50737u, 74266u), ~(~4294967295u)) << (~arg_3.b % 32u);
}

fn func_2() -> f32 {
    global0 = array<bool, 26>();
    global2 = ~(~_wgslsmith_add_i32(-2147483647i & _wgslsmith_sub_i32(u_input.c, -32376i), ~abs(-1i)));
    let var_0 = Struct_3(Struct_2(Struct_1(~abs(vec2<u32>(76215u, 25755u)), firstLeadingBit(~1u), ~(-1i)), true, vec4<bool>(false, global0[_wgslsmith_index_u32(~(13816u << (0u % 32u)), 26u)], global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~18848u, abs(0u)), 26u)], global0[_wgslsmith_index_u32(1u, 26u)]), Struct_1(~vec2<u32>(1u, 1u), ~_wgslsmith_div_u32(1u, 93197u), u_input.a)), Struct_2(Struct_1(vec2<u32>(1u, 1u), ~1u, -min(1i, 1i)), all(vec4<bool>(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(8534u, 28631u), 26u)], global0[_wgslsmith_index_u32(func_3(1u, vec3<i32>(u_input.c, -1i, -1i), vec2<u32>(20964u, 4294967295u), Struct_1(vec2<u32>(81785u, 64075u), 4294967295u, u_input.b.x)), 26u)], true, global0[_wgslsmith_index_u32(abs(47028u), 26u)])), select(!select(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 26u)], false, true, global0[_wgslsmith_index_u32(1u, 26u)]), vec4<bool>(false, false, global0[_wgslsmith_index_u32(10079u, 26u)], true), vec4<bool>(false, global0[_wgslsmith_index_u32(45852u, 26u)], false, false)), select(!vec4<bool>(global0[_wgslsmith_index_u32(22858u, 26u)], global0[_wgslsmith_index_u32(1u, 26u)], global0[_wgslsmith_index_u32(15939u, 26u)], global0[_wgslsmith_index_u32(59801u, 26u)]), vec4<bool>(global0[_wgslsmith_index_u32(3721u, 26u)], true, true, false), vec4<bool>(true, global0[_wgslsmith_index_u32(81478u, 26u)], global0[_wgslsmith_index_u32(25552u, 26u)], global0[_wgslsmith_index_u32(19361u, 26u)])), true), global1[_wgslsmith_index_u32(firstTrailingBit(~1u), 13u)]), _wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(~vec2<u32>(4294967295u, 3747u), countOneBits(vec2<u32>(3545u, 0u)), firstLeadingBit(vec2<u32>(1u, 69959u))), vec2<u32>(1u, 1u)), vec2<u32>(_wgslsmith_mod_u32(~27092u, ~31347u), _wgslsmith_mod_u32(firstTrailingBit(24580u), reverseBits(87723u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -300f) + _wgslsmith_f_op_f32(-750f * 1319f)), -1092f))));
    var var_1 = u_input.a;
    let var_2 = Struct_1(vec2<u32>(~(~4294967295u), ~var_0.a.d.b), var_0.c.x, 2147483647i);
    return _wgslsmith_f_op_f32(f32(-1f) * -165f);
}

fn func_1(arg_0: vec4<u32>, arg_1: bool) -> Struct_1 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(133f * 122f))))), _wgslsmith_f_op_f32(-627f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2()))));
    return global1[_wgslsmith_index_u32(4294967295u, 13u)];
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec2<f32>) -> vec4<u32> {
    var var_0 = func_1(_wgslsmith_clamp_vec4_u32(abs(vec4<u32>(arg_0.b, ~arg_0.a.x, ~50170u, min(20362u, 20408u))), vec4<u32>(18936u, ~min(arg_1.c.x, arg_1.c.x), ~4294967295u, ~1u), vec4<u32>((arg_0.a.x ^ 1u) & ~arg_1.c.x, 1u, ~(~arg_0.b), 4225u)), all(vec3<bool>(any(vec2<bool>(arg_1.a.c.x, global0[_wgslsmith_index_u32(0u, 26u)])), true, true)));
    let var_1 = func_1(~firstTrailingBit(vec4<u32>(var_0.b, 1u, 17064u, 0u)), !(all(vec4<bool>(arg_1.a.c.x, global0[_wgslsmith_index_u32(arg_0.a.x, 26u)], arg_1.b.b, arg_1.b.b)) && true));
    var_0 = func_1(~(~countOneBits(vec4<u32>(arg_1.c.x, var_0.b, 4294967295u, arg_1.c.x)) ^ (~vec4<u32>(var_1.a.x, 44576u, 4294967295u, 3008u) >> (vec4<u32>(1u, var_1.a.x, 4294967295u, 4294967295u) % vec4<u32>(32u)))), select(false, true, all(vec3<bool>(global0[_wgslsmith_index_u32(1u, 26u)], !arg_1.b.b, true))));
    let var_2 = true;
    var var_3 = func_1(~(~(~_wgslsmith_sub_vec4_u32(vec4<u32>(arg_1.b.a.b, var_1.b, var_1.b, var_1.b), vec4<u32>(0u, 2824u, 0u, arg_0.a.x)))), arg_0.c == ~1i);
    return vec4<u32>(63672u, arg_1.c.x >> ((var_0.b >> (abs(70896u) % 32u)) % 32u), _wgslsmith_div_u32(reverseBits(arg_1.a.d.a.x) >> (var_0.b % 32u), ~arg_0.a.x) << (_wgslsmith_mod_u32(~var_3.a.x, 1u) % 32u), ~(var_3.a.x ^ min(13223u, arg_0.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = -1i | -u_input.a;
    var var_0 = ~_wgslsmith_mult_vec4_i32(~vec4<i32>(-1i, 1i, u_input.a, 2147483647i), _wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-31916i, u_input.c, 0i, 1i), vec4<i32>(u_input.c, 63488i, 6322i, -47909i)), vec4<i32>(25029i, u_input.a, u_input.c, u_input.a) >> (vec4<u32>(75920u, 9582u, 0u, 9237u) % vec4<u32>(32u)))) << ((_wgslsmith_mult_vec4_u32(~abs(vec4<u32>(7842u, 36144u, 5305u, 1u)), select(vec4<u32>(1u, 0u, 1u, 0u), vec4<u32>(54691u, 4294967295u, 46690u, 50163u), true) ^ vec4<u32>(4294967295u, 26050u, 0u, 68201u)) >> (_wgslsmith_sub_vec4_u32(func_4(func_1(vec4<u32>(1u, 5192u, 4294967295u, 0u), global0[_wgslsmith_index_u32(1u, 26u)]), global3[_wgslsmith_index_u32(~0u, 24u)], _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1135f, -2158f)))), countOneBits(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 46784u, 0u, 33494u), vec4<u32>(1u, 0u, 50074u, 14108u)))) % vec4<u32>(32u))) % vec4<u32>(32u));
    let var_1 = vec4<u32>(_wgslsmith_clamp_u32(0u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(11798u, 37733u, 0u)), 4294967295u), firstLeadingBit(func_3(4294967295u, var_0.xxy ^ vec3<i32>(u_input.a, u_input.a, u_input.b.x), _wgslsmith_div_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(4294967295u, 22644u)), func_1(vec4<u32>(1u, 65851u, 4294967295u, 1596u), global0[_wgslsmith_index_u32(26708u, 26u)]))) ^ _wgslsmith_dot_vec3_u32(abs(~vec3<u32>(4294967295u, 1u, 4294967295u)), firstTrailingBit(~vec3<u32>(4294967295u, 2967u, 1u))), ~14907u, func_1(min(func_4(global1[_wgslsmith_index_u32(1u, 13u)], Struct_3(Struct_2(Struct_1(vec2<u32>(4294967295u, 4294967295u), 10966u, -1i), false, vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 26u)], global0[_wgslsmith_index_u32(78441u, 26u)], global0[_wgslsmith_index_u32(38610u, 26u)], false), global1[_wgslsmith_index_u32(0u, 13u)]), Struct_2(global1[_wgslsmith_index_u32(4294967295u, 13u)], true, vec4<bool>(false, global0[_wgslsmith_index_u32(101216u, 26u)], global0[_wgslsmith_index_u32(4294967295u, 26u)], global0[_wgslsmith_index_u32(50789u, 26u)]), global1[_wgslsmith_index_u32(0u, 13u)]), vec2<u32>(58843u, 0u), 1000f), vec2<f32>(1091f, 421f)) & vec4<u32>(4294967295u, 4294967295u, 6827u, 1u), select(~vec4<u32>(0u, 7122u, 1u, 20354u), select(vec4<u32>(4294967295u, 4294967295u, 15871u, 14379u), vec4<u32>(103514u, 11199u, 0u, 29648u), global0[_wgslsmith_index_u32(1u, 26u)]), !vec4<bool>(global0[_wgslsmith_index_u32(1u, 26u)], false, global0[_wgslsmith_index_u32(57172u, 26u)], true))), true).a.x);
    let var_2 = !any(select(!(!vec2<bool>(false, global0[_wgslsmith_index_u32(var_1.x, 26u)])), select(vec2<bool>(true, global0[_wgslsmith_index_u32(0u, 26u)]), select(vec2<bool>(global0[_wgslsmith_index_u32(77838u, 26u)], global0[_wgslsmith_index_u32(var_1.x, 26u)]), vec2<bool>(true, global0[_wgslsmith_index_u32(8571u, 26u)]), global0[_wgslsmith_index_u32(83733u, 26u)]), true), !select(vec2<bool>(global0[_wgslsmith_index_u32(var_1.x, 26u)], false), vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 26u)], false), global0[_wgslsmith_index_u32(var_1.x, 26u)])));
    global3 = array<Struct_3, 24>();
    var var_3 = _wgslsmith_f_op_f32(trunc(-851f));
    global3 = array<Struct_3, 24>();
    global1 = array<Struct_1, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(353f + 1751f)) + 1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-321f + 1275f), -1418f)) * -442f), 408f, _wgslsmith_f_op_f32(f32(-1f) * -931f)), ~abs(var_1.x), vec2<i32>(~_wgslsmith_dot_vec2_i32(var_0.xw, -vec2<i32>(var_0.x, var_0.x)), 38369i), reverseBits(func_1(min(var_1, _wgslsmith_div_vec4_u32(vec4<u32>(var_1.x, var_1.x, 1u, 32849u), vec4<u32>(var_1.x, 1u, 57371u, var_1.x))), !var_2).b));
}

