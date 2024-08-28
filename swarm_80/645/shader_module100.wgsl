struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: vec4<f32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: u32,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_3,
    c: vec4<f32>,
    d: f32,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 18>;

var<private> global1: array<bool, 27> = array<bool, 27>(false, true, true, false, false, false, false, true, true, true, false, false, false, true, true, false, true, true, true, true, true, false, true, true, false, true, false);

var<private> global2: array<vec3<f32>, 24> = array<vec3<f32>, 24>(vec3<f32>(1000f, -132f, -370f), vec3<f32>(1675f, -938f, 365f), vec3<f32>(-859f, 184f, 1005f), vec3<f32>(-1336f, -804f, -134f), vec3<f32>(986f, -1589f, -1768f), vec3<f32>(932f, 1000f, 821f), vec3<f32>(-1176f, -181f, -1226f), vec3<f32>(-148f, -312f, -957f), vec3<f32>(-705f, 351f, 111f), vec3<f32>(145f, 596f, 131f), vec3<f32>(-175f, -1531f, 1683f), vec3<f32>(-1253f, -1416f, 1069f), vec3<f32>(1036f, -1115f, -1026f), vec3<f32>(-1128f, -1651f, 1228f), vec3<f32>(1678f, 1973f, 1487f), vec3<f32>(1550f, 1179f, -434f), vec3<f32>(404f, -591f, -880f), vec3<f32>(-415f, -376f, 786f), vec3<f32>(1515f, 108f, 389f), vec3<f32>(-1585f, 517f, -414f), vec3<f32>(418f, 1060f, 1349f), vec3<f32>(-570f, -717f, 994f), vec3<f32>(417f, -341f, -611f), vec3<f32>(522f, 853f, -1037f));

var<private> global3: array<vec2<u32>, 14> = array<vec2<u32>, 14>(vec2<u32>(1u, 1u), vec2<u32>(3993u, 11073u), vec2<u32>(0u, 0u), vec2<u32>(0u, 29954u), vec2<u32>(1u, 4533u), vec2<u32>(4294967295u, 10415u), vec2<u32>(22168u, 1u), vec2<u32>(19255u, 4294967295u), vec2<u32>(27795u, 0u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(1u, 32898u), vec2<u32>(1u, 9650u), vec2<u32>(47259u, 0u), vec2<u32>(4294967295u, 4294967295u));

var<private> global4: f32 = -432f;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_3, arg_1: i32) -> f32 {
    global0 = array<i32, 18>();
    let var_0 = arg_1;
    global2 = array<vec3<f32>, 24>();
    var var_1 = arg_0.a;
    var var_2 = (~var_1.c.b & 27342u) << (u_input.a.x % 32u);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0.a.c.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.b.a.x - _wgslsmith_f_op_f32(f32(-1f) * -404f))))));
}

fn func_3(arg_0: bool, arg_1: Struct_5, arg_2: Struct_3, arg_3: vec3<u32>) -> Struct_2 {
    global1 = array<bool, 27>();
    var var_0 = vec3<u32>(select(~0u, _wgslsmith_clamp_u32(arg_3.x, select(6817u, arg_2.a.c.b, all(arg_1.b.a.b.d.xy)), _wgslsmith_dot_vec4_u32(max(vec4<u32>(4294967295u, arg_3.x, 4294967295u, arg_2.a.b.b), vec4<u32>(arg_3.x, u_input.a.x, arg_1.a.c.b, 41454u)), _wgslsmith_mod_vec4_u32(u_input.a, u_input.a))), arg_2.a.c.d.x), arg_1.a.c.b, _wgslsmith_dot_vec4_u32(max(vec4<u32>(arg_2.a.b.b, u_input.a.x, 17056u, reverseBits(arg_1.b.a.b.b)), vec4<u32>(57819u, ~4294967295u, 1u >> (u_input.a.x % 32u), ~arg_2.a.b.b)), vec4<u32>(_wgslsmith_dot_vec4_u32(~u_input.a, ~u_input.a), 4294967295u, 19255u, arg_1.b.a.b.b)));
    var_0 = arg_3;
    var var_1 = arg_2.a.b;
    var var_2 = arg_1.a.b.a;
    return arg_1.a;
}

fn func_1(arg_0: u32, arg_1: Struct_4, arg_2: Struct_1, arg_3: vec3<bool>) -> vec4<i32> {
    global4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_2.c.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(748f - 241f))))));
    var var_0 = _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1390f, _wgslsmith_div_f32(arg_2.a.x, 605f))));
    global0 = array<i32, 18>();
    global3 = array<vec2<u32>, 14>();
    var var_1 = func_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(arg_1.b, -6600i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2256f * arg_1.b.a.b.c.x))) < _wgslsmith_f_op_f32(-714f * _wgslsmith_f_op_f32(ceil(arg_2.c.x))), Struct_5(Struct_2(~vec4<i32>(arg_1.b.a.a.x, 72513i, 3097i, arg_1.b.a.a.x), arg_2, arg_2), Struct_3(Struct_2(arg_1.b.a.a >> (vec4<u32>(4294967295u, 51386u, 4294967295u, 1u) % vec4<u32>(32u)), Struct_1(vec3<f32>(arg_2.a.x, arg_2.a.x, var_0.x), 1u, arg_1.b.a.b.c, vec3<bool>(true, false, arg_3.x)), arg_1.b.a.c)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), -1254f, _wgslsmith_f_op_f32(-arg_1.b.a.b.a.x), _wgslsmith_f_op_f32(f32(-1f) * -997f))), arg_1.b.a.c.c.x, vec3<bool>(all(vec4<bool>(false, false, arg_3.x, arg_3.x)), all(arg_3.yz), -1i != -arg_1.b.a.a.x)), Struct_3(Struct_2(reverseBits(~arg_1.b.a.a), arg_1.b.a.c, Struct_1(vec3<f32>(arg_2.c.x, arg_1.b.a.b.a.x, arg_1.b.a.b.c.x), firstLeadingBit(4294967295u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.c.x, 374f, arg_1.b.a.b.c.x, arg_2.c.x)), select(vec3<bool>(arg_1.b.a.c.d.x, false, true), arg_3, vec3<bool>(global1[_wgslsmith_index_u32(arg_2.b, 27u)], false, false))))), vec3<u32>(~(~_wgslsmith_mult_u32(0u, 4769u)), arg_1.b.a.c.b, ~min(abs(33036u), 1u)));
    return abs(_wgslsmith_div_vec4_i32(abs(vec4<i32>(2147483647i, _wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(arg_1.a, 18u)], 0i, arg_1.b.a.a.x), _wgslsmith_clamp_i32(arg_1.b.a.a.x, 1i, var_1.a.x), -3536i)), var_1.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(reverseBits(u_input.a.x), u_input.a.x, _wgslsmith_div_u32(reverseBits(u_input.a.x), _wgslsmith_mult_u32(u_input.a.x, u_input.a.x)), _wgslsmith_mult_u32(5187u, u_input.a.x)), vec4<u32>(min(4294967295u, u_input.a.x), 4294967295u, 0u, 0u) & u_input.a), 4294967295u, ~u_input.a.x);
    global1 = array<bool, 27>();
    let var_1 = abs(select(-1i, 1i, false));
    global0 = array<i32, 18>();
    global4 = -660f;
    let var_2 = Struct_2(min(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, var_1), vec2<i32>(-1271i, var_1)), var_1, global0[_wgslsmith_index_u32(u_input.a.x, 18u)], firstTrailingBit(0i)) << (vec4<u32>(17114u, ~u_input.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), var_0.yz), ~var_0.x) % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(-func_1(u_input.a.x, Struct_4(19343u, Struct_3(Struct_2(vec4<i32>(var_1, global0[_wgslsmith_index_u32(var_0.x, 18u)], 0i, 42090i), Struct_1(vec3<f32>(986f, -544f, -910f), 8806u, vec4<f32>(363f, 334f, -1000f, 161f), vec3<bool>(false, true, global1[_wgslsmith_index_u32(17964u, 27u)])), Struct_1(vec3<f32>(-793f, 301f, -525f), u_input.a.x, vec4<f32>(205f, 1038f, 475f, -443f), vec3<bool>(true, true, true)))), 1u), Struct_1(global2[_wgslsmith_index_u32(0u, 24u)], var_0.x, vec4<f32>(938f, 1000f, -1000f, 2018f), vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.a.x, 27u)], global1[_wgslsmith_index_u32(4294967295u, 27u)])), vec3<bool>(global1[_wgslsmith_index_u32(0u, 27u)], global1[_wgslsmith_index_u32(65648u, 27u)], false)), vec4<i32>(43814i, 0i, global0[_wgslsmith_index_u32(var_0.x, 18u)], 0i) ^ vec4<i32>(-2147483647i, global0[_wgslsmith_index_u32(4294967295u, 18u)], var_1, global0[_wgslsmith_index_u32(var_0.x, 18u)]))), Struct_1(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(31974u, _wgslsmith_clamp_u32(var_0.x, var_0.x, 1u)), 24u)], func_3(!(global1[_wgslsmith_index_u32(var_0.x, 27u)] != true), Struct_5(Struct_2(vec4<i32>(global0[_wgslsmith_index_u32(24844u, 18u)], 2147483647i, var_1, 30267i), Struct_1(vec3<f32>(-1532f, 479f, 1000f), var_0.x, vec4<f32>(-643f, 900f, -597f, 1000f), vec3<bool>(false, false, false)), Struct_1(global2[_wgslsmith_index_u32(u_input.a.x, 24u)], var_0.x, vec4<f32>(2851f, 2305f, -332f, -1000f), vec3<bool>(global1[_wgslsmith_index_u32(var_0.x, 27u)], true, true))), Struct_3(Struct_2(vec4<i32>(-5650i, 1i, var_1, 0i), Struct_1(vec3<f32>(2790f, -1207f, 1222f), var_0.x, vec4<f32>(1000f, 192f, 284f, -223f), vec3<bool>(true, false, global1[_wgslsmith_index_u32(1u, 27u)])), Struct_1(vec3<f32>(-819f, 1430f, 442f), u_input.a.x, vec4<f32>(552f, 1016f, -1000f, 710f), vec3<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 27u)], global1[_wgslsmith_index_u32(var_0.x, 27u)])))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(336f, -506f, 761f, -1278f)), _wgslsmith_f_op_f32(f32(-1f) * -812f), vec3<bool>(global1[_wgslsmith_index_u32(var_0.x, 27u)], global1[_wgslsmith_index_u32(u_input.a.x, 27u)], global1[_wgslsmith_index_u32(var_0.x, 27u)])), Struct_3(Struct_2(vec4<i32>(0i, 63498i, global0[_wgslsmith_index_u32(0u, 18u)], global0[_wgslsmith_index_u32(4515u, 18u)]), Struct_1(global2[_wgslsmith_index_u32(4294967295u, 24u)], var_0.x, vec4<f32>(1293f, 805f, 307f, 232f), vec3<bool>(global1[_wgslsmith_index_u32(71916u, 27u)], true, true)), Struct_1(global2[_wgslsmith_index_u32(1u, 24u)], var_0.x, vec4<f32>(-161f, 1589f, -254f, 1480f), vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 27u)], false, true)))), vec3<u32>(func_3(global1[_wgslsmith_index_u32(var_0.x, 27u)], Struct_5(Struct_2(vec4<i32>(var_1, 1004i, -4070i, global0[_wgslsmith_index_u32(u_input.a.x, 18u)]), Struct_1(vec3<f32>(668f, -113f, -1275f), u_input.a.x, vec4<f32>(-588f, -552f, -1211f, 1000f), vec3<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 27u)], global1[_wgslsmith_index_u32(51403u, 27u)], false)), Struct_1(global2[_wgslsmith_index_u32(4294967295u, 24u)], var_0.x, vec4<f32>(360f, 109f, -352f, -1385f), vec3<bool>(global1[_wgslsmith_index_u32(1u, 27u)], true, true))), Struct_3(Struct_2(vec4<i32>(-23478i, -47886i, -53929i, 32541i), Struct_1(global2[_wgslsmith_index_u32(var_0.x, 24u)], u_input.a.x, vec4<f32>(-601f, -919f, 1016f, -848f), vec3<bool>(global1[_wgslsmith_index_u32(15472u, 27u)], false, global1[_wgslsmith_index_u32(var_0.x, 27u)])), Struct_1(vec3<f32>(-540f, 814f, -1434f), 13512u, vec4<f32>(-1000f, 890f, -918f, -1000f), vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 27u)], global1[_wgslsmith_index_u32(u_input.a.x, 27u)], global1[_wgslsmith_index_u32(var_0.x, 27u)])))), vec4<f32>(-519f, -768f, -1190f, -1085f), -1692f, vec3<bool>(true, true, false)), Struct_3(Struct_2(vec4<i32>(-43606i, global0[_wgslsmith_index_u32(u_input.a.x, 18u)], -1i, -24297i), Struct_1(global2[_wgslsmith_index_u32(u_input.a.x, 24u)], var_0.x, vec4<f32>(879f, -1038f, -1091f, -859f), vec3<bool>(false, global1[_wgslsmith_index_u32(8793u, 27u)], global1[_wgslsmith_index_u32(u_input.a.x, 27u)])), Struct_1(vec3<f32>(448f, -1327f, 1024f), 41427u, vec4<f32>(-975f, 1736f, 1132f, 1954f), vec3<bool>(true, true, false)))), u_input.a.xwx).b.b, 36113u, u_input.a.x)).c.b, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1007f, -471f, -209f, 1000f)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-731f, -427f, 289f, -558f) + vec4<f32>(-509f, -1000f, 436f, -2158f)))))), vec3<bool>(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, u_input.a.x), vec2<u32>(42495u, var_0.x)), 27u)] | true, all(func_3(global1[_wgslsmith_index_u32(77827u, 27u)], Struct_5(Struct_2(vec4<i32>(var_1, 45539i, -38568i, global0[_wgslsmith_index_u32(4294967295u, 18u)]), Struct_1(vec3<f32>(-1000f, -219f, 261f), u_input.a.x, vec4<f32>(-1451f, -1044f, 1230f, 1413f), vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.a.x, 27u)], true)), Struct_1(vec3<f32>(898f, 407f, 865f), 49523u, vec4<f32>(1466f, 1405f, -714f, -1000f), vec3<bool>(true, global1[_wgslsmith_index_u32(var_0.x, 27u)], global1[_wgslsmith_index_u32(u_input.a.x, 27u)]))), Struct_3(Struct_2(vec4<i32>(var_1, var_1, 2147483647i, -2147483647i), Struct_1(vec3<f32>(1149f, 463f, -1844f), 11524u, vec4<f32>(998f, -764f, -1000f, -438f), vec3<bool>(global1[_wgslsmith_index_u32(var_0.x, 27u)], global1[_wgslsmith_index_u32(u_input.a.x, 27u)], global1[_wgslsmith_index_u32(1u, 27u)])), Struct_1(vec3<f32>(1000f, -1590f, -917f), 1u, vec4<f32>(-1059f, -838f, 149f, 104f), vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 27u)], global1[_wgslsmith_index_u32(var_0.x, 27u)], true)))), vec4<f32>(-399f, -540f, -648f, 123f), 1380f, vec3<bool>(true, true, false)), Struct_3(Struct_2(vec4<i32>(var_1, 0i, -44512i, -21036i), Struct_1(vec3<f32>(-910f, -1355f, -1645f), var_0.x, vec4<f32>(-1935f, 1517f, 1232f, 1409f), vec3<bool>(false, false, false)), Struct_1(global2[_wgslsmith_index_u32(u_input.a.x, 24u)], u_input.a.x, vec4<f32>(-276f, 1147f, -355f, -1189f), vec3<bool>(global1[_wgslsmith_index_u32(var_0.x, 27u)], true, true)))), vec3<u32>(var_0.x, 68837u, u_input.a.x)).c.d), all(!vec3<bool>(false, global1[_wgslsmith_index_u32(34286u, 27u)], global1[_wgslsmith_index_u32(4294967295u, 27u)])))), Struct_1(global2[_wgslsmith_index_u32(~countOneBits(49773u) >> (u_input.a.x % 32u), 24u)], func_3(~var_1 >= _wgslsmith_sub_i32(-67671i, global0[_wgslsmith_index_u32(u_input.a.x, 18u)]), Struct_5(Struct_2(vec4<i32>(var_1, 1i, 1i, 1i), Struct_1(global2[_wgslsmith_index_u32(4294967295u, 24u)], u_input.a.x, vec4<f32>(-642f, 421f, -1120f, -1263f), vec3<bool>(global1[_wgslsmith_index_u32(var_0.x, 27u)], false, global1[_wgslsmith_index_u32(var_0.x, 27u)])), Struct_1(vec3<f32>(2335f, 1000f, 1223f), var_0.x, vec4<f32>(179f, -166f, 1497f, -1162f), vec3<bool>(global1[_wgslsmith_index_u32(var_0.x, 27u)], global1[_wgslsmith_index_u32(1u, 27u)], global1[_wgslsmith_index_u32(3074u, 27u)]))), Struct_3(Struct_2(vec4<i32>(var_1, global0[_wgslsmith_index_u32(248u, 18u)], -3961i, -23863i), Struct_1(global2[_wgslsmith_index_u32(1299u, 24u)], var_0.x, vec4<f32>(-907f, -1242f, -225f, -899f), vec3<bool>(true, true, false)), Struct_1(global2[_wgslsmith_index_u32(var_0.x, 24u)], var_0.x, vec4<f32>(-909f, -678f, 406f, 1000f), vec3<bool>(false, true, true)))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(185f, 840f, -1083f, -1000f), vec4<f32>(-1000f, 1568f, 1270f, -353f))), _wgslsmith_f_op_f32(f32(-1f) * -118f), select(vec3<bool>(true, global1[_wgslsmith_index_u32(6595u, 27u)], true), vec3<bool>(global1[_wgslsmith_index_u32(5282u, 27u)], global1[_wgslsmith_index_u32(8770u, 27u)], global1[_wgslsmith_index_u32(u_input.a.x, 27u)]), vec3<bool>(false, true, false))), Struct_3(func_3(true, Struct_5(Struct_2(vec4<i32>(global0[_wgslsmith_index_u32(var_0.x, 18u)], global0[_wgslsmith_index_u32(80438u, 18u)], -5157i, -17243i), Struct_1(global2[_wgslsmith_index_u32(1u, 24u)], var_0.x, vec4<f32>(-1270f, -2088f, 1026f, -1883f), vec3<bool>(global1[_wgslsmith_index_u32(1u, 27u)], global1[_wgslsmith_index_u32(var_0.x, 27u)], false)), Struct_1(global2[_wgslsmith_index_u32(0u, 24u)], u_input.a.x, vec4<f32>(189f, 1406f, -1016f, -177f), vec3<bool>(true, global1[_wgslsmith_index_u32(0u, 27u)], true))), Struct_3(Struct_2(vec4<i32>(30331i, 22405i, global0[_wgslsmith_index_u32(4294967295u, 18u)], global0[_wgslsmith_index_u32(15997u, 18u)]), Struct_1(global2[_wgslsmith_index_u32(u_input.a.x, 24u)], 0u, vec4<f32>(-496f, 566f, 176f, -1294f), vec3<bool>(global1[_wgslsmith_index_u32(0u, 27u)], true, global1[_wgslsmith_index_u32(0u, 27u)])), Struct_1(global2[_wgslsmith_index_u32(var_0.x, 24u)], 61298u, vec4<f32>(182f, -1993f, -1448f, 1915f), vec3<bool>(false, true, global1[_wgslsmith_index_u32(4688u, 27u)])))), vec4<f32>(333f, -160f, 522f, 193f), -308f, vec3<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 27u)], false, false)), Struct_3(Struct_2(vec4<i32>(19581i, 1i, -2147483647i, 2147483647i), Struct_1(vec3<f32>(-393f, 838f, -560f), var_0.x, vec4<f32>(1479f, -284f, -1147f, 1000f), vec3<bool>(global1[_wgslsmith_index_u32(var_0.x, 27u)], global1[_wgslsmith_index_u32(38643u, 27u)], global1[_wgslsmith_index_u32(0u, 27u)])), Struct_1(vec3<f32>(-125f, -1382f, -511f), u_input.a.x, vec4<f32>(3186f, -1515f, -958f, -1000f), vec3<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 27u)], true, global1[_wgslsmith_index_u32(4294967295u, 27u)])))), u_input.a.zyz)), var_0 >> (var_0 % vec3<u32>(32u))).b.b, vec4<f32>(_wgslsmith_f_op_f32(-func_3(global1[_wgslsmith_index_u32(u_input.a.x, 27u)], Struct_5(Struct_2(vec4<i32>(-2147483647i, 18357i, 11700i, -1i), Struct_1(global2[_wgslsmith_index_u32(12857u, 24u)], 0u, vec4<f32>(-819f, -883f, 474f, -585f), vec3<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 27u)], global1[_wgslsmith_index_u32(0u, 27u)])), Struct_1(global2[_wgslsmith_index_u32(var_0.x, 24u)], u_input.a.x, vec4<f32>(-1244f, -1246f, -562f, 1656f), vec3<bool>(true, global1[_wgslsmith_index_u32(var_0.x, 27u)], global1[_wgslsmith_index_u32(var_0.x, 27u)]))), Struct_3(Struct_2(vec4<i32>(global0[_wgslsmith_index_u32(1u, 18u)], -28936i, var_1, var_1), Struct_1(global2[_wgslsmith_index_u32(38845u, 24u)], u_input.a.x, vec4<f32>(-1554f, 1000f, -1080f, -1153f), vec3<bool>(global1[_wgslsmith_index_u32(58151u, 27u)], true, false)), Struct_1(vec3<f32>(500f, 557f, -731f), var_0.x, vec4<f32>(-909f, -1307f, -1000f, 1300f), vec3<bool>(global1[_wgslsmith_index_u32(0u, 27u)], true, true)))), vec4<f32>(193f, -1000f, -388f, 1132f), -1000f, vec3<bool>(global1[_wgslsmith_index_u32(var_0.x, 27u)], global1[_wgslsmith_index_u32(var_0.x, 27u)], true)), Struct_3(Struct_2(vec4<i32>(global0[_wgslsmith_index_u32(var_0.x, 18u)], var_1, var_1, 18736i), Struct_1(global2[_wgslsmith_index_u32(var_0.x, 24u)], var_0.x, vec4<f32>(141f, -1591f, 1000f, -1340f), vec3<bool>(global1[_wgslsmith_index_u32(82215u, 27u)], true, false)), Struct_1(vec3<f32>(287f, -1000f, -350f), 27755u, vec4<f32>(-593f, -724f, 823f, 170f), vec3<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 27u)], global1[_wgslsmith_index_u32(63577u, 27u)], false)))), vec3<u32>(4294967295u, var_0.x, 4294967295u)).c.c.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1752f, -652f) * _wgslsmith_f_op_f32(-840f * -353f)), 404f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(106f * -2637f)))), vec3<bool>(any(func_3(true, Struct_5(Struct_2(vec4<i32>(-26854i, global0[_wgslsmith_index_u32(var_0.x, 18u)], var_1, global0[_wgslsmith_index_u32(108716u, 18u)]), Struct_1(global2[_wgslsmith_index_u32(var_0.x, 24u)], 4294967295u, vec4<f32>(-1495f, -511f, 776f, 993f), vec3<bool>(global1[_wgslsmith_index_u32(0u, 27u)], true, global1[_wgslsmith_index_u32(var_0.x, 27u)])), Struct_1(global2[_wgslsmith_index_u32(4294967295u, 24u)], u_input.a.x, vec4<f32>(445f, -869f, -1668f, 1564f), vec3<bool>(global1[_wgslsmith_index_u32(111798u, 27u)], false, false))), Struct_3(Struct_2(vec4<i32>(2147483647i, var_1, var_1, var_1), Struct_1(vec3<f32>(1538f, 152f, -1084f), u_input.a.x, vec4<f32>(-194f, 371f, 2015f, 432f), vec3<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 27u)], false)), Struct_1(vec3<f32>(-530f, -1009f, -382f), 19935u, vec4<f32>(811f, 210f, 261f, 2047f), vec3<bool>(global1[_wgslsmith_index_u32(var_0.x, 27u)], global1[_wgslsmith_index_u32(4294967295u, 27u)], true)))), vec4<f32>(180f, -496f, 1215f, -771f), 711f, vec3<bool>(false, true, true)), Struct_3(Struct_2(vec4<i32>(var_1, 0i, -45085i, global0[_wgslsmith_index_u32(var_0.x, 18u)]), Struct_1(global2[_wgslsmith_index_u32(17657u, 24u)], 5218u, vec4<f32>(-157f, -1156f, 202f, 825f), vec3<bool>(true, false, global1[_wgslsmith_index_u32(52585u, 27u)])), Struct_1(vec3<f32>(218f, -1608f, -1000f), var_0.x, vec4<f32>(-355f, -577f, -443f, 137f), vec3<bool>(true, false, global1[_wgslsmith_index_u32(0u, 27u)])))), u_input.a.wxz).b.d), global1[_wgslsmith_index_u32(~0u, 27u)], global1[_wgslsmith_index_u32(u_input.a.x ^ 0u, 27u)])));
    global3 = array<vec2<u32>, 14>();
    global1 = array<bool, 27>();
    let var_3 = func_3(global1[_wgslsmith_index_u32(var_2.c.b, 27u)], Struct_5(func_3(!any(vec4<bool>(var_2.c.d.x, global1[_wgslsmith_index_u32(u_input.a.x, 27u)], global1[_wgslsmith_index_u32(4294967295u, 27u)], true)), Struct_5(Struct_2(var_2.a, Struct_1(vec3<f32>(var_2.b.c.x, var_2.c.c.x, var_2.b.a.x), 31280u, var_2.b.c, vec3<bool>(global1[_wgslsmith_index_u32(62679u, 27u)], global1[_wgslsmith_index_u32(29135u, 27u)], false)), var_2.c), Struct_3(var_2), vec4<f32>(var_2.b.a.x, 805f, var_2.b.c.x, -2003f), _wgslsmith_div_f32(-1486f, 1239f), func_3(global1[_wgslsmith_index_u32(var_0.x, 27u)], Struct_5(Struct_2(var_2.a, var_2.c, Struct_1(vec3<f32>(var_2.c.c.x, var_2.b.a.x, -577f), 4294967295u, var_2.c.c, var_2.c.d)), Struct_3(Struct_2(vec4<i32>(2147483647i, -16322i, var_1, var_2.a.x), var_2.c, var_2.b)), vec4<f32>(349f, var_2.c.c.x, var_2.c.a.x, 961f), var_2.c.a.x, var_2.c.d), Struct_3(Struct_2(var_2.a, Struct_1(vec3<f32>(-835f, 884f, var_2.c.a.x), 1u, var_2.b.c, var_2.c.d), Struct_1(vec3<f32>(-399f, 232f, var_2.c.c.x), 18135u, var_2.b.c, var_2.c.d))), vec3<u32>(1u, 49415u, u_input.a.x)).b.d), Struct_3(func_3(global1[_wgslsmith_index_u32(19676u, 27u)], Struct_5(Struct_2(vec4<i32>(37792i, var_2.a.x, -2147483647i, var_2.a.x), Struct_1(var_2.c.a, 1u, var_2.b.c, vec3<bool>(true, var_2.b.d.x, false)), Struct_1(vec3<f32>(388f, var_2.c.c.x, var_2.c.c.x), 0u, var_2.b.c, vec3<bool>(var_2.b.d.x, var_2.b.d.x, var_2.c.d.x))), Struct_3(var_2), vec4<f32>(var_2.c.c.x, var_2.b.c.x, var_2.c.c.x, 2240f), var_2.b.a.x, vec3<bool>(var_2.c.d.x, true, false)), Struct_3(Struct_2(vec4<i32>(0i, 0i, var_2.a.x, global0[_wgslsmith_index_u32(var_0.x, 18u)]), Struct_1(var_2.c.a, u_input.a.x, vec4<f32>(var_2.c.a.x, -434f, var_2.b.a.x, var_2.b.c.x), vec3<bool>(global1[_wgslsmith_index_u32(68230u, 27u)], false, false)), var_2.b)), u_input.a.yxz)), u_input.a.zwz), Struct_3(Struct_2(var_2.a ^ vec4<i32>(-1i, global0[_wgslsmith_index_u32(var_0.x, 18u)], -3220i, -34795i), Struct_1(global2[_wgslsmith_index_u32(50894u, 24u)], u_input.a.x, vec4<f32>(var_2.c.c.x, var_2.b.c.x, 1777f, var_2.c.c.x), vec3<bool>(global1[_wgslsmith_index_u32(var_2.b.b, 27u)], var_2.c.d.x, false)), Struct_1(global2[_wgslsmith_index_u32(var_2.b.b, 24u)], 26010u, vec4<f32>(897f, var_2.b.c.x, var_2.c.c.x, var_2.b.a.x), vec3<bool>(global1[_wgslsmith_index_u32(45726u, 27u)], true, false)))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_2.c.c - var_2.c.c)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_3(Struct_2(var_2.a, Struct_1(global2[_wgslsmith_index_u32(85787u, 24u)], 4294967295u, var_2.c.c, var_2.c.d), Struct_1(var_2.b.c.zyy, 0u, var_2.b.c, vec3<bool>(true, true, global1[_wgslsmith_index_u32(4294967295u, 27u)])))), global0[_wgslsmith_index_u32(~u_input.a.x, 18u)]))), select(var_2.b.d, !(!var_2.b.d), all(vec4<bool>(var_2.c.d.x, global1[_wgslsmith_index_u32(1u, 27u)], true, false)))), Struct_3(Struct_2(min(vec4<i32>(0i, global0[_wgslsmith_index_u32(0u, 18u)], -1i, var_1), -var_2.a), func_3(var_2.c.d.x, Struct_5(var_2, Struct_3(var_2), vec4<f32>(var_2.c.a.x, 832f, var_2.b.a.x, -2116f), 1143f, vec3<bool>(global1[_wgslsmith_index_u32(0u, 27u)], true, false)), Struct_3(Struct_2(var_2.a, var_2.b, Struct_1(vec3<f32>(var_2.c.c.x, var_2.c.a.x, -586f), 59569u, vec4<f32>(2198f, var_2.b.c.x, 327f, 685f), var_2.c.d))), var_0 & vec3<u32>(var_0.x, 34111u, var_2.b.b)).b, Struct_1(vec3<f32>(var_2.c.a.x, -205f, var_2.b.a.x), 1u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.b.c.x, var_2.b.a.x, -499f, var_2.b.a.x)), func_3(global1[_wgslsmith_index_u32(var_2.b.b, 27u)], Struct_5(var_2, Struct_3(Struct_2(vec4<i32>(17117i, var_2.a.x, var_1, 38924i), Struct_1(vec3<f32>(-412f, var_2.c.c.x, 708f), u_input.a.x, vec4<f32>(-886f, -132f, -2438f, -1503f), var_2.b.d), Struct_1(vec3<f32>(var_2.b.c.x, var_2.b.a.x, var_2.c.a.x), 1u, vec4<f32>(1550f, 208f, 3482f, var_2.b.c.x), vec3<bool>(var_2.c.d.x, global1[_wgslsmith_index_u32(var_0.x, 27u)], true)))), vec4<f32>(-996f, var_2.c.c.x, var_2.c.c.x, -547f), 1787f, vec3<bool>(global1[_wgslsmith_index_u32(1u, 27u)], var_2.c.d.x, true)), Struct_3(Struct_2(vec4<i32>(var_1, 44270i, global0[_wgslsmith_index_u32(1u, 18u)], global0[_wgslsmith_index_u32(2626u, 18u)]), var_2.c, var_2.c)), var_0).b.d))), u_input.a.yzz);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(~var_3.c.b, reverseBits(_wgslsmith_div_u32(4294967295u, abs(4294967295u)))), firstLeadingBit(_wgslsmith_mod_i32(countOneBits(~global0[_wgslsmith_index_u32(var_0.x, 18u)]), var_3.a.x)));
}

