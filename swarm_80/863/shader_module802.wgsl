struct Struct_1 {
    a: bool,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: f32,
    d: i32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec4<i32>,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_4 {
    a: vec3<f32>,
    b: bool,
    c: vec3<u32>,
    d: vec2<u32>,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 3>;

var<private> global1: array<f32, 16>;

var<private> global2: i32;

var<private> global3: array<Struct_4, 15> = array<Struct_4, 15>(Struct_4(vec3<f32>(362f, 127f, 168f), false, vec3<u32>(1u, 51228u, 1u), vec2<u32>(60033u, 0u), Struct_3(vec2<f32>(108f, 1183f), vec4<i32>(68121i, -1i, 68089i, 19272i), Struct_2(Struct_1(false, 0u), i32(-2147483648), -2422f, -47817i), Struct_1(true, 0u))), Struct_4(vec3<f32>(-592f, 455f, -532f), false, vec3<u32>(94u, 0u, 0u), vec2<u32>(65041u, 27197u), Struct_3(vec2<f32>(-198f, 310f), vec4<i32>(-40i, -14973i, 0i, -1i), Struct_2(Struct_1(false, 56134u), 62466i, -930f, 16747i), Struct_1(false, 89178u))), Struct_4(vec3<f32>(364f, 589f, -138f), true, vec3<u32>(12994u, 13866u, 0u), vec2<u32>(4886u, 52168u), Struct_3(vec2<f32>(735f, -327f), vec4<i32>(-1i, i32(-2147483648), -1i, -62825i), Struct_2(Struct_1(false, 1u), -21805i, 1272f, -1i), Struct_1(true, 4294967295u))), Struct_4(vec3<f32>(621f, 1380f, -497f), true, vec3<u32>(68536u, 1u, 79180u), vec2<u32>(82058u, 51018u), Struct_3(vec2<f32>(-145f, -2293f), vec4<i32>(1i, 2147483647i, 1i, 10716i), Struct_2(Struct_1(true, 0u), 47317i, -148f, -13327i), Struct_1(false, 55118u))), Struct_4(vec3<f32>(1364f, 751f, -1425f), true, vec3<u32>(1u, 45094u, 0u), vec2<u32>(4294967295u, 4294967295u), Struct_3(vec2<f32>(1000f, 1330f), vec4<i32>(-16277i, -53184i, 19279i, 0i), Struct_2(Struct_1(true, 4294967295u), -28179i, -1000f, 113i), Struct_1(true, 0u))), Struct_4(vec3<f32>(-632f, 1236f, 2281f), false, vec3<u32>(4294967295u, 4294967295u, 55251u), vec2<u32>(0u, 22269u), Struct_3(vec2<f32>(615f, 687f), vec4<i32>(15773i, -34062i, -22332i, 2147483647i), Struct_2(Struct_1(false, 1u), -12979i, -1000f, -3414i), Struct_1(true, 1u))), Struct_4(vec3<f32>(316f, -1669f, -211f), true, vec3<u32>(20162u, 4294967295u, 4444u), vec2<u32>(3753u, 67818u), Struct_3(vec2<f32>(436f, -1314f), vec4<i32>(7178i, 2147483647i, 1i, 2147483647i), Struct_2(Struct_1(false, 66157u), -24147i, 922f, 7187i), Struct_1(true, 84862u))), Struct_4(vec3<f32>(-716f, 356f, -2180f), false, vec3<u32>(24629u, 69974u, 34240u), vec2<u32>(4294967295u, 2131u), Struct_3(vec2<f32>(-841f, -823f), vec4<i32>(30749i, 0i, 28345i, -1i), Struct_2(Struct_1(true, 35641u), 1i, 533f, 1i), Struct_1(false, 7193u))), Struct_4(vec3<f32>(952f, 1047f, -1395f), false, vec3<u32>(1u, 32006u, 43413u), vec2<u32>(4294967295u, 40427u), Struct_3(vec2<f32>(2063f, -259f), vec4<i32>(1i, -20621i, -18358i, -34747i), Struct_2(Struct_1(true, 4294967295u), -11238i, -1216f, 56682i), Struct_1(false, 0u))), Struct_4(vec3<f32>(944f, -526f, -180f), true, vec3<u32>(4294967295u, 34925u, 4294967295u), vec2<u32>(79001u, 1u), Struct_3(vec2<f32>(-1637f, 638f), vec4<i32>(1i, 1i, 1i, 1i), Struct_2(Struct_1(false, 7611u), -25206i, -108f, 15519i), Struct_1(true, 65213u))), Struct_4(vec3<f32>(-289f, 413f, -271f), true, vec3<u32>(22819u, 4294967295u, 4294967295u), vec2<u32>(49578u, 0u), Struct_3(vec2<f32>(284f, 1000f), vec4<i32>(0i, -28758i, 15248i, 46241i), Struct_2(Struct_1(false, 7947u), 64574i, 211f, 35590i), Struct_1(true, 12992u))), Struct_4(vec3<f32>(499f, 341f, -2245f), true, vec3<u32>(0u, 35536u, 0u), vec2<u32>(66112u, 37857u), Struct_3(vec2<f32>(-266f, -1000f), vec4<i32>(-49283i, -62571i, -3211i, 2147483647i), Struct_2(Struct_1(false, 28684u), -1i, 447f, 0i), Struct_1(true, 4294967295u))), Struct_4(vec3<f32>(1796f, 697f, -395f), false, vec3<u32>(4294967295u, 58558u, 37860u), vec2<u32>(46079u, 0u), Struct_3(vec2<f32>(-680f, 718f), vec4<i32>(-1i, -28226i, 2147483647i, -3624i), Struct_2(Struct_1(false, 4294967295u), 74347i, 477f, -1i), Struct_1(false, 25350u))), Struct_4(vec3<f32>(1011f, 1000f, 1577f), true, vec3<u32>(1u, 44395u, 75783u), vec2<u32>(0u, 0u), Struct_3(vec2<f32>(-725f, 160f), vec4<i32>(2147483647i, 1i, 2147483647i, 27185i), Struct_2(Struct_1(true, 0u), -48488i, 1231f, 1i), Struct_1(false, 1u))), Struct_4(vec3<f32>(2252f, -421f, 1271f), true, vec3<u32>(3950u, 1u, 4691u), vec2<u32>(1u, 46614u), Struct_3(vec2<f32>(2508f, 472f), vec4<i32>(-1i, -16533i, i32(-2147483648), 2088i), Struct_2(Struct_1(false, 0u), 4471i, 775f, 13877i), Struct_1(true, 1u))));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1) -> vec3<bool> {
    global2 = firstLeadingBit(-(~firstTrailingBit(u_input.a.x >> (0u % 32u))));
    global0 = array<Struct_2, 3>();
    global1 = array<f32, 16>();
    global0 = array<Struct_2, 3>();
    let var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(0u, 16u)], global1[_wgslsmith_index_u32(0u, 16u)]) - _wgslsmith_div_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(arg_0.b, 16u)], -1556f), vec2<f32>(global1[_wgslsmith_index_u32(97615u, 16u)], -357f))) - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-941f, -1152f)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-560f, -640f)))))))), vec4<i32>(u_input.a.x, 30962i << (~_wgslsmith_sub_u32(23450u, arg_0.b) % 32u), -1i, _wgslsmith_dot_vec2_i32((vec2<i32>(u_input.a.x, u_input.a.x) >> (vec2<u32>(0u, 20544u) % vec2<u32>(32u))) | (vec2<i32>(0i, u_input.a.x) >> (vec2<u32>(1u, 24744u) % vec2<u32>(32u))), ~u_input.a.yw)), Struct_2(arg_0, u_input.c.x, global1[_wgslsmith_index_u32(arg_0.b, 16u)], 29759i), Struct_1(true, arg_0.b));
    return !(!(!vec3<bool>(all(vec3<bool>(var_0.d.a, false, var_0.d.a)), var_0.c.c == 1725f, true)));
}

fn func_2() -> f32 {
    global0 = array<Struct_2, 3>();
    var var_0 = !select(!vec3<bool>(true, any(vec4<bool>(true, true, true, true)), all(vec3<bool>(true, true, false))), vec3<bool>(true, true, true), !(!func_3(Struct_1(false, 24908u))));
    global0 = array<Struct_2, 3>();
    return -541f;
}

fn func_1(arg_0: Struct_1, arg_1: vec2<u32>) -> bool {
    var var_0 = -5331i;
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-877f, 1052f, 1000f) * vec3<f32>(1000f, global1[_wgslsmith_index_u32(u_input.b.x, 16u)], global1[_wgslsmith_index_u32(u_input.b.x, 16u)]))) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(arg_1.x, 16u)], -1774f, global1[_wgslsmith_index_u32(4489u, 16u)]) - vec3<f32>(global1[_wgslsmith_index_u32(4294967295u, 16u)], 1750f, 157f)))))) - vec3<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(arg_1.x, 16u)]), _wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(arg_0.b << (107813u % 32u), 16u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2()), global1[_wgslsmith_index_u32(arg_0.b | arg_0.b, 16u)]))), _wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(u_input.b.x, 16u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(14108u, 16u)])))))));
    global2 = u_input.a.x;
    let var_2 = _wgslsmith_clamp_vec2_u32(abs(arg_1), vec2<u32>(1u, 7659u), abs(reverseBits(vec2<u32>(arg_1.x, 1u) & ~vec2<u32>(80603u, 49264u))));
    return all(vec4<bool>(_wgslsmith_clamp_u32(~arg_1.x, ~var_2.x, abs(var_2.x)) != ~4294967295u, false, false, arg_0.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 0i & u_input.a.x;
    var var_1 = select(-reverseBits(_wgslsmith_add_i32(countOneBits(u_input.c.x), reverseBits(u_input.a.x))), u_input.c.x, any(select(vec4<bool>(true, false, func_1(Struct_1(true, u_input.b.x), u_input.b.wy), false), !select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false)), true)));
    var var_2 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~(~(~vec3<u32>(u_input.b.x, 1u, u_input.b.x))), _wgslsmith_mod_vec3_u32(~(u_input.b.xzz & u_input.b.xyy) << (abs(select(vec3<u32>(u_input.b.x, u_input.b.x, 4294967295u), vec3<u32>(4294967295u, u_input.b.x, 1u), vec3<bool>(false, false, false))) % vec3<u32>(32u)), min(vec3<u32>(u_input.b.x >> (1u % 32u), max(524u, u_input.b.x), u_input.b.x << (u_input.b.x % 32u)), u_input.b.wwz))), 16u)];
    var var_3 = vec4<i32>(firstLeadingBit(_wgslsmith_mod_i32(~_wgslsmith_add_i32(u_input.c.x, -2147483647i), _wgslsmith_mult_i32(~u_input.c.x, u_input.a.x))), 1i, firstLeadingBit(_wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.c.x, 18297i), ~u_input.a.zx)) >> (0u % 32u), u_input.c.x);
    var_0 = _wgslsmith_mult_i32(2147483647i, _wgslsmith_mult_i32(1i, select(var_3.x, max(u_input.a.x, -1i), 1i < u_input.a.x)) | _wgslsmith_clamp_i32(0i, u_input.c.x, _wgslsmith_add_i32(~u_input.c.x, -2147483647i)));
    var var_4 = vec3<f32>(508f, _wgslsmith_f_op_f32(224f - _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.b.x, 16u)])), global1[_wgslsmith_index_u32(~u_input.b.x, 16u)]);
    global3 = array<Struct_4, 15>();
    var var_5 = !(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, any(vec4<bool>(false, false, true, true))), false));
    let x = u_input.a;
    s_output = StorageBuffer((~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, 48531u, 1u, 37438u), vec4<u32>(1u, u_input.b.x, 0u, 1u)) >> (u_input.b % vec4<u32>(32u))) ^ vec4<u32>(1u, 1u & firstTrailingBit(59262u), ~u_input.b.x, ~u_input.b.x), ~u_input.b.x);
}

