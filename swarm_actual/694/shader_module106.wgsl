struct Struct_1 {
    a: vec4<i32>,
    b: vec4<u32>,
    c: i32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: u32,
    d: bool,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 19>;

var<private> global1: array<f32, 19> = array<f32, 19>(1341f, -323f, -1502f, 389f, 542f, -981f, 562f, 1000f, 1102f, -1471f, -896f, 104f, -882f, -2592f, -181f, -390f, -1675f, -2127f, -1032f);

var<private> global2: vec2<i32>;

var<private> global3: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(vec4<i32>(0i, -9449i, 1i, 0i), vec4<u32>(1u, 1u, 0u, 54601u), 10593i), Struct_1(vec4<i32>(-47074i, i32(-2147483648), -16902i, 25675i), vec4<u32>(25549u, 13236u, 0u, 29106u), 2147483647i), Struct_1(vec4<i32>(-60396i, 0i, 12592i, 1i), vec4<u32>(30125u, 69735u, 0u, 32516u), 0i));

var<private> global4: array<Struct_2, 24> = array<Struct_2, 24>(Struct_2(false, Struct_1(vec4<i32>(-51395i, 0i, -29422i, i32(-2147483648)), vec4<u32>(71057u, 98836u, 4294967295u, 1u), 48690i), 15861u, false, vec4<f32>(-646f, 2143f, -1436f, 131f)), Struct_2(true, Struct_1(vec4<i32>(-16932i, 3231i, 1i, 2147483647i), vec4<u32>(28931u, 4050u, 4294967295u, 0u), 56293i), 30081u, true, vec4<f32>(-981f, -1000f, -1767f, 1634f)), Struct_2(false, Struct_1(vec4<i32>(20353i, 37159i, i32(-2147483648), i32(-2147483648)), vec4<u32>(21459u, 29806u, 43108u, 61849u), -1i), 0u, true, vec4<f32>(809f, 2280f, -1163f, 475f)), Struct_2(true, Struct_1(vec4<i32>(1i, 0i, 45915i, 1i), vec4<u32>(38614u, 1u, 0u, 19804u), 1i), 4294967295u, true, vec4<f32>(942f, -379f, -1223f, -851f)), Struct_2(true, Struct_1(vec4<i32>(0i, 13391i, 8054i, 1i), vec4<u32>(61754u, 9493u, 19780u, 20613u), -53170i), 1u, false, vec4<f32>(135f, 154f, 732f, 1000f)), Struct_2(true, Struct_1(vec4<i32>(-1110i, -6398i, i32(-2147483648), 35490i), vec4<u32>(0u, 36084u, 11438u, 0u), 1i), 97408u, true, vec4<f32>(1129f, -173f, 2143f, 299f)), Struct_2(true, Struct_1(vec4<i32>(2147483647i, i32(-2147483648), 49968i, 1i), vec4<u32>(1u, 1262u, 88953u, 1u), 20630i), 4294967295u, false, vec4<f32>(1636f, 2011f, 1348f, 1000f)), Struct_2(true, Struct_1(vec4<i32>(1i, -47254i, 0i, 2147483647i), vec4<u32>(24387u, 5293u, 57159u, 16393u), 2147483647i), 0u, true, vec4<f32>(-804f, 576f, -1038f, -512f)), Struct_2(true, Struct_1(vec4<i32>(1i, i32(-2147483648), i32(-2147483648), -1i), vec4<u32>(4294967295u, 0u, 4294967295u, 1u), -1i), 42292u, true, vec4<f32>(843f, 1122f, 1125f, -1000f)), Struct_2(false, Struct_1(vec4<i32>(41072i, 1i, 10364i, -5044i), vec4<u32>(4294967295u, 14518u, 0u, 80825u), 36458i), 1377u, false, vec4<f32>(1000f, 876f, -1356f, -2207f)), Struct_2(true, Struct_1(vec4<i32>(0i, 27661i, 0i, -1i), vec4<u32>(0u, 4294967295u, 1u, 54756u), i32(-2147483648)), 4294967295u, true, vec4<f32>(319f, 1294f, -1000f, 240f)), Struct_2(true, Struct_1(vec4<i32>(-2398i, -6596i, -6048i, 0i), vec4<u32>(0u, 0u, 0u, 0u), -54852i), 57954u, false, vec4<f32>(-218f, -911f, -1464f, -402f)), Struct_2(true, Struct_1(vec4<i32>(16318i, i32(-2147483648), 20752i, -1i), vec4<u32>(9335u, 4294967295u, 4294967295u, 23930u), 0i), 11628u, true, vec4<f32>(-327f, 455f, -413f, 261f)), Struct_2(true, Struct_1(vec4<i32>(2147483647i, 1i, 2147483647i, -24809i), vec4<u32>(1u, 39156u, 31845u, 52562u), i32(-2147483648)), 0u, false, vec4<f32>(-1877f, 704f, 566f, 999f)), Struct_2(true, Struct_1(vec4<i32>(-3291i, 56409i, -1i, 0i), vec4<u32>(44962u, 0u, 44317u, 0u), i32(-2147483648)), 4294967295u, true, vec4<f32>(-718f, 719f, 1284f, 806f)), Struct_2(false, Struct_1(vec4<i32>(0i, -1i, -4476i, 1i), vec4<u32>(1u, 0u, 0u, 12686u), 59267i), 1u, true, vec4<f32>(-452f, 1174f, -126f, -600f)), Struct_2(true, Struct_1(vec4<i32>(-1i, 65078i, -18378i, 2147483647i), vec4<u32>(8524u, 0u, 54573u, 0u), 28578i), 41726u, true, vec4<f32>(-455f, 1915f, 107f, 613f)), Struct_2(true, Struct_1(vec4<i32>(-1i, -15378i, 33594i, 63572i), vec4<u32>(4294967295u, 6450u, 0u, 1u), i32(-2147483648)), 4294967295u, false, vec4<f32>(-858f, 1398f, -1564f, 779f)), Struct_2(true, Struct_1(vec4<i32>(15773i, i32(-2147483648), 12445i, -1i), vec4<u32>(22012u, 30919u, 35562u, 88798u), i32(-2147483648)), 373u, true, vec4<f32>(1000f, 419f, 1000f, 934f)), Struct_2(false, Struct_1(vec4<i32>(1i, 0i, 0i, 38578i), vec4<u32>(1u, 0u, 1u, 1u), -11534i), 34020u, false, vec4<f32>(-515f, -955f, -1045f, 465f)), Struct_2(true, Struct_1(vec4<i32>(2147483647i, -1i, 25850i, 2147483647i), vec4<u32>(1u, 91783u, 57679u, 1u), -38876i), 21225u, true, vec4<f32>(981f, 276f, 330f, 766f)), Struct_2(false, Struct_1(vec4<i32>(-1i, 19004i, 1i, 37472i), vec4<u32>(45400u, 28773u, 4294967295u, 1u), -23353i), 0u, true, vec4<f32>(1007f, -245f, 856f, -1093f)), Struct_2(false, Struct_1(vec4<i32>(-1i, 2147483647i, 47885i, -24061i), vec4<u32>(0u, 13619u, 78713u, 37471u), -2110i), 44504u, true, vec4<f32>(-1121f, 566f, 1281f, -866f)), Struct_2(false, Struct_1(vec4<i32>(-38697i, 2147483647i, 38548i, i32(-2147483648)), vec4<u32>(0u, 0u, 4294967295u, 27119u), 1i), 8729u, false, vec4<f32>(-426f, -813f, -139f, 145f)));

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: bool) -> i32 {
    global1 = array<f32, 19>();
    global1 = array<f32, 19>();
    global4 = array<Struct_2, 24>();
    let var_0 = _wgslsmith_clamp_u32(~global0[_wgslsmith_index_u32(~u_input.b.x, 19u)], u_input.b.x, u_input.b.x);
    global2 = -(vec2<i32>(global2.x, u_input.a) & _wgslsmith_clamp_vec2_i32(~(~vec2<i32>(-14073i, 2147483647i)), -_wgslsmith_mod_vec2_i32(vec2<i32>(-10408i, -12368i), vec2<i32>(global2.x, global2.x)), _wgslsmith_mod_vec2_i32(countOneBits(vec2<i32>(u_input.a, u_input.a)), ~vec2<i32>(global2.x, 916i))));
    return _wgslsmith_sub_i32(global2.x, -1213i);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: bool) -> vec4<bool> {
    global0 = array<u32, 19>();
    global3 = array<Struct_1, 3>();
    let var_0 = arg_1.b;
    global4 = array<Struct_2, 24>();
    return vec4<bool>(arg_2, !(!arg_0.a), _wgslsmith_f_op_f32(arg_1.e.x + _wgslsmith_f_op_f32(f32(-1f) * -648f)) > _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(4294967295u, 19u)] - 1409f) + -476f))), false);
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: Struct_2) -> u32 {
    global4 = array<Struct_2, 24>();
    let var_0 = min(u_input.a, -(~8554i));
    let var_1 = select(vec4<bool>(false, arg_2.d, arg_2.a, all(vec4<bool>(arg_2.d | arg_2.d, true, !arg_2.d, false))), select(!func_3(arg_2, global4[_wgslsmith_index_u32(~u_input.b.x, 24u)], all(vec2<bool>(arg_2.a, true))), select(!select(vec4<bool>(arg_2.d, arg_2.d, false, false), vec4<bool>(false, true, true, arg_2.d), vec4<bool>(true, true, true, arg_2.a)), vec4<bool>(arg_2.a, select(false, arg_2.d, true), true, any(vec2<bool>(arg_2.d, false))), false), any(vec3<bool>(false, arg_2.a, true))), !(!select(vec4<bool>(arg_2.d, false, true, true), select(vec4<bool>(true, arg_2.a, arg_2.a, arg_2.d), vec4<bool>(arg_2.d, arg_2.d, true, true), false), all(vec4<bool>(arg_2.d, arg_2.a, true, true)))));
    var var_2 = global4[_wgslsmith_index_u32(countOneBits(max(4294967295u, reverseBits(_wgslsmith_add_u32(arg_2.c, ~u_input.b.x)))), 24u)];
    var var_3 = var_2.c;
    return ~7250u;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_1, 3>();
    var var_0 = 1u;
    var var_1 = global3[_wgslsmith_index_u32(u_input.b.x, 3u)];
    let var_2 = reverseBits(10455i);
    let var_3 = Struct_2(true, Struct_1(~var_1.a, vec4<u32>(4294967295u, 4294967295u, countOneBits(min(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(61488u, 19u)], 19u)], 19u)], global0[_wgslsmith_index_u32(34052u, 19u)])), ~u_input.b.x), func_1((var_1.a.x > 1i) | false)), _wgslsmith_mult_u32(1u, _wgslsmith_add_u32(_wgslsmith_sub_u32(_wgslsmith_mod_u32(0u, 35758u), global0[_wgslsmith_index_u32(u_input.b.x, 19u)]), select(func_2(global1[_wgslsmith_index_u32(u_input.b.x, 19u)], -1572i, global4[_wgslsmith_index_u32(10377u, 24u)]), ~58397u, false))), all(select(func_3(global4[_wgslsmith_index_u32(1u, 24u)], global4[_wgslsmith_index_u32(countOneBits(3639u), 24u)], true).xxz, select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), 867u > u_input.b.x), all(vec3<bool>(true, false, false)) || true)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global1[_wgslsmith_index_u32(var_1.b.x, 19u)], 814f, global1[_wgslsmith_index_u32(var_1.b.x, 19u)], global1[_wgslsmith_index_u32(4294967295u, 19u)]), vec4<f32>(-588f, global1[_wgslsmith_index_u32(32539u, 19u)], 374f, -2087f))) * vec4<f32>(global1[_wgslsmith_index_u32(u_input.b.x, 19u)], -1000f, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(122674u, 19u)], 19u)], global1[_wgslsmith_index_u32(106463u, 19u)])) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-173f, global1[_wgslsmith_index_u32(u_input.b.x, 19u)], global1[_wgslsmith_index_u32(u_input.b.x, 19u)], global1[_wgslsmith_index_u32(4294967295u, 19u)]))), vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 19u)], global1[_wgslsmith_index_u32(0u, 19u)], global1[_wgslsmith_index_u32(4294967295u, 19u)], 367f), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), true)))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global1[_wgslsmith_index_u32(~var_1.b.x, 19u)], 995f, 1000f, -538f))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(1649f, global1[_wgslsmith_index_u32(~u_input.b.x, 19u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(238f, 541f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-819f)) - _wgslsmith_f_op_f32(1494f + var_3.e.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1000f)) - var_3.e.x)), select(firstLeadingBit(_wgslsmith_sub_vec3_i32(var_3.b.a.yxz, select(var_3.b.a.wzy, var_3.b.a.zzz, vec3<bool>(var_3.a, var_3.d, false)))), _wgslsmith_mult_vec3_i32(-var_3.b.a.xww ^ ~var_3.b.a.zxz, -select(var_1.a.wyy, vec3<i32>(-17880i, var_1.c, 0i), vec3<bool>(true, var_3.d, var_3.a))), true), select(var_3.b.a.wzy, abs(vec3<i32>(-1i) * -vec3<i32>(var_3.b.c, 45780i, -9211i)), vec3<bool>(_wgslsmith_f_op_f32(-var_3.e.x) <= _wgslsmith_f_op_f32(sign(1293f)), func_3(Struct_2(false, global3[_wgslsmith_index_u32(var_1.b.x, 3u)], 57529u, false, var_3.e), Struct_2(true, global3[_wgslsmith_index_u32(4294967295u, 3u)], global0[_wgslsmith_index_u32(4294967295u, 19u)], var_3.d, vec4<f32>(-257f, 415f, var_3.e.x, global1[_wgslsmith_index_u32(var_1.b.x, 19u)])), var_3.a).x, select(false, var_3.a, true) | (-331f <= var_3.e.x))), _wgslsmith_div_f32(-795f, global1[_wgslsmith_index_u32(min(var_1.b.x, 0u), 19u)]), i32(-1i) * -firstLeadingBit(_wgslsmith_add_i32(9171i, u_input.a)));
}

