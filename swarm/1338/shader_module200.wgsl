struct Struct_1 {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: vec2<i32>,
    e: f32,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: f32,
    d: vec4<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: vec2<bool>,
    c: Struct_2,
    d: vec4<u32>,
    e: vec4<bool>,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_3,
    c: Struct_4,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 7> = array<vec2<u32>, 7>(vec2<u32>(22259u, 4294967295u), vec2<u32>(10010u, 1u), vec2<u32>(1u, 3571u), vec2<u32>(0u, 0u), vec2<u32>(112271u, 14486u), vec2<u32>(11254u, 110744u), vec2<u32>(1u, 44832u));

var<private> global1: array<Struct_3, 25>;

var<private> global2: array<u32, 23>;

var<private> global3: array<Struct_5, 7>;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_2(arg_0: Struct_4, arg_1: Struct_1, arg_2: Struct_5, arg_3: vec3<i32>) -> Struct_2 {
    global0 = array<vec2<u32>, 7>();
    global3 = array<Struct_5, 7>();
    let var_0 = Struct_1(43093u, ~0i & arg_1.b, arg_0.c.e.c, arg_3.zy, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1281f + _wgslsmith_f_op_f32(max(arg_0.a, -1671f)))))));
    let var_1 = Struct_3(arg_2.c.c.e);
    global0 = array<vec2<u32>, 7>();
    return arg_2.a.c;
}

fn func_3(arg_0: bool, arg_1: f32, arg_2: Struct_5) -> bool {
    global1 = array<Struct_3, 25>();
    var var_0 = Struct_3(Struct_1(abs(countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(10103u, u_input.a.x), global0[_wgslsmith_index_u32(arg_2.a.c.e.c.x, 7u)]))), -_wgslsmith_sub_i32(2147483647i, 29344i), ~select(vec2<u32>(14530u, global2[_wgslsmith_index_u32(u_input.b, 23u)]), vec2<u32>(4294967295u, 0u), true), arg_2.b.a.d, _wgslsmith_f_op_f32(trunc(1484f))));
    let var_1 = Struct_2(false, _wgslsmith_mod_i32(arg_2.b.a.b, -9016i), var_0.a.e, !(!select(!arg_2.c.e, select(vec4<bool>(arg_2.a.c.d.x, arg_2.a.b.x, false, false), arg_2.a.e, arg_2.a.e), !arg_2.a.c.d.x)), Struct_1(global2[_wgslsmith_index_u32(abs(~var_0.a.c.x), 23u)], -2147483647i, firstTrailingBit(var_0.a.c), _wgslsmith_sub_vec2_i32(arg_2.a.c.e.d, select(vec2<i32>(arg_2.b.a.b, var_0.a.b) ^ vec2<i32>(-2147483647i, var_0.a.d.x), vec2<i32>(0i, -49429i), !arg_2.c.e.zy)), _wgslsmith_f_op_f32(var_0.a.e * 1000f)));
    let var_2 = Struct_4(_wgslsmith_div_f32(_wgslsmith_div_f32(-264f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.c.c.c - 1201f))), _wgslsmith_f_op_f32(-arg_1)), select(!(!vec2<bool>(arg_0, false)), vec2<bool>(false, all(vec2<bool>(arg_2.a.c.d.x, arg_0))), arg_0), Struct_2(!(arg_2.b.a.e == _wgslsmith_f_op_f32(ceil(arg_1))), _wgslsmith_add_i32(arg_2.b.a.d.x, func_2(arg_2.a, var_1.e, global3[_wgslsmith_index_u32(~14717u, 7u)], -vec3<i32>(-9134i, 2147483647i, var_0.a.b)).e.d.x), arg_1, func_2(Struct_4(-194f, vec2<bool>(var_1.d.x, true), Struct_2(var_1.d.x, 0i, var_0.a.e, vec4<bool>(var_1.d.x, var_1.d.x, false, true), arg_2.b.a), arg_2.a.d, func_2(arg_2.a, var_0.a, Struct_5(arg_2.c, arg_2.b, arg_2.c), vec3<i32>(1i, 1i, 4367i)).d), arg_2.a.c.e, Struct_5(Struct_4(var_1.c, arg_2.a.e.xx, var_1, arg_2.a.d, vec4<bool>(arg_0, false, var_1.d.x, true)), global1[_wgslsmith_index_u32(0u, 25u)], Struct_4(-218f, arg_2.a.e.yy, var_1, vec4<u32>(var_1.e.c.x, var_0.a.a, u_input.a.x, global2[_wgslsmith_index_u32(60347u, 23u)]), vec4<bool>(true, arg_2.c.b.x, false, var_1.a))), reverseBits(-vec3<i32>(-19440i, -2147483647i, 32009i))).d, func_2(arg_2.a, var_1.e, arg_2, -firstTrailingBit(vec3<i32>(u_input.d, arg_2.c.c.e.d.x, -34242i))).e), vec4<u32>(~1u, u_input.b, ~18273u, _wgslsmith_dot_vec2_u32(~abs(vec2<u32>(0u, 74566u)), ~vec2<u32>(arg_2.c.c.e.a, 14621u))), arg_2.a.c.d);
    let var_3 = u_input.c;
    return var_2.c.d.x;
}

fn func_1(arg_0: i32) -> Struct_5 {
    var var_0 = vec3<bool>(func_3(true, -239f, Struct_5(Struct_4(_wgslsmith_f_op_f32(round(1414f)), vec2<bool>(false, true), func_2(Struct_4(-1534f, vec2<bool>(true, true), Struct_2(false, u_input.d, 2240f, vec4<bool>(true, true, false, false), Struct_1(u_input.c, u_input.d, global0[_wgslsmith_index_u32(u_input.c, 7u)], vec2<i32>(20865i, arg_0), 225f)), vec4<u32>(u_input.b, 84451u, 33986u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(14067u, 23u)], 23u)]), vec4<bool>(true, true, true, true)), Struct_1(u_input.a.x, 15655i, global0[_wgslsmith_index_u32(1u, 7u)], vec2<i32>(-2147483647i, -1i), 191f), Struct_5(Struct_4(131f, vec2<bool>(false, true), Struct_2(false, -2147483647i, -481f, vec4<bool>(false, false, true, false), Struct_1(u_input.b, -1i, vec2<u32>(1u, 1u), vec2<i32>(arg_0, arg_0), 1302f)), vec4<u32>(59096u, 1u, 27354u, 47895u), vec4<bool>(false, false, true, true)), global1[_wgslsmith_index_u32(41007u, 25u)], Struct_4(1123f, vec2<bool>(true, true), Struct_2(true, arg_0, -955f, vec4<bool>(true, true, true, false), Struct_1(4294967295u, 41901i, vec2<u32>(u_input.b, u_input.a.x), vec2<i32>(42437i, u_input.d), 390f)), vec4<u32>(4294967295u, 18617u, 1u, 4294967295u), vec4<bool>(true, true, false, false))), vec3<i32>(1i, -1i, 14027i)), vec4<u32>(u_input.b, 44389u, u_input.c, 920u), vec4<bool>(true, true, true, true)), global1[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(0u, 23u)], 25u)], Struct_4(_wgslsmith_f_op_f32(528f + -1312f), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false)), Struct_2(false, arg_0, -1745f, vec4<bool>(false, false, true, false), Struct_1(0u, u_input.d, vec2<u32>(4294967295u, global2[_wgslsmith_index_u32(u_input.c, 23u)]), vec2<i32>(-2999i, u_input.d), 632f)), ~vec4<u32>(28835u, 61174u, 4294967295u, 5520u), vec4<bool>(true, false, false, true)))), 0u < (select(_wgslsmith_mod_u32(global2[_wgslsmith_index_u32(1u, 23u)], 33535u), 1u, true) << (global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(u_input.c, 23u)], u_input.b, 1u, u_input.b), vec4<u32>(global2[_wgslsmith_index_u32(1u, 23u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(43605u, 23u)], 23u)], u_input.b, 4294967295u)), 23u)] % 32u)), any(vec4<bool>(all(vec3<bool>(true, true, true)), true, all(func_2(Struct_4(1518f, vec2<bool>(true, true), Struct_2(false, -33013i, -1488f, vec4<bool>(true, true, true, false), Struct_1(global2[_wgslsmith_index_u32(24136u, 23u)], u_input.d, vec2<u32>(global2[_wgslsmith_index_u32(6906u, 23u)], 0u), vec2<i32>(28709i, -9565i), -1866f)), vec4<u32>(u_input.b, u_input.c, u_input.b, global2[_wgslsmith_index_u32(4294967295u, 23u)]), vec4<bool>(true, false, false, true)), Struct_1(29372u, u_input.d, vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 23u)], 23u)], global2[_wgslsmith_index_u32(41400u, 23u)]), vec2<i32>(u_input.d, 42696i), -753f), Struct_5(Struct_4(-1522f, vec2<bool>(false, true), Struct_2(false, -2147483647i, 1041f, vec4<bool>(true, false, false, false), Struct_1(0u, 16254i, global0[_wgslsmith_index_u32(1u, 7u)], vec2<i32>(-1i, 2147483647i), 564f)), vec4<u32>(u_input.c, global2[_wgslsmith_index_u32(u_input.b, 23u)], 0u, 13987u), vec4<bool>(false, true, true, true)), global1[_wgslsmith_index_u32(u_input.b, 25u)], Struct_4(-502f, vec2<bool>(true, false), Struct_2(false, -67646i, 1588f, vec4<bool>(false, false, false, true), Struct_1(global2[_wgslsmith_index_u32(u_input.a.x, 23u)], -1i, global0[_wgslsmith_index_u32(82042u, 7u)], vec2<i32>(arg_0, -2147483647i), 1127f)), vec4<u32>(4294967295u, u_input.b, 74355u, global2[_wgslsmith_index_u32(4294967295u, 23u)]), vec4<bool>(true, true, true, false))), vec3<i32>(-62034i, arg_0, arg_0)).d.xy), -8458i != max(-50316i, u_input.d))));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-211f, 1144f, -255f, -463f)) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(1024f, 918f, 415f, 2019f) - vec4<f32>(-1220f, 2641f, 1062f, 807f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-126f, 1000f, 1330f, -859f), vec4<f32>(-564f, -171f, 1306f, 509f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1410f, -540f, -231f, 141f) * vec4<f32>(-243f, 721f, 868f, -1736f))))) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1207f - 403f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2137f))), -2073f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-226f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(129f, -1131f)) * _wgslsmith_f_op_f32(sign(-1150f))))));
    let var_2 = vec3<i32>(-1i) * -vec3<i32>(1i, u_input.d >> (u_input.a.x % 32u), 10953i);
    let var_3 = abs(~select(-abs(vec4<i32>(u_input.d, var_2.x, arg_0, -17971i)), vec4<i32>(1i, u_input.d, -736i, arg_0) << (_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c, 75947u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 23u)], 23u)], 53326u), vec4<u32>(4294967295u, global2[_wgslsmith_index_u32(u_input.c, 23u)], u_input.b, 4294967295u)) % vec4<u32>(32u)), vec4<bool>(var_0.x == var_0.x, var_0.x & true, any(vec3<bool>(var_0.x, var_0.x, false)), var_0.x)));
    var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, var_1.x, -638f)) * _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1002f, var_1.x, 1386f, var_1.x)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(175f, -325f, var_1.x, 1346f))))) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - -875f)), var_1.x, -841f, var_1.x))));
    return global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~u_input.a.x >> (u_input.b % 32u), 4294967295u, 4294967295u), 7u)];
}

fn func_4(arg_0: Struct_5) -> Struct_1 {
    global3 = array<Struct_5, 7>();
    var var_0 = -vec2<i32>(firstTrailingBit(-arg_0.a.c.e.d.x), ~_wgslsmith_mult_i32(-arg_0.a.c.e.d.x, arg_0.a.c.e.d.x));
    global3 = array<Struct_5, 7>();
    var_0 = arg_0.c.c.e.d;
    var var_1 = false;
    return arg_0.b.a;
}

fn func_5(arg_0: Struct_3, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: vec3<u32>) -> u32 {
    global0 = array<vec2<u32>, 7>();
    global0 = array<vec2<u32>, 7>();
    let var_0 = Struct_3(Struct_1(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(u_input.a, _wgslsmith_sub_vec3_u32(vec3<u32>(0u, u_input.b, 1u), vec3<u32>(arg_2.a, 18314u, 1u))), arg_2.a), _wgslsmith_dot_vec4_i32(select(vec4<i32>(arg_0.a.d.x, u_input.d, u_input.d, 0i) & vec4<i32>(2147483647i, arg_0.a.d.x, -35204i, -1i), vec4<i32>(arg_2.d.x, arg_0.a.d.x, 43668i, 49462i), true), vec4<i32>(~5413i, 32053i, _wgslsmith_add_i32(u_input.d, arg_0.a.d.x), arg_0.a.b)), min(arg_0.a.c, abs(min(u_input.a.xz, u_input.a.yz))), ~_wgslsmith_mult_vec2_i32(arg_0.a.d | vec2<i32>(53459i, 2147483647i), select(arg_0.a.d, arg_2.d, vec2<bool>(true, false))), _wgslsmith_f_op_f32(floor(arg_0.a.e))));
    var var_1 = min(select(_wgslsmith_clamp_vec4_u32(firstLeadingBit(reverseBits(vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_3.x, 23u)], 23u)], 2942u, u_input.c, 1u))), ~(~vec4<u32>(arg_3.x, 1u, 38600u, u_input.b)), ~vec4<u32>(u_input.a.x, arg_0.a.a, 0u, arg_2.c.x)), vec4<u32>(~(u_input.a.x ^ var_0.a.c.x), arg_2.a, 56219u, ~arg_0.a.a), select(vec4<bool>(false, true, all(vec3<bool>(false, false, false)), func_3(false, -465f, Struct_5(Struct_4(arg_0.a.e, vec2<bool>(false, false), Struct_2(true, -2147483647i, arg_0.a.e, vec4<bool>(false, true, true, true), Struct_1(global2[_wgslsmith_index_u32(66399u, 23u)], -2147483647i, arg_0.a.c, vec2<i32>(-6097i, 0i), arg_1.x)), vec4<u32>(1u, 0u, arg_3.x, global2[_wgslsmith_index_u32(4294967295u, 23u)]), vec4<bool>(true, true, true, false)), arg_0, Struct_4(2146f, vec2<bool>(true, true), Struct_2(false, -2147483647i, arg_2.e, vec4<bool>(false, true, true, false), Struct_1(0u, 2147483647i, arg_3.yz, vec2<i32>(var_0.a.d.x, -42643i), var_0.a.e)), vec4<u32>(u_input.a.x, 4294967295u, 71953u, 1u), vec4<bool>(true, false, true, false))))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(true, func_3(false, arg_1.x, global3[_wgslsmith_index_u32(13669u, 7u)]), var_0.a.e != var_0.a.e, false))), firstLeadingBit(~(~vec4<u32>(u_input.b, u_input.a.x, 1u, 44358u))));
    var var_2 = vec3<u32>(~_wgslsmith_add_u32(0u ^ arg_2.a, firstLeadingBit(4294967295u)), ~arg_0.a.a, _wgslsmith_dot_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 9775u, 34236u, 1u), _wgslsmith_add_vec4_u32(vec4<u32>(51870u, arg_2.a, 9758u, 95853u), vec4<u32>(arg_0.a.c.x, var_1.x, arg_3.x, 0u))), _wgslsmith_add_vec4_u32(vec4<u32>(abs(40835u), 1u, 25340u, ~49753u), abs(vec4<u32>(global2[_wgslsmith_index_u32(33031u, 23u)], arg_0.a.c.x, u_input.a.x, 1u)))));
    return ~((global2[_wgslsmith_index_u32(4294967295u | global2[_wgslsmith_index_u32(arg_2.c.x, 23u)], 23u)] | 48924u) ^ 8706u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<u32>, 7>();
    global1 = array<Struct_3, 25>();
    let var_0 = -964f;
    var var_1 = Struct_1(_wgslsmith_mult_u32(func_5(Struct_3(Struct_1(global2[_wgslsmith_index_u32(u_input.c, 23u)], u_input.d, u_input.a.yx, vec2<i32>(-1i, u_input.d), var_0)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-432f, var_0, var_0)) + vec3<f32>(432f, -412f, var_0)), func_4(func_1(-28357i)), max(~vec3<u32>(15146u, u_input.c, u_input.a.x), countOneBits(u_input.a))), global2[_wgslsmith_index_u32(~(~global2[_wgslsmith_index_u32(21938u, 23u)] >> (~31690u % 32u)), 23u)]), u_input.d, u_input.a.zy, -(~_wgslsmith_mod_vec2_i32(~vec2<i32>(1i, 2147483647i), vec2<i32>(u_input.d, 12730i))), var_0);
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, var_1.e, var_0)) - _wgslsmith_div_vec3_f32(vec3<f32>(var_0, var_0, 497f), vec3<f32>(-1000f, 896f, var_0))))) + vec3<f32>(1222f, -165f, _wgslsmith_f_op_f32(round(-1263f))));
    var var_3 = !(!func_1(1i).a.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_u32(vec2<u32>(~1u, ~4294967295u), global0[_wgslsmith_index_u32(countOneBits(~78845u), 7u)]), -1i, _wgslsmith_f_op_f32(f32(-1f) * -1041f), ~var_1.b);
}

