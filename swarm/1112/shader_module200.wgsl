struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: vec4<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(vec4<i32>(27134i, 33903i, 6363i, 36157i), 8876i, 28879u, vec4<i32>(0i, 36766i, i32(-2147483648), -4972i)), Struct_1(vec4<i32>(19343i, 1i, 21733i, -14336i), 2147483647i, 27523u, vec4<i32>(2147483647i, 21844i, 2147483647i, i32(-2147483648))), Struct_1(vec4<i32>(1i, 0i, 41638i, 4102i), 1i, 4294967295u, vec4<i32>(-1i, 0i, -21754i, -53960i)), Struct_1(vec4<i32>(2147483647i, -30027i, -21841i, -41581i), 0i, 3744u, vec4<i32>(-1i, -14715i, 54500i, 2147483647i)), Struct_1(vec4<i32>(0i, -52110i, -1i, -49647i), 0i, 0u, vec4<i32>(31881i, -9894i, 1i, -1i)), Struct_1(vec4<i32>(-84658i, -19614i, 0i, 2147483647i), i32(-2147483648), 0u, vec4<i32>(i32(-2147483648), 1i, 2147483647i, i32(-2147483648))), Struct_1(vec4<i32>(2147483647i, 22524i, i32(-2147483648), -1273i), 0i, 26120u, vec4<i32>(2147483647i, 24622i, 24955i, 1i)), Struct_1(vec4<i32>(56510i, -45997i, 21458i, -3754i), 1i, 4294967295u, vec4<i32>(0i, 31533i, 1i, 8914i)), Struct_1(vec4<i32>(1075i, -57899i, 21878i, 11195i), i32(-2147483648), 5386u, vec4<i32>(-11387i, 44742i, -1i, 2147483647i)), Struct_1(vec4<i32>(-14087i, -12553i, 0i, -1i), 51039i, 1u, vec4<i32>(0i, -1i, 29639i, 34011i)), Struct_1(vec4<i32>(0i, i32(-2147483648), 34763i, 44281i), 3128i, 26130u, vec4<i32>(i32(-2147483648), -33904i, i32(-2147483648), -1i)), Struct_1(vec4<i32>(0i, -30994i, 2147483647i, -1i), -34759i, 795u, vec4<i32>(2147483647i, 0i, 0i, 2147483647i)), Struct_1(vec4<i32>(1i, 0i, 0i, 0i), -5995i, 4294967295u, vec4<i32>(1i, -1i, -36254i, 3208i)), Struct_1(vec4<i32>(22333i, i32(-2147483648), -33423i, -46870i), 4728i, 1u, vec4<i32>(-6923i, -1i, -17774i, -28830i)), Struct_1(vec4<i32>(-95572i, 18605i, 0i, -1i), 33220i, 5302u, vec4<i32>(2772i, -1834i, 1i, 7626i)), Struct_1(vec4<i32>(2147483647i, -1i, -52259i, 0i), -24344i, 0u, vec4<i32>(4407i, 1i, 36013i, 25210i)), Struct_1(vec4<i32>(1i, 2147483647i, -1i, -20862i), -52073i, 4294967295u, vec4<i32>(-52177i, 2147483647i, 3992i, i32(-2147483648))), Struct_1(vec4<i32>(-1i, 1i, -1i, 1i), 0i, 6113u, vec4<i32>(-1i, 2114i, 1i, -1i)), Struct_1(vec4<i32>(0i, i32(-2147483648), 32279i, 38274i), 2147483647i, 14999u, vec4<i32>(-26895i, 21121i, 46237i, i32(-2147483648))), Struct_1(vec4<i32>(-21601i, -38720i, 52173i, -44094i), 8962i, 34566u, vec4<i32>(2147483647i, 1i, -31199i, 1i)), Struct_1(vec4<i32>(1i, 0i, 0i, 56220i), -1i, 2175u, vec4<i32>(1i, 2147483647i, 0i, 2147483647i)), Struct_1(vec4<i32>(-22769i, 22088i, -84917i, -37857i), -6216i, 22493u, vec4<i32>(0i, 9760i, 0i, -2590i)), Struct_1(vec4<i32>(35976i, 1i, -14237i, -35943i), -68035i, 1u, vec4<i32>(1i, 6939i, 11413i, 1i)), Struct_1(vec4<i32>(-22962i, 26865i, 20525i, 19295i), 5299i, 7649u, vec4<i32>(2516i, i32(-2147483648), 1i, -75072i)), Struct_1(vec4<i32>(1i, 18098i, -11506i, 13461i), 2147483647i, 86362u, vec4<i32>(1i, -1i, -7075i, -1i)), Struct_1(vec4<i32>(44200i, -34179i, 14771i, 2147483647i), 101253i, 0u, vec4<i32>(-27754i, -73949i, i32(-2147483648), -26831i)), Struct_1(vec4<i32>(25364i, -20538i, -1i, 2147483647i), 0i, 43134u, vec4<i32>(1i, -1i, 40744i, 0i)), Struct_1(vec4<i32>(31350i, 0i, -8431i, i32(-2147483648)), 0i, 20827u, vec4<i32>(23145i, 6057i, -40766i, 28165i)), Struct_1(vec4<i32>(-6548i, 37643i, -39554i, -58i), -11694i, 30120u, vec4<i32>(-6119i, -28362i, -42883i, 2147483647i)), Struct_1(vec4<i32>(1i, 0i, i32(-2147483648), i32(-2147483648)), -67630i, 11614u, vec4<i32>(-1975i, 2147483647i, 0i, 16147i)), Struct_1(vec4<i32>(-1i, -34952i, 39276i, -3885i), i32(-2147483648), 0u, vec4<i32>(8058i, -17775i, i32(-2147483648), 2147483647i)), Struct_1(vec4<i32>(-7040i, -59531i, -22241i, -28825i), -53838i, 1u, vec4<i32>(-25258i, -67096i, -1i, -28726i)));

var<private> global1: array<vec2<f32>, 25> = array<vec2<f32>, 25>(vec2<f32>(-997f, -1000f), vec2<f32>(-545f, -249f), vec2<f32>(379f, 2351f), vec2<f32>(-391f, -1357f), vec2<f32>(1000f, 937f), vec2<f32>(227f, -1045f), vec2<f32>(-579f, 549f), vec2<f32>(-477f, 147f), vec2<f32>(-1029f, 2533f), vec2<f32>(-615f, -757f), vec2<f32>(-692f, -793f), vec2<f32>(950f, 1074f), vec2<f32>(2354f, -1455f), vec2<f32>(986f, -1406f), vec2<f32>(-1990f, 146f), vec2<f32>(-309f, -210f), vec2<f32>(1023f, -883f), vec2<f32>(683f, -1078f), vec2<f32>(-1361f, 585f), vec2<f32>(-272f, -382f), vec2<f32>(447f, -335f), vec2<f32>(1076f, 2926f), vec2<f32>(395f, 829f), vec2<f32>(-1037f, 562f), vec2<f32>(-249f, 906f));

var<private> global2: vec2<f32>;

var<private> global3: array<vec2<f32>, 11> = array<vec2<f32>, 11>(vec2<f32>(2037f, -309f), vec2<f32>(-788f, -1377f), vec2<f32>(313f, -1384f), vec2<f32>(-1373f, 1080f), vec2<f32>(-160f, 1613f), vec2<f32>(-468f, -2103f), vec2<f32>(-317f, 1000f), vec2<f32>(1517f, 465f), vec2<f32>(-479f, 308f), vec2<f32>(-298f, -1000f), vec2<f32>(-691f, -477f));

var<private> global4: bool;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: vec4<u32>, arg_1: i32) -> u32 {
    global1 = array<vec2<f32>, 25>();
    global3 = array<vec2<f32>, 11>();
    let var_0 = u_input.a.zwz;
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1396f);
    let var_2 = _wgslsmith_f_op_f32(-581f - global2.x);
    return ~(4294967295u << (arg_0.x % 32u));
}

fn func_1(arg_0: bool) -> u32 {
    let var_0 = _wgslsmith_add_u32(~(~_wgslsmith_div_u32(countOneBits(u_input.a.x), 4294967295u)), countOneBits(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(u_input.d.xxy, vec3<u32>(u_input.a.x, 4294967295u, 4294967295u)), _wgslsmith_mod_vec3_u32(u_input.a.yyz, u_input.a.zzz)) & (func_2(vec4<u32>(u_input.a.x, 10355u, 0u, u_input.a.x), 2147483647i) ^ _wgslsmith_div_u32(u_input.a.x, 4294967295u))));
    global3 = array<vec2<f32>, 11>();
    var var_1 = !select(select(vec4<bool>(false, true, arg_0, true), select(vec4<bool>(arg_0, arg_0, arg_0, false), !vec4<bool>(arg_0, true, arg_0, arg_0), true), arg_0), select(!select(vec4<bool>(false, false, arg_0, arg_0), vec4<bool>(arg_0, arg_0, true, true), true), !vec4<bool>(arg_0, arg_0, true, true), all(vec2<bool>(true, true))), arg_0);
    global1 = array<vec2<f32>, 25>();
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1220f))))), _wgslsmith_f_op_f32(global2.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(378f)))), global2.x, _wgslsmith_div_f32(global2.x, _wgslsmith_f_op_f32(f32(-1f) * -199f))));
    return ~var_0;
}

fn func_3() -> vec3<u32> {
    global4 = true;
    global2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(abs(u_input.d.x >> (u_input.a.x % 32u)), _wgslsmith_sub_u32(~u_input.a.x, ~u_input.a.x)), 11u)]) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(max(u_input.d.xwz, u_input.d.zxw), select(u_input.a.zzz, u_input.a.wxy, vec3<bool>(false, false, false))), 11u)]) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(global3[_wgslsmith_index_u32(1u, 11u)]))))));
    global1 = array<vec2<f32>, 25>();
    global4 = any(select(vec4<bool>(true, true, any(vec3<bool>(true, true, true)), false), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, false, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), true), select(false, true, u_input.a.x <= 0u))));
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(trunc(global2.x)), _wgslsmith_div_f32(-1000f, -165f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(global2.x, -1819f)))) * _wgslsmith_f_op_f32(-1230f + _wgslsmith_f_op_f32(sign(global2.x)))) + global2.x));
    return vec3<u32>(0u, 0u, abs(112552u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~u_input.a.x >> (~func_1(any(vec2<bool>(true, true))) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(-vec2<i32>(~13610i, -37202i), abs(_wgslsmith_dot_vec3_u32(max(func_3(), vec3<u32>(1u, 6225u, u_input.d.x)), vec3<u32>(u_input.d.x, ~38284u, max(var_0, 1u)))), _wgslsmith_sub_i32(_wgslsmith_mult_i32(-u_input.b, u_input.c), u_input.c));
}

