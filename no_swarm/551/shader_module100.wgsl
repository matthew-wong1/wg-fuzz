struct Struct_1 {
    a: vec4<i32>,
    b: vec2<i32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: Struct_1,
    d: vec3<f32>,
    e: f32,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec4<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<i32>,
    d: f32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 8> = array<Struct_2, 8>(Struct_2(Struct_1(vec4<i32>(-7004i, -70736i, -55343i, 4513i), vec2<i32>(i32(-2147483648), 1i), 324f)), Struct_2(Struct_1(vec4<i32>(-18401i, 2147483647i, 9034i, 0i), vec2<i32>(-3600i, 43614i), -1165f)), Struct_2(Struct_1(vec4<i32>(-1i, -17810i, 45050i, 2147483647i), vec2<i32>(0i, -15037i), -744f)), Struct_2(Struct_1(vec4<i32>(-21132i, 1i, 53337i, -1i), vec2<i32>(-8284i, -12162i), -1742f)), Struct_2(Struct_1(vec4<i32>(38445i, 20677i, -34588i, 2147483647i), vec2<i32>(28400i, -6499i), 187f)), Struct_2(Struct_1(vec4<i32>(-2882i, i32(-2147483648), 0i, 2147483647i), vec2<i32>(24949i, 21670i), -730f)), Struct_2(Struct_1(vec4<i32>(-1980i, 22286i, 0i, 0i), vec2<i32>(2147483647i, 37079i), -948f)), Struct_2(Struct_1(vec4<i32>(-32315i, -1i, -9705i, -42704i), vec2<i32>(7045i, -1i), 429f)));

var<private> global1: array<vec3<f32>, 29> = array<vec3<f32>, 29>(vec3<f32>(-1000f, -2627f, 687f), vec3<f32>(932f, 1385f, 111f), vec3<f32>(195f, -2195f, 1267f), vec3<f32>(344f, -156f, 412f), vec3<f32>(-712f, 552f, -133f), vec3<f32>(982f, 1235f, -1330f), vec3<f32>(860f, -723f, 992f), vec3<f32>(1182f, -976f, 179f), vec3<f32>(1030f, 1222f, -1178f), vec3<f32>(483f, -450f, -1992f), vec3<f32>(651f, 505f, 2049f), vec3<f32>(-1000f, 605f, 1000f), vec3<f32>(-123f, 983f, -1000f), vec3<f32>(1172f, -1307f, -286f), vec3<f32>(-1000f, 188f, 891f), vec3<f32>(521f, -303f, -1915f), vec3<f32>(1253f, -1020f, 1082f), vec3<f32>(1000f, -519f, 504f), vec3<f32>(1438f, 663f, 446f), vec3<f32>(-606f, 707f, -705f), vec3<f32>(1352f, -1055f, -855f), vec3<f32>(-1302f, 1006f, -176f), vec3<f32>(-1056f, 705f, -815f), vec3<f32>(-802f, -786f, 397f), vec3<f32>(-1326f, -778f, -1750f), vec3<f32>(-308f, -976f, 1182f), vec3<f32>(260f, -1000f, 1180f), vec3<f32>(1031f, -133f, 564f), vec3<f32>(640f, -1000f, 938f));

var<private> global2: i32;

var<private> global3: array<Struct_4, 13> = array<Struct_4, 13>(Struct_4(vec4<bool>(false, true, true, true), vec4<i32>(-28207i, i32(-2147483648), 0i, 18602i), Struct_1(vec4<i32>(1i, 0i, -12337i, -26257i), vec2<i32>(2147483647i, 0i), -554f)), Struct_4(vec4<bool>(false, false, false, false), vec4<i32>(1i, 1i, -36494i, 30202i), Struct_1(vec4<i32>(1i, 3602i, -46253i, i32(-2147483648)), vec2<i32>(0i, -10757i), 1746f)), Struct_4(vec4<bool>(false, true, true, false), vec4<i32>(40675i, 2147483647i, -41668i, -1i), Struct_1(vec4<i32>(0i, -1i, i32(-2147483648), -8500i), vec2<i32>(0i, 19109i), -657f)), Struct_4(vec4<bool>(true, true, false, false), vec4<i32>(2147483647i, i32(-2147483648), 2147483647i, -1i), Struct_1(vec4<i32>(-39029i, 2147483647i, -30868i, 0i), vec2<i32>(-34327i, -1i), 1361f)), Struct_4(vec4<bool>(false, true, false, true), vec4<i32>(2147483647i, 47200i, 1i, 1i), Struct_1(vec4<i32>(-1i, -1i, 28128i, -16214i), vec2<i32>(2147483647i, 0i), 1165f)), Struct_4(vec4<bool>(true, true, true, false), vec4<i32>(2147483647i, -43280i, 2147483647i, 1i), Struct_1(vec4<i32>(-13652i, -81329i, i32(-2147483648), -11930i), vec2<i32>(30233i, 1i), 325f)), Struct_4(vec4<bool>(false, true, false, true), vec4<i32>(-12600i, 1i, 2147483647i, -47433i), Struct_1(vec4<i32>(2147483647i, -31457i, 35477i, 1i), vec2<i32>(-52810i, -23641i), 1273f)), Struct_4(vec4<bool>(true, true, false, false), vec4<i32>(1i, i32(-2147483648), 16908i, -1i), Struct_1(vec4<i32>(1i, -1i, -19544i, 1787i), vec2<i32>(-1i, -8936i), 408f)), Struct_4(vec4<bool>(false, false, false, false), vec4<i32>(-44544i, -6481i, 0i, 0i), Struct_1(vec4<i32>(0i, 0i, -37500i, 25475i), vec2<i32>(-15312i, -57010i), -680f)), Struct_4(vec4<bool>(true, true, true, false), vec4<i32>(43902i, 25351i, -1i, -53136i), Struct_1(vec4<i32>(-2641i, 0i, -8900i, 10786i), vec2<i32>(2147483647i, -20706i), -173f)), Struct_4(vec4<bool>(true, false, true, false), vec4<i32>(1i, 34156i, i32(-2147483648), -1i), Struct_1(vec4<i32>(0i, 22914i, 1i, 0i), vec2<i32>(17972i, 2147483647i), 280f)), Struct_4(vec4<bool>(false, false, true, false), vec4<i32>(1i, i32(-2147483648), 1i, 1i), Struct_1(vec4<i32>(-1i, 27130i, -1401i, 7343i), vec2<i32>(i32(-2147483648), -14071i), 1000f)), Struct_4(vec4<bool>(false, false, true, false), vec4<i32>(-23183i, -1i, 24408i, -23558i), Struct_1(vec4<i32>(17297i, i32(-2147483648), 0i, i32(-2147483648)), vec2<i32>(11859i, 1653i), -992f)));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<u32>, arg_1: i32) -> i32 {
    let var_0 = Struct_3(-1067f, global0[_wgslsmith_index_u32(~(~arg_0.x), 8u)], Struct_1(vec4<i32>(~1i, 50784i, arg_1, ~_wgslsmith_clamp_i32(18551i, 24235i, -34899i)), -vec2<i32>(arg_1, arg_1), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(936f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_div_f32(-266f, 737f), -436f, _wgslsmith_f_op_f32(f32(-1f) * -2855f)), _wgslsmith_f_op_vec3_f32(global1[_wgslsmith_index_u32(abs(u_input.d), 29u)] + vec3<f32>(-835f, -1735f, 316f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -659f)));
    let var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a))));
    global1 = array<vec3<f32>, 29>();
    let var_2 = global0[_wgslsmith_index_u32(arg_0.x, 8u)];
    var var_3 = -u_input.b;
    return abs(var_2.a.b.x);
}

fn func_2(arg_0: f32) -> Struct_3 {
    var var_0 = _wgslsmith_mult_vec4_i32(vec4<i32>(max(u_input.a & u_input.a, -u_input.b.x), u_input.b.x, abs(~(-1718i)), ~(~(-u_input.a))), select(vec4<i32>(~func_3(vec3<u32>(u_input.d, u_input.c, u_input.c), 46613i), _wgslsmith_sub_i32(u_input.a, select(u_input.b.x, u_input.a, false)), u_input.a, u_input.b.x), vec4<i32>(-u_input.b.x | 2147483647i, ~(-1i), u_input.b.x, u_input.a), all(vec2<bool>(true, true))));
    var var_1 = Struct_3(arg_0, global0[_wgslsmith_index_u32(~countOneBits(u_input.c), 8u)], Struct_1(vec4<i32>(-1i, 1i, -2147483647i, -1i), u_input.b, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(arg_0))))), _wgslsmith_f_op_vec3_f32(-global1[_wgslsmith_index_u32(~(~u_input.d), 29u)]), 1759f);
    global1 = array<vec3<f32>, 29>();
    global1 = array<vec3<f32>, 29>();
    global3 = array<Struct_4, 13>();
    return Struct_3(-669f, var_1.b, Struct_1(var_1.c.a, _wgslsmith_mod_vec2_i32(var_0.xz, vec2<i32>(2147483647i, -3198i)) >> (_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.d, 0u), ~vec2<u32>(4294967295u, 9004u)) % vec2<u32>(32u)), 1000f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(673f, arg_0, var_1.e))))) + _wgslsmith_div_vec3_f32(var_1.d, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(var_1.d, vec3<f32>(1492f, 363f, var_1.a), false)) - global1[_wgslsmith_index_u32(u_input.c & u_input.d, 29u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -315f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1222f, -368f), arg_0, false)) + arg_0)));
}

fn func_1(arg_0: Struct_3, arg_1: vec2<i32>) -> vec3<bool> {
    let var_0 = vec3<u32>(~(~min(0u, 1u)), _wgslsmith_dot_vec4_u32(~_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.d, 141402u, 7439u, 4294967295u), ~vec4<u32>(u_input.c, 92624u, u_input.d, 5199u)), abs(~vec4<u32>(0u, 14887u, u_input.c, u_input.c))), 0u);
    let var_1 = func_2(-733f);
    global1 = array<vec3<f32>, 29>();
    let var_2 = var_1.d.zz;
    let var_3 = any(!select(vec2<bool>(var_0.x < u_input.c, true), vec2<bool>(true, true), any(vec3<bool>(false, true, false))));
    return vec3<bool>(var_3, var_3, !(!var_3));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(select(vec4<i32>(u_input.b.x, 30804i, -1i, u_input.a) >> (_wgslsmith_div_vec4_u32(vec4<u32>(u_input.c, 4299u, u_input.d, u_input.d), vec4<u32>(6264u, 4294967295u, 4294967295u, 24416u)) % vec4<u32>(32u)), vec4<i32>(_wgslsmith_add_i32(2147483647i, u_input.a), -2147483647i, -u_input.b.x, 2147483647i), select(vec4<bool>(true, true, true, false), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), false), true)), abs(vec2<i32>(u_input.a, u_input.a)), _wgslsmith_f_op_f32(-689f * _wgslsmith_f_op_f32(round(-514f)))));
    var var_1 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.c, var_0.a.c, 161f) - vec3<f32>(1185f, var_0.a.c, var_0.a.c)) - _wgslsmith_f_op_vec3_f32(min(global1[_wgslsmith_index_u32(58724u, 29u)], vec3<f32>(450f, var_0.a.c, var_0.a.c)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(622f, -922f, 1506f))) * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1[_wgslsmith_index_u32(u_input.c, 29u)]) + _wgslsmith_f_op_vec3_f32(global1[_wgslsmith_index_u32(u_input.c, 29u)] - vec3<f32>(var_0.a.c, var_0.a.c, 248f))), vec3<f32>(_wgslsmith_div_f32(var_0.a.c, var_0.a.c), -1103f, -104f))))));
    let var_2 = -_wgslsmith_clamp_vec3_i32(vec3<i32>(19949i, var_0.a.a.x, _wgslsmith_mod_i32(11592i, _wgslsmith_add_i32(22561i, 15711i))), -vec3<i32>(var_0.a.a.x, 2147483647i, -9892i) >> (select(vec3<u32>(69956u, 24081u, 1u), vec3<u32>(70649u, u_input.d, 21258u), func_1(Struct_3(-637f, global0[_wgslsmith_index_u32(1722u, 8u)], var_0.a, vec3<f32>(var_1.x, -1012f, var_1.x), var_1.x), vec2<i32>(var_0.a.b.x, var_0.a.b.x))) % vec3<u32>(32u)), var_0.a.a.zyy);
    let var_3 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-557f - var_0.a.c)), Struct_2(Struct_1(min(vec4<i32>(var_2.x, -1i, 48797i, 7285i), var_0.a.a), -(vec2<i32>(var_0.a.a.x, var_2.x) & var_0.a.b), var_1.x)), Struct_1(vec4<i32>(var_0.a.b.x, -var_2.x, -49228i, var_0.a.a.x) ^ var_0.a.a, ~vec2<i32>(1i, -1i), -2013f), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(min(_wgslsmith_add_u32(~u_input.c, u_input.c), firstTrailingBit(reverseBits(1u))), _wgslsmith_clamp_u32(1u, _wgslsmith_add_u32(92475u, u_input.d), ~4294967295u)), 29u)], _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(2698f)))));
    let var_4 = global0[_wgslsmith_index_u32(~(~18051u), 8u)];
    global1 = array<vec3<f32>, 29>();
    let var_5 = 4467i;
    let var_6 = var_4.a.c;
    let var_7 = var_3.b.a.b;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d, vec3<u32>(_wgslsmith_mod_u32(u_input.c, u_input.c), 99964u, u_input.c), var_3.c.a.zzx, _wgslsmith_f_op_f32(383f - var_1.x), vec4<i32>(u_input.b.x, -54784i, countOneBits(22834i), -firstLeadingBit(abs(var_5))));
}

