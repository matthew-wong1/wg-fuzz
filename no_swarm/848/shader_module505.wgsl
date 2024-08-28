struct Struct_1 {
    a: f32,
    b: u32,
    c: u32,
    d: u32,
    e: u32,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
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

var<private> global0: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(-1544f, 22801u, 4294967295u, 23631u, 0u), Struct_1(-419f, 33146u, 11616u, 0u, 4294967295u), Struct_1(165f, 1u, 1u, 9702u, 30943u), Struct_1(2171f, 4294967295u, 14122u, 0u, 58106u), Struct_1(-429f, 58861u, 4294967295u, 4294967295u, 12993u), Struct_1(966f, 28998u, 4294967295u, 47289u, 4294967295u), Struct_1(1781f, 81130u, 4294967295u, 84308u, 24306u), Struct_1(-1499f, 17180u, 65736u, 81419u, 1u), Struct_1(-202f, 4294967295u, 52955u, 39715u, 17502u), Struct_1(-155f, 0u, 1u, 1u, 9337u), Struct_1(-1133f, 22348u, 20013u, 1u, 28455u), Struct_1(-369f, 1u, 19150u, 123558u, 1u), Struct_1(-613f, 38891u, 4294967295u, 1u, 1u), Struct_1(127f, 13164u, 11927u, 0u, 33515u), Struct_1(-612f, 1u, 62784u, 17665u, 34053u), Struct_1(-693f, 31847u, 4442u, 48682u, 863u), Struct_1(1472f, 4294967295u, 4294967295u, 4294967295u, 21003u), Struct_1(-979f, 378u, 1u, 84091u, 0u), Struct_1(2087f, 0u, 0u, 4294967295u, 4294967295u), Struct_1(-268f, 20771u, 0u, 1u, 15129u), Struct_1(-520f, 18138u, 0u, 0u, 0u), Struct_1(1000f, 39066u, 0u, 0u, 101560u), Struct_1(-1448f, 21516u, 0u, 1u, 0u), Struct_1(779f, 27690u, 4294967295u, 35068u, 1u), Struct_1(-567f, 71871u, 4294967295u, 20030u, 0u), Struct_1(-541f, 1u, 52252u, 1u, 0u), Struct_1(-397f, 1109u, 44525u, 56145u, 19336u), Struct_1(345f, 19467u, 1u, 24953u, 33522u), Struct_1(1133f, 4294967295u, 51340u, 1u, 33056u), Struct_1(125f, 81690u, 25479u, 12663u, 0u));

var<private> global1: bool;

var<private> global2: array<vec3<f32>, 29> = array<vec3<f32>, 29>(vec3<f32>(268f, 1335f, 1000f), vec3<f32>(-918f, -1000f, 1000f), vec3<f32>(-1289f, -915f, -841f), vec3<f32>(223f, 936f, -143f), vec3<f32>(1213f, -1025f, 1316f), vec3<f32>(-462f, 2149f, 934f), vec3<f32>(-563f, -821f, 685f), vec3<f32>(-183f, 377f, 1928f), vec3<f32>(-1785f, 1963f, -1725f), vec3<f32>(1463f, -1000f, -199f), vec3<f32>(164f, -957f, -274f), vec3<f32>(-1210f, -131f, 1981f), vec3<f32>(-1000f, -628f, -1100f), vec3<f32>(-126f, 1834f, 1123f), vec3<f32>(-511f, -1216f, -492f), vec3<f32>(795f, -592f, 329f), vec3<f32>(-693f, -2517f, -965f), vec3<f32>(169f, -297f, -585f), vec3<f32>(-238f, -102f, 905f), vec3<f32>(264f, 1231f, -542f), vec3<f32>(843f, -682f, 1618f), vec3<f32>(-1000f, -373f, -298f), vec3<f32>(878f, 1475f, 517f), vec3<f32>(1000f, 507f, -869f), vec3<f32>(447f, -1495f, 1000f), vec3<f32>(-446f, -1000f, -1403f), vec3<f32>(1265f, -1605f, 817f), vec3<f32>(-668f, -1485f, 175f), vec3<f32>(953f, -1527f, -121f));

var<private> global3: array<vec2<i32>, 10>;

var<private> global4: Struct_1 = Struct_1(1371f, 4294967295u, 34822u, 25561u, 26438u);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec3<u32>, arg_1: f32, arg_2: vec4<bool>) -> vec2<u32> {
    global2 = array<vec3<f32>, 29>();
    let var_0 = Struct_2((_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(arg_1)), _wgslsmith_f_op_f32(trunc(-1744f)))) < _wgslsmith_div_f32(-246f, global4.a)) || !(_wgslsmith_f_op_f32(global4.a * global4.a) > global4.a), -(~1i), vec2<i32>(~1i, abs(1i)));
    global0 = array<Struct_1, 30>();
    var var_1 = _wgslsmith_mod_vec2_u32(abs(vec2<u32>(59328u, 1u)), arg_0.xx);
    global4 = Struct_1(arg_1, arg_0.x, global4.e, min(~(~global4.c & ~u_input.a), u_input.a), min(_wgslsmith_dot_vec2_u32(vec2<u32>(~var_1.x, global4.c), _wgslsmith_mult_vec2_u32(arg_0.xx, arg_0.yz)), 25051u));
    return ~vec2<u32>(~(~_wgslsmith_div_u32(global4.e, 4294967295u)), 0u);
}

fn func_2(arg_0: vec3<f32>, arg_1: i32) -> Struct_1 {
    var var_0 = -(vec2<i32>(-2147483647i, arg_1) << (vec2<u32>(19820u, ~u_input.a) % vec2<u32>(32u))) << (_wgslsmith_mult_vec2_u32(firstTrailingBit(func_3(vec3<u32>(45299u, global4.b, 4294967295u), _wgslsmith_f_op_f32(ceil(-778f)), vec4<bool>(true, true, true, true))), (firstLeadingBit(vec2<u32>(46882u, 1u)) >> (func_3(vec3<u32>(u_input.a, 8277u, 0u), 881f, vec4<bool>(false, true, true, true)) % vec2<u32>(32u))) ^ vec2<u32>(_wgslsmith_sub_u32(4294967295u, u_input.a), min(global4.e, u_input.a))) % vec2<u32>(32u));
    global3 = array<vec2<i32>, 10>();
    var_0 = ~vec2<i32>(-66988i, ~(var_0.x << (_wgslsmith_sub_u32(1u, global4.b) % 32u)));
    var var_1 = !(!(!vec4<bool>(any(vec2<bool>(false, true)), any(vec4<bool>(true, true, true, false)), any(vec4<bool>(true, true, true, false)), true)));
    global2 = array<vec3<f32>, 29>();
    return Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global4.a * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-412f * 780f)))))), _wgslsmith_div_u32(abs(4294967295u), 47811u), u_input.a, global4.e, global4.d >> (~global4.d % 32u));
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    global0 = array<Struct_1, 30>();
    global3 = array<vec2<i32>, 10>();
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_f32(-707f - _wgslsmith_f_op_f32(-arg_0.a))))), 63165u, ~_wgslsmith_mod_u32(countOneBits(global4.b), _wgslsmith_div_u32(global4.c, ~34531u)), ~arg_0.e, arg_0.b);
    let var_1 = arg_0;
    global0 = array<Struct_1, 30>();
    return func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(global2[_wgslsmith_index_u32(func_2(global2[_wgslsmith_index_u32(var_0.e, 29u)], -6211i).b, 29u)]))) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a, var_1.a, var_1.a) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a, var_1.a, 749f))), global2[_wgslsmith_index_u32(u_input.a, 29u)]))), 15212i);
}

fn func_1(arg_0: bool) -> f32 {
    let var_0 = 4294967295u;
    global0 = array<Struct_1, 30>();
    global0 = array<Struct_1, 30>();
    global4 = func_4(func_2(global2[_wgslsmith_index_u32(~global4.c, 29u)], -33710i));
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(func_2(vec3<f32>(501f, 958f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -320f)))), firstTrailingBit(20228i)).c, firstLeadingBit(var_0)), 30u)];
    return 1221f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(global4.e ^ 4294967295u, 30u)];
    let var_1 = Struct_2(false, _wgslsmith_clamp_i32(min(min(i32(-1i) * -1i, 15140i), 4033i), 1i, 1i), -(~(~select(global3[_wgslsmith_index_u32(u_input.a, 10u)], global3[_wgslsmith_index_u32(u_input.a, 10u)], false))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(true)) * var_0.a);
    global2 = array<vec3<f32>, 29>();
    var var_3 = -var_1.b;
    var var_4 = var_1;
    var_4 = Struct_2(var_1.a, ~_wgslsmith_mult_i32(_wgslsmith_add_i32(abs(-27985i), var_4.b & -30321i), _wgslsmith_clamp_i32(var_4.b >> (u_input.a % 32u), ~var_1.c.x, ~(-26252i))), select(_wgslsmith_sub_vec2_i32(global3[_wgslsmith_index_u32(reverseBits(0u) << (~u_input.a % 32u), 10u)], -(global3[_wgslsmith_index_u32(var_0.b, 10u)] | vec2<i32>(-1i, var_1.c.x))), select(-var_1.c, vec2<i32>(var_1.b, max(var_1.b, -12519i)), vec2<bool>(var_1.a, var_4.a)), true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(1215f)));
}

