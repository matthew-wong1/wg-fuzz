struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec3<bool>,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: i32,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<u32>,
}

struct Struct_5 {
    a: f32,
    b: vec4<bool>,
    c: f32,
    d: Struct_1,
    e: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 25> = array<Struct_4, 25>(Struct_4(Struct_1(vec4<f32>(-523f, 1153f, -1431f, -1834f)), Struct_1(vec4<f32>(-821f, -277f, 123f, -533f)), vec2<u32>(8059u, 1u)), Struct_4(Struct_1(vec4<f32>(1746f, 1520f, 731f, 918f)), Struct_1(vec4<f32>(952f, 884f, -315f, 1210f)), vec2<u32>(4294967295u, 30159u)), Struct_4(Struct_1(vec4<f32>(-1261f, 806f, 594f, 1000f)), Struct_1(vec4<f32>(-1564f, -1000f, 1178f, -1359f)), vec2<u32>(40918u, 27783u)), Struct_4(Struct_1(vec4<f32>(-2240f, 504f, -2157f, -123f)), Struct_1(vec4<f32>(-158f, -1000f, 1399f, 673f)), vec2<u32>(4294967295u, 0u)), Struct_4(Struct_1(vec4<f32>(-253f, 806f, 1097f, -1276f)), Struct_1(vec4<f32>(-832f, 2301f, 736f, -990f)), vec2<u32>(0u, 4294967295u)), Struct_4(Struct_1(vec4<f32>(-392f, -1554f, -540f, -794f)), Struct_1(vec4<f32>(412f, -640f, -596f, -782f)), vec2<u32>(1677u, 31581u)), Struct_4(Struct_1(vec4<f32>(338f, 686f, 986f, 893f)), Struct_1(vec4<f32>(848f, -191f, -543f, 1000f)), vec2<u32>(0u, 44916u)), Struct_4(Struct_1(vec4<f32>(1000f, -434f, 1000f, -357f)), Struct_1(vec4<f32>(160f, -154f, -1000f, 314f)), vec2<u32>(48898u, 45655u)), Struct_4(Struct_1(vec4<f32>(899f, 2448f, -1054f, -1070f)), Struct_1(vec4<f32>(-1000f, -989f, 328f, 1277f)), vec2<u32>(0u, 18979u)), Struct_4(Struct_1(vec4<f32>(419f, -1636f, -588f, -174f)), Struct_1(vec4<f32>(-164f, -2601f, -667f, 2042f)), vec2<u32>(1780u, 1u)), Struct_4(Struct_1(vec4<f32>(513f, -427f, -1536f, 577f)), Struct_1(vec4<f32>(1000f, -1359f, -896f, -639f)), vec2<u32>(0u, 65682u)), Struct_4(Struct_1(vec4<f32>(-655f, -187f, -2089f, -298f)), Struct_1(vec4<f32>(-1403f, 995f, -183f, 228f)), vec2<u32>(4294967295u, 28429u)), Struct_4(Struct_1(vec4<f32>(423f, -164f, 1000f, -1084f)), Struct_1(vec4<f32>(603f, -1325f, -1086f, -164f)), vec2<u32>(4294967295u, 31198u)), Struct_4(Struct_1(vec4<f32>(1116f, 789f, 1733f, -140f)), Struct_1(vec4<f32>(154f, 233f, 1889f, 1153f)), vec2<u32>(12459u, 1u)), Struct_4(Struct_1(vec4<f32>(326f, 1762f, 652f, -509f)), Struct_1(vec4<f32>(-1000f, 1453f, 737f, 678f)), vec2<u32>(3693u, 4294967295u)), Struct_4(Struct_1(vec4<f32>(1285f, -1635f, 454f, -893f)), Struct_1(vec4<f32>(-1521f, 236f, 1797f, -837f)), vec2<u32>(0u, 0u)), Struct_4(Struct_1(vec4<f32>(-341f, -566f, -690f, -216f)), Struct_1(vec4<f32>(-1000f, 881f, -234f, -1017f)), vec2<u32>(13107u, 0u)), Struct_4(Struct_1(vec4<f32>(1000f, 2392f, 1883f, 611f)), Struct_1(vec4<f32>(1000f, -467f, -1426f, 879f)), vec2<u32>(4294967295u, 0u)), Struct_4(Struct_1(vec4<f32>(1264f, -1384f, -674f, -1020f)), Struct_1(vec4<f32>(-302f, -1596f, 251f, 395f)), vec2<u32>(38151u, 13912u)), Struct_4(Struct_1(vec4<f32>(-102f, -233f, 977f, -161f)), Struct_1(vec4<f32>(-221f, -708f, -1134f, -810f)), vec2<u32>(4294967295u, 0u)), Struct_4(Struct_1(vec4<f32>(1364f, -1144f, 1008f, 309f)), Struct_1(vec4<f32>(-1203f, -2042f, 472f, 562f)), vec2<u32>(4294967295u, 91841u)), Struct_4(Struct_1(vec4<f32>(1000f, -696f, 187f, -1775f)), Struct_1(vec4<f32>(-236f, 1110f, -1983f, 181f)), vec2<u32>(20261u, 1u)), Struct_4(Struct_1(vec4<f32>(-1083f, -948f, 336f, 1282f)), Struct_1(vec4<f32>(1277f, -1000f, 1000f, 591f)), vec2<u32>(71517u, 75557u)), Struct_4(Struct_1(vec4<f32>(-2308f, 183f, -705f, -910f)), Struct_1(vec4<f32>(-436f, -1342f, 427f, -485f)), vec2<u32>(15692u, 5950u)), Struct_4(Struct_1(vec4<f32>(712f, -107f, 905f, 309f)), Struct_1(vec4<f32>(-2387f, 1392f, -793f, 939f)), vec2<u32>(69264u, 1u)));

var<private> global1: array<u32, 3> = array<u32, 3>(4294967295u, 1u, 26328u);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_5) -> vec4<f32> {
    let var_0 = arg_1.d.a;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(floor(arg_1.d.a)))));
    var_1 = arg_1.d.a;
    let var_2 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -238f), var_1.x, -715f, 108f));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(var_0 - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.d.a.x, var_0.x, var_2.a.x, var_2.a.x) * vec4<f32>(var_2.a.x, -315f, var_0.x, -542f))), var_2.a)) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_2.a * vec4<f32>(var_0.x, var_0.x, var_0.x, -666f)) + var_2.a))));
    return var_0;
}

fn func_2() -> Struct_3 {
    global1 = array<u32, 3>();
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-262f, 1000f, -150f, -1569f))) + _wgslsmith_f_op_vec4_f32(func_3(vec2<u32>(u_input.a, u_input.a), Struct_5(862f, vec4<bool>(true, true, false, true), -2019f, Struct_1(vec4<f32>(-382f, -837f, 941f, 1543f)), 51573u)))))));
    let var_1 = Struct_2(var_0.ww, vec3<bool>(false, any(vec3<bool>(u_input.a == 4294967295u, all(vec2<bool>(true, true)), false)), (all(vec3<bool>(false, false, false)) | true) && !all(vec3<bool>(true, false, true))), global1[_wgslsmith_index_u32(~firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(u_input.a, global1[_wgslsmith_index_u32(13451u, 3u)], 1u, 80205u) << (vec4<u32>(u_input.a, 1u, global1[_wgslsmith_index_u32(0u, 3u)], 4294967295u) % vec4<u32>(32u)))), 3u)], Struct_1(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.x + var_0.x))), -930f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1000f - var_0.x), _wgslsmith_f_op_f32(max(-396f, var_0.x)), true)))));
    global0 = array<Struct_4, 25>();
    global0 = array<Struct_4, 25>();
    return Struct_3(var_0.x, var_1.d, 2147483647i ^ select(-30429i, countOneBits(_wgslsmith_mod_i32(-34432i, 20307i)), false), Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_f32(max(var_1.a.x, 625f)))), !var_1.b, max(_wgslsmith_mult_u32(1u, 133052u), countOneBits(abs(4294967295u))), Struct_1(var_1.d.a)));
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: Struct_3, arg_3: Struct_5) -> Struct_1 {
    global1 = array<u32, 3>();
    global1 = array<u32, 3>();
    var var_0 = _wgslsmith_div_u32(arg_2.d.c, ~(~countOneBits(arg_2.d.c)));
    var_0 = 1u;
    var var_1 = vec3<f32>(2111f, _wgslsmith_f_op_f32(-arg_2.a), -1331f);
    return arg_0;
}

fn func_1(arg_0: i32, arg_1: vec3<bool>, arg_2: bool, arg_3: Struct_5) -> u32 {
    let var_0 = select(u_input.a, ~u_input.a, false);
    var var_1 = Struct_5(-774f, arg_3.b, _wgslsmith_f_op_f32(round(arg_3.d.a.x)), func_4(arg_3.d, firstLeadingBit((-15711i << (u_input.a % 32u)) >> (var_0 % 32u)), func_2(), Struct_5(arg_3.a, arg_3.b, _wgslsmith_div_f32(-1352f, _wgslsmith_f_op_f32(arg_3.c - arg_3.c)), func_2().d.d, 4294967295u)), 71791u);
    global0 = array<Struct_4, 25>();
    let var_2 = vec4<f32>(641f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-func_2().d.a.x), arg_3.a)))), var_1.a, _wgslsmith_f_op_f32(exp2(func_2().d.a.x)));
    var var_3 = _wgslsmith_dot_vec4_i32(abs(select(countOneBits(vec4<i32>(arg_0, 24154i, arg_0, arg_0)) >> (~vec4<u32>(27239u, var_1.e, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_3.e, 3u)], 3u)], var_1.e) % vec4<u32>(32u)), select(abs(vec4<i32>(arg_0, -37876i, arg_0, 4255i)), vec4<i32>(arg_0, 1i, 17168i, -53145i), !vec4<bool>(arg_3.b.x, var_1.b.x, false, false)), vec4<bool>(all(vec2<bool>(true, arg_2)), all(arg_3.b.ywy), arg_2, arg_3.e >= 0u))), vec4<i32>(~func_2().c, arg_0, -2147483647i, func_2().c >> (var_0 % 32u)));
    return ~var_1.e;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_4, 25>();
    var var_0 = i32(-1i) * -abs(_wgslsmith_add_i32(_wgslsmith_mult_i32(2986i, 991i), _wgslsmith_add_i32(-1i, 2518i)));
    let var_1 = vec3<bool>(true, true, !any(select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false)), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false)), vec4<bool>(false, true, true, false))));
    var var_2 = u_input.a;
    let var_3 = !var_1.x;
    let var_4 = vec2<u32>(_wgslsmith_div_u32(func_1(1i, !var_1, global1[_wgslsmith_index_u32(abs(1u), 3u)] > u_input.a, Struct_5(-2257f, vec4<bool>(true, false, var_3, true), _wgslsmith_f_op_f32(min(-340f, -1415f)), Struct_1(vec4<f32>(333f, -872f, -509f, 1000f)), 0u)), global1[_wgslsmith_index_u32(firstLeadingBit(reverseBits(u_input.a)), 3u)]), 2727u);
    var var_5 = ~(-(~_wgslsmith_sub_i32(-44235i >> (u_input.a % 32u), 51920i)));
    var_2 = ~_wgslsmith_div_u32(_wgslsmith_add_u32(global1[_wgslsmith_index_u32(u_input.a, 3u)], 4294967295u << ((4294967295u | global1[_wgslsmith_index_u32(var_4.x, 3u)]) % 32u)), func_2().d.c);
    var_2 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(35547i) ^ _wgslsmith_sub_i32(1i, 735i), ~(~(vec4<u32>(global1[_wgslsmith_index_u32(u_input.a, 3u)], u_input.a, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 3u)], 3u)], u_input.a) | ~vec4<u32>(4294967295u, var_4.x, 24740u, 4267u))), vec4<i32>(22148i, countOneBits(abs(1i)), ~_wgslsmith_dot_vec3_i32(vec3<i32>(-3446i, 2147483647i, -10663i), vec3<i32>(0i, -1i, -2147483647i)) << (u_input.a % 32u), ~_wgslsmith_mod_i32(31421i, 2147483647i)));
}

