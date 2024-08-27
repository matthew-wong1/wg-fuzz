struct Struct_1 {
    a: f32,
    b: bool,
    c: vec3<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: u32,
    d: vec2<bool>,
    e: vec3<f32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: f32,
    c: vec4<i32>,
    d: bool,
    e: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: bool,
    c: vec4<u32>,
    d: i32,
    e: u32,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 633f;

var<private> global1: array<Struct_2, 15> = array<Struct_2, 15>(Struct_2(vec2<bool>(false, false), Struct_1(456f, true, vec3<bool>(false, true, true)), 55339u, vec2<bool>(false, false), vec3<f32>(627f, -719f, -106f)), Struct_2(vec2<bool>(true, false), Struct_1(-136f, false, vec3<bool>(true, true, true)), 68140u, vec2<bool>(false, false), vec3<f32>(996f, 439f, 302f)), Struct_2(vec2<bool>(true, false), Struct_1(1239f, false, vec3<bool>(false, true, true)), 4294967295u, vec2<bool>(false, false), vec3<f32>(-805f, -907f, -2080f)), Struct_2(vec2<bool>(false, false), Struct_1(402f, false, vec3<bool>(true, false, false)), 29439u, vec2<bool>(false, false), vec3<f32>(100f, 209f, 2090f)), Struct_2(vec2<bool>(true, true), Struct_1(1428f, false, vec3<bool>(false, true, true)), 10153u, vec2<bool>(false, true), vec3<f32>(350f, -113f, 559f)), Struct_2(vec2<bool>(false, false), Struct_1(-574f, false, vec3<bool>(true, true, false)), 58507u, vec2<bool>(true, false), vec3<f32>(-867f, -631f, -760f)), Struct_2(vec2<bool>(false, true), Struct_1(-380f, true, vec3<bool>(true, false, false)), 1u, vec2<bool>(true, false), vec3<f32>(704f, -1000f, -625f)), Struct_2(vec2<bool>(true, false), Struct_1(-1327f, false, vec3<bool>(false, true, true)), 0u, vec2<bool>(true, false), vec3<f32>(1625f, -482f, 597f)), Struct_2(vec2<bool>(true, false), Struct_1(-719f, false, vec3<bool>(true, false, false)), 1u, vec2<bool>(true, false), vec3<f32>(778f, -1208f, 553f)), Struct_2(vec2<bool>(false, true), Struct_1(-522f, true, vec3<bool>(true, false, false)), 4294967295u, vec2<bool>(true, false), vec3<f32>(176f, 763f, 783f)), Struct_2(vec2<bool>(false, true), Struct_1(-874f, false, vec3<bool>(false, true, false)), 70527u, vec2<bool>(true, true), vec3<f32>(881f, 718f, -1000f)), Struct_2(vec2<bool>(false, true), Struct_1(-1674f, true, vec3<bool>(false, false, true)), 45347u, vec2<bool>(false, false), vec3<f32>(-1352f, -727f, 1881f)), Struct_2(vec2<bool>(false, false), Struct_1(1405f, false, vec3<bool>(false, true, false)), 3640u, vec2<bool>(false, true), vec3<f32>(-715f, 877f, -253f)), Struct_2(vec2<bool>(true, true), Struct_1(-741f, true, vec3<bool>(true, false, true)), 1u, vec2<bool>(false, true), vec3<f32>(243f, -385f, 607f)), Struct_2(vec2<bool>(false, true), Struct_1(1491f, true, vec3<bool>(false, false, true)), 4294967295u, vec2<bool>(true, false), vec3<f32>(539f, -639f, 1848f)));

var<private> global2: array<f32, 14> = array<f32, 14>(1362f, 909f, 267f, -519f, 398f, 872f, 1597f, -159f, -659f, 1000f, 135f, 302f, -1000f, -567f);

var<private> global3: array<u32, 9>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3, arg_2: u32) -> i32 {
    var var_0 = ~(~u_input.a.x);
    var var_1 = vec4<bool>(true, !arg_1.d, (arg_1.a.x > abs(min(-1i, 1i))) == any(vec2<bool>(any(vec3<bool>(true, arg_0.b, arg_1.d)), arg_1.d && arg_0.b)), true);
    let var_2 = select(-select(_wgslsmith_sub_vec3_i32(arg_1.c.zww, vec3<i32>(-2147483647i, 368i, arg_1.c.x)), vec3<i32>(arg_1.a.x, arg_1.a.x, 2147483647i), !var_1.x) ^ vec3<i32>(_wgslsmith_clamp_i32(~39080i, _wgslsmith_sub_i32(arg_1.c.x, 1i), 2147483647i), arg_1.c.x << (~u_input.a.x % 32u), arg_1.c.x), vec3<i32>(firstLeadingBit(arg_1.c.x), 2147483647i & -_wgslsmith_add_i32(arg_1.c.x, -599i), -1i), select(!select(!vec3<bool>(var_1.x, arg_1.d, arg_0.b), select(var_1.zxy, var_1.wwy, vec3<bool>(var_1.x, var_1.x, var_1.x)), all(var_1.xy)), arg_0.c, select(select(arg_1.e.c, vec3<bool>(var_1.x, arg_1.e.b, false), vec3<bool>(true, var_1.x, false)), var_1.xxx, !var_1.zzy)));
    global1 = array<Struct_2, 15>();
    let var_3 = var_2.x;
    return var_3;
}

fn func_2(arg_0: bool) -> Struct_1 {
    var var_0 = Struct_3(_wgslsmith_add_vec4_i32(vec4<i32>(-1i, 2147483647i, abs(4231i), 1i), vec4<i32>(abs(-20026i), func_3(Struct_1(-271f, false, vec3<bool>(true, arg_0, arg_0)), Struct_3(vec4<i32>(-2147483647i, -1i, -46171i, -19127i), -794f, vec4<i32>(-15498i, -2147483647i, 62896i, 44843i), false, Struct_1(2349f, false, vec3<bool>(true, false, true))), global3[_wgslsmith_index_u32(15651u, 9u)]), ~(-15237i), 1i) ^ select(-vec4<i32>(1i, -36686i, 43977i, -2147483647i), _wgslsmith_mod_vec4_i32(vec4<i32>(54979i, -1i, 45224i, 17818i), vec4<i32>(1i, -1i, 6287i, -2147483647i)), true)), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(11542u, 14u)] * global2[_wgslsmith_index_u32(u_input.a.x, 14u)]), ~vec4<i32>(_wgslsmith_clamp_i32(2147483647i, 1i, -646i), 1i, firstLeadingBit(-2147483647i), 28504i) >> (~vec4<u32>(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(110850u, 0u, u_input.a.x), u_input.a), firstLeadingBit(38035u), _wgslsmith_add_u32(u_input.a.x, u_input.a.x)) % vec4<u32>(32u)), all(vec3<bool>(arg_0, false, arg_0)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(firstLeadingBit(global3[_wgslsmith_index_u32(65234u, 9u)]), 9u)], 14u)]))), false, !select(vec3<bool>(false, arg_0, arg_0), vec3<bool>(true, true, true), arg_0)));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b)), all(vec2<bool>(false, arg_0)), select(vec3<bool>((u_input.a.x & 52398u) == global3[_wgslsmith_index_u32(u_input.a.x, 9u)], !all(vec4<bool>(arg_0, var_0.e.c.x, arg_0, true)), true), vec3<bool>(false, select(select(true, arg_0, false), true, true || arg_0), all(select(vec4<bool>(var_0.d, var_0.e.b, arg_0, true), vec4<bool>(arg_0, false, var_0.d, true), false))), select(var_0.e.c, vec3<bool>(13307u < global3[_wgslsmith_index_u32(0u, 9u)], true, !var_0.d), false | !arg_0)));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(trunc(-339f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(26562u, 14u)])), -1325f)));
    global1 = array<Struct_2, 15>();
    var var_3 = ~u_input.a.yz;
    return Struct_1(-897f, (firstLeadingBit(var_0.a.x) ^ (-1i | var_0.c.x)) < var_0.c.x, var_1.c);
}

fn func_4(arg_0: Struct_1) -> Struct_2 {
    global2 = array<f32, 14>();
    var var_0 = Struct_2(func_2(arg_0.c.x).c.zx, func_2(false), ~firstLeadingBit(~abs(u_input.a.x)), !arg_0.c.xx, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(665f, global2[_wgslsmith_index_u32(66892u, 14u)], 1875f) + vec3<f32>(780f, arg_0.a, global2[_wgslsmith_index_u32(u_input.a.x, 14u)])))))));
    global1 = array<Struct_2, 15>();
    let var_1 = global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(abs(_wgslsmith_mult_u32(u_input.a.x, 24690u)), 9u)], 14u)];
    global3 = array<u32, 9>();
    return global1[_wgslsmith_index_u32(_wgslsmith_add_u32(4294967295u, firstTrailingBit(firstTrailingBit(80028u))), 15u)];
}

fn func_1() -> Struct_3 {
    var var_0 = func_4(func_2(any(vec3<bool>(true, false, any(vec4<bool>(false, true, true, false))))));
    global3 = array<u32, 9>();
    var var_1 = Struct_3(_wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(-(~vec4<i32>(14363i, 8762i, 1i, 19062i)), vec4<i32>(1i, 1i, 1i, 1i)), _wgslsmith_div_vec4_i32(-vec4<i32>(1i, 2147483647i, 2668i, -16063i), _wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, 42963i, -6183i, -1i), vec4<i32>(59726i, 7043i, 1i, -1i), -vec4<i32>(-26304i, -76399i, 32878i, -30427i))), ~firstTrailingBit(~vec4<i32>(-6233i, 0i, -38869i, 1i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.e.x, var_0.b.a)) - _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(firstLeadingBit(u_input.a.x), 14u)]))), countOneBits(min(-max(vec4<i32>(2147483647i, -1i, 22953i, -53616i), vec4<i32>(0i, 2147483647i, -16452i, 0i)), vec4<i32>(52355i, -14892i, reverseBits(66900i), i32(-1i) * -2147483647i))), all(!(!(!vec3<bool>(var_0.b.c.x, var_0.d.x, var_0.a.x)))), Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(2778u, 9u)], 14u)])))), !var_0.b.c.x, vec3<bool>(true, true, var_0.c >= 7653u)));
    global2 = array<f32, 14>();
    var var_2 = !var_0.d;
    return Struct_3(vec4<i32>(-2147483647i, _wgslsmith_clamp_i32(~min(6793i, 2301i), _wgslsmith_mod_i32(-2147483647i, var_1.c.x) >> (~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(63049u, 9u)], 9u)] % 32u), -16450i), var_1.c.x, _wgslsmith_dot_vec4_i32(var_1.c ^ (var_1.c >> (vec4<u32>(var_0.c, 0u, 13092u, 1u) % vec4<u32>(32u))), var_1.a)), var_1.e.a, vec4<i32>(_wgslsmith_dot_vec3_i32(var_1.a.ywx, var_1.c.zyy), 15460i, -4232i, var_1.c.x), false, Struct_1(-721f, false, var_0.b.c));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = _wgslsmith_mod_u32(u_input.a.x, abs(reverseBits(~u_input.a.x)) ^ global3[_wgslsmith_index_u32(0u, 9u)]);
    global0 = global2[_wgslsmith_index_u32(select(20301u, func_4(var_0.e).c, true) >> (global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, ~0u), 9u)] % 32u), 14u)];
    var var_2 = vec3<bool>((!(var_0.d | false) && true) & !all(var_0.e.c), true, func_1().d);
    var var_3 = min(var_0.a.x, ~(-28223i));
    var_2 = !(!(!(!func_4(Struct_1(global2[_wgslsmith_index_u32(1u, 14u)], false, var_0.e.c)).b.c)));
    global3 = array<u32, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(30362u, _wgslsmith_f_op_f32(f32(-1f) * -312f));
}

