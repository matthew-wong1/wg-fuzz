struct Struct_1 {
    a: bool,
    b: f32,
    c: vec3<u32>,
    d: u32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<f32>,
    c: u32,
    d: f32,
    e: vec2<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<u32>,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 25> = array<Struct_4, 25>(Struct_4(Struct_2(Struct_1(true, -107f, vec3<u32>(0u, 44535u, 1u), 59909u, vec2<bool>(false, false))), vec4<u32>(1229u, 12211u, 80489u, 57516u), vec3<f32>(-1916f, -832f, -887f)), Struct_4(Struct_2(Struct_1(true, -1718f, vec3<u32>(0u, 0u, 4294967295u), 0u, vec2<bool>(false, true))), vec4<u32>(1u, 8969u, 22943u, 4294967295u), vec3<f32>(-1512f, -876f, 277f)), Struct_4(Struct_2(Struct_1(true, -356f, vec3<u32>(21108u, 1u, 29661u), 11482u, vec2<bool>(false, true))), vec4<u32>(4294967295u, 4294967295u, 52401u, 0u), vec3<f32>(1000f, -284f, -641f)), Struct_4(Struct_2(Struct_1(true, -939f, vec3<u32>(3229u, 0u, 45759u), 6557u, vec2<bool>(true, true))), vec4<u32>(1u, 0u, 18640u, 1u), vec3<f32>(1287f, -373f, -1658f)), Struct_4(Struct_2(Struct_1(true, 1547f, vec3<u32>(0u, 61362u, 4294967295u), 51907u, vec2<bool>(false, false))), vec4<u32>(63115u, 43976u, 16100u, 1u), vec3<f32>(2203f, -147f, -374f)), Struct_4(Struct_2(Struct_1(true, 1304f, vec3<u32>(6806u, 43601u, 4294967295u), 73320u, vec2<bool>(true, false))), vec4<u32>(6774u, 0u, 28513u, 80633u), vec3<f32>(-513f, -1000f, -636f)), Struct_4(Struct_2(Struct_1(false, -1000f, vec3<u32>(33116u, 115376u, 1u), 1u, vec2<bool>(true, true))), vec4<u32>(13656u, 1u, 24210u, 49390u), vec3<f32>(935f, -1809f, -2081f)), Struct_4(Struct_2(Struct_1(false, -245f, vec3<u32>(1u, 1u, 43154u), 61633u, vec2<bool>(true, true))), vec4<u32>(57717u, 1u, 4294967295u, 4294967295u), vec3<f32>(-1685f, -1015f, 887f)), Struct_4(Struct_2(Struct_1(false, -707f, vec3<u32>(19569u, 33626u, 4294967295u), 4294967295u, vec2<bool>(false, false))), vec4<u32>(0u, 4294967295u, 61230u, 25005u), vec3<f32>(-438f, 1019f, -1000f)), Struct_4(Struct_2(Struct_1(true, 1000f, vec3<u32>(4294967295u, 4294967295u, 0u), 6556u, vec2<bool>(false, true))), vec4<u32>(22817u, 0u, 4294967295u, 0u), vec3<f32>(1031f, -624f, -356f)), Struct_4(Struct_2(Struct_1(true, -756f, vec3<u32>(7021u, 13519u, 1u), 64199u, vec2<bool>(true, true))), vec4<u32>(1u, 7473u, 33294u, 0u), vec3<f32>(-1892f, 768f, 626f)), Struct_4(Struct_2(Struct_1(true, -1000f, vec3<u32>(39199u, 1u, 1u), 12888u, vec2<bool>(true, false))), vec4<u32>(37198u, 20746u, 56119u, 8554u), vec3<f32>(-1000f, -471f, 146f)), Struct_4(Struct_2(Struct_1(false, -1445f, vec3<u32>(1245u, 63565u, 0u), 1u, vec2<bool>(false, true))), vec4<u32>(1u, 1742u, 39339u, 66948u), vec3<f32>(-1766f, -1378f, 292f)), Struct_4(Struct_2(Struct_1(false, 943f, vec3<u32>(0u, 28374u, 602u), 33168u, vec2<bool>(false, true))), vec4<u32>(0u, 1u, 106426u, 0u), vec3<f32>(-323f, 1962f, 624f)), Struct_4(Struct_2(Struct_1(false, -681f, vec3<u32>(0u, 4294967295u, 37198u), 4294967295u, vec2<bool>(true, false))), vec4<u32>(1u, 40962u, 11752u, 59361u), vec3<f32>(1000f, 1000f, 1184f)), Struct_4(Struct_2(Struct_1(true, 873f, vec3<u32>(31088u, 1u, 4294967295u), 78454u, vec2<bool>(false, true))), vec4<u32>(0u, 0u, 76481u, 4294967295u), vec3<f32>(-427f, 596f, 378f)), Struct_4(Struct_2(Struct_1(false, -897f, vec3<u32>(0u, 37001u, 1354u), 16052u, vec2<bool>(false, true))), vec4<u32>(0u, 47234u, 10083u, 54731u), vec3<f32>(-1000f, -702f, -1646f)), Struct_4(Struct_2(Struct_1(true, 1019f, vec3<u32>(43629u, 23994u, 4294967295u), 4724u, vec2<bool>(true, false))), vec4<u32>(960u, 9360u, 1u, 1u), vec3<f32>(3523f, 443f, 610f)), Struct_4(Struct_2(Struct_1(false, -1000f, vec3<u32>(6535u, 0u, 22349u), 1u, vec2<bool>(false, true))), vec4<u32>(0u, 0u, 42454u, 79930u), vec3<f32>(864f, -131f, -548f)), Struct_4(Struct_2(Struct_1(false, -810f, vec3<u32>(1u, 4294967295u, 0u), 1u, vec2<bool>(true, true))), vec4<u32>(0u, 95963u, 44217u, 158430u), vec3<f32>(105f, 1575f, 2304f)), Struct_4(Struct_2(Struct_1(true, -2128f, vec3<u32>(2816u, 24296u, 1u), 0u, vec2<bool>(false, false))), vec4<u32>(4294967295u, 0u, 114681u, 105981u), vec3<f32>(-619f, -997f, 1323f)), Struct_4(Struct_2(Struct_1(false, -653f, vec3<u32>(4294967295u, 1778u, 1u), 4294967295u, vec2<bool>(false, false))), vec4<u32>(0u, 4294967295u, 48661u, 4294967295u), vec3<f32>(469f, -1492f, 143f)), Struct_4(Struct_2(Struct_1(false, 1271f, vec3<u32>(4294967295u, 41713u, 0u), 4294967295u, vec2<bool>(true, false))), vec4<u32>(0u, 50627u, 0u, 4294967295u), vec3<f32>(-264f, -138f, -387f)), Struct_4(Struct_2(Struct_1(true, -237f, vec3<u32>(1u, 1u, 1u), 2640u, vec2<bool>(true, false))), vec4<u32>(1u, 32432u, 4294967295u, 43655u), vec3<f32>(-1288f, -159f, 640f)), Struct_4(Struct_2(Struct_1(true, -1516f, vec3<u32>(1u, 39002u, 0u), 5111u, vec2<bool>(true, true))), vec4<u32>(78016u, 28137u, 50629u, 0u), vec3<f32>(-369f, -161f, -872f)));

var<private> global1: array<vec2<u32>, 28>;

var<private> global2: array<Struct_2, 27> = array<Struct_2, 27>(Struct_2(Struct_1(false, 872f, vec3<u32>(4294967295u, 4294967295u, 1u), 1018u, vec2<bool>(true, true))), Struct_2(Struct_1(false, -509f, vec3<u32>(8382u, 0u, 5428u), 0u, vec2<bool>(false, false))), Struct_2(Struct_1(true, 1000f, vec3<u32>(0u, 1u, 83714u), 31191u, vec2<bool>(true, true))), Struct_2(Struct_1(false, 554f, vec3<u32>(11643u, 61054u, 282u), 46364u, vec2<bool>(true, true))), Struct_2(Struct_1(false, -241f, vec3<u32>(721u, 83442u, 79543u), 15970u, vec2<bool>(false, false))), Struct_2(Struct_1(false, 473f, vec3<u32>(93643u, 1u, 9158u), 0u, vec2<bool>(true, false))), Struct_2(Struct_1(false, -670f, vec3<u32>(1u, 3770u, 30642u), 17183u, vec2<bool>(true, true))), Struct_2(Struct_1(true, 1102f, vec3<u32>(0u, 1u, 0u), 0u, vec2<bool>(true, false))), Struct_2(Struct_1(false, -270f, vec3<u32>(33597u, 4294967295u, 1u), 0u, vec2<bool>(false, true))), Struct_2(Struct_1(true, 1527f, vec3<u32>(54686u, 81718u, 109031u), 0u, vec2<bool>(false, true))), Struct_2(Struct_1(true, 1881f, vec3<u32>(48632u, 4294967295u, 4294967295u), 83456u, vec2<bool>(true, false))), Struct_2(Struct_1(false, 828f, vec3<u32>(157509u, 0u, 55444u), 12701u, vec2<bool>(false, false))), Struct_2(Struct_1(true, 121f, vec3<u32>(0u, 0u, 4294967295u), 42992u, vec2<bool>(false, false))), Struct_2(Struct_1(true, -825f, vec3<u32>(4294967295u, 4294967295u, 52453u), 15604u, vec2<bool>(false, false))), Struct_2(Struct_1(true, -555f, vec3<u32>(48348u, 49624u, 32713u), 40229u, vec2<bool>(false, false))), Struct_2(Struct_1(false, 1620f, vec3<u32>(31066u, 12069u, 0u), 22712u, vec2<bool>(false, false))), Struct_2(Struct_1(true, 115f, vec3<u32>(4294967295u, 8134u, 4294967295u), 0u, vec2<bool>(true, false))), Struct_2(Struct_1(false, -858f, vec3<u32>(1u, 24992u, 36572u), 1u, vec2<bool>(false, true))), Struct_2(Struct_1(true, -1000f, vec3<u32>(1u, 29170u, 1u), 4294967295u, vec2<bool>(true, false))), Struct_2(Struct_1(true, -1250f, vec3<u32>(1u, 1u, 57944u), 4294967295u, vec2<bool>(true, false))), Struct_2(Struct_1(false, -864f, vec3<u32>(1u, 8987u, 4170u), 1141u, vec2<bool>(false, true))), Struct_2(Struct_1(false, 225f, vec3<u32>(1u, 0u, 4294967295u), 4762u, vec2<bool>(true, true))), Struct_2(Struct_1(false, 508f, vec3<u32>(45291u, 4294967295u, 39450u), 1956u, vec2<bool>(true, true))), Struct_2(Struct_1(false, -896f, vec3<u32>(1u, 18741u, 116868u), 653u, vec2<bool>(false, false))), Struct_2(Struct_1(false, -1229f, vec3<u32>(27022u, 4294967295u, 4294967295u), 4294967295u, vec2<bool>(false, false))), Struct_2(Struct_1(false, -822f, vec3<u32>(11384u, 4294967295u, 1u), 106617u, vec2<bool>(false, false))), Struct_2(Struct_1(true, 1185f, vec3<u32>(57584u, 34612u, 1u), 4294967295u, vec2<bool>(true, true))));

var<private> global3: Struct_4 = Struct_4(Struct_2(Struct_1(false, 1258f, vec3<u32>(6748u, 0u, 39189u), 3275u, vec2<bool>(false, false))), vec4<u32>(21427u, 0u, 0u, 4294967295u), vec3<f32>(206f, -1974f, -1858f));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: vec2<f32>) -> vec2<u32> {
    let var_0 = global3.a;
    let var_1 = u_input.a;
    var var_2 = reverseBits(~(max(var_0.a.d, ~var_0.a.c.x) << (4294967295u % 32u)));
    var var_3 = arg_0.x;
    global0 = array<Struct_4, 25>();
    return ~var_0.a.c.zy;
}

fn func_2(arg_0: vec3<f32>) -> Struct_3 {
    global0 = array<Struct_4, 25>();
    global3 = global0[_wgslsmith_index_u32(52998u | select(global3.b.x, ~global3.b.x, !(!global3.a.a.e.x)), 25u)];
    let var_0 = vec2<u32>(47833u, global3.a.a.c.x) ^ _wgslsmith_add_vec2_u32(func_3(_wgslsmith_f_op_vec2_f32(-arg_0.zx)), ~global3.b.wx);
    var var_1 = Struct_2(Struct_1(~var_0.x >= 17475u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(349f, arg_0.x)))), ~global3.a.a.c, func_3(vec2<f32>(-524f, _wgslsmith_div_f32(372f, -1488f))).x, !vec2<bool>(any(vec3<bool>(false, true, global3.a.a.e.x)), true)));
    let var_2 = ~52065u;
    return Struct_3(Struct_2(Struct_1(!select(false, global3.a.a.a, false), 145f, _wgslsmith_div_vec3_u32(abs(var_1.a.c), vec3<u32>(4294967295u, 1u, 15934u)), 4294967295u, vec2<bool>(all(vec3<bool>(true, global3.a.a.a, false)), any(vec2<bool>(true, true))))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.c.x - -2087f) * _wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(-var_1.a.b), 1482f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1675f, var_1.a.b, 468f)) * _wgslsmith_f_op_vec3_f32(global3.c * vec3<f32>(1047f, arg_0.x, arg_0.x))))), ~_wgslsmith_div_u32(global3.b.x, abs(~global3.a.a.d)), -1986f, vec2<u32>(select(~var_1.a.d << (37898u % 32u), ~4294967295u, !(!global3.a.a.a)), var_2));
}

fn func_1(arg_0: vec3<u32>) -> Struct_2 {
    let var_0 = vec4<f32>(-1193f, _wgslsmith_f_op_f32(-global3.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-597f, -602f))), 508f);
    var var_1 = func_2(var_0.wwy);
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1084f, _wgslsmith_div_f32(-524f, var_0.x), _wgslsmith_f_op_f32(sign(-746f))), var_0.wzz));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.x + -618f), _wgslsmith_f_op_f32(exp2(var_0.x)))))));
    let var_4 = !func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(273f, _wgslsmith_f_op_f32(exp2(var_3)), _wgslsmith_f_op_f32(var_2.x - var_3)) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global3.a.a.b, 544f, 1000f))))).a.a.e;
    return func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_2 * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.b) - vec3<f32>(-1000f, var_0.x, var_3))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-787f, -303f, var_2.x), global3.c) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b.x, 510f, var_1.a.a.b)))))).a;
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_4, arg_2: i32) -> Struct_3 {
    let var_0 = global3.a;
    global3 = Struct_4(arg_1.a, vec4<u32>(abs(arg_0.x), 4294967295u, 4294967295u, arg_1.a.a.d), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-311f, 159f, global3.c.x), global3.c) + _wgslsmith_f_op_vec3_f32(sign(global3.c)))))));
    let var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.a.b, _wgslsmith_f_op_f32(f32(-1f) * -944f)) + _wgslsmith_f_op_f32(-838f - 564f))));
    global2 = array<Struct_2, 27>();
    let var_2 = Struct_1(all(!(!var_0.a.e)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-437f)))), reverseBits((abs(global3.b.wzw) >> (~global3.b.xyx % vec3<u32>(32u))) & (vec3<u32>(arg_0.x, var_0.a.c.x, var_0.a.d) << (global3.a.a.c % vec3<u32>(32u)))), _wgslsmith_div_u32(20659u, _wgslsmith_clamp_u32(reverseBits(var_0.a.c.x), ~global3.a.a.d | _wgslsmith_dot_vec3_u32(arg_1.a.a.c, vec3<u32>(78456u, arg_1.b.x, arg_0.x)), ~4294967295u & global3.a.a.c.x)), !vec2<bool>(true, true || (arg_1.a.a.e.x & true)));
    return Struct_3(Struct_2(Struct_1(global3.a.a.a, arg_1.a.a.b, abs(var_0.a.c), 2070u, var_2.e)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(arg_1.c, global3.c)) - vec3<f32>(-302f, var_0.a.b, var_0.a.b)), vec3<f32>(_wgslsmith_f_op_f32(-arg_1.c.x), _wgslsmith_f_op_f32(var_0.a.b - var_1), _wgslsmith_f_op_f32(var_0.a.b - var_0.a.b)), any(var_0.a.e)))), ~1u, _wgslsmith_f_op_f32(-global3.a.a.b), select(_wgslsmith_sub_vec2_u32(~_wgslsmith_add_vec2_u32(var_0.a.c.yz, arg_1.a.a.c.xx), ~_wgslsmith_mult_vec2_u32(vec2<u32>(1u, var_2.d), arg_0.yx)), ~var_2.c.yz, var_0.a.e));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec3<bool>(true, true, !(!(global3.a.a.c.x >= global3.a.a.c.x)));
    var var_1 = Struct_3(Struct_2(global3.a.a), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(691f, _wgslsmith_f_op_f32(f32(-1f) * -395f), _wgslsmith_f_op_f32(-global3.c.x)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.a.a.b, global3.a.a.b, 927f)) * _wgslsmith_f_op_vec3_f32(-global3.c))) - global3.c), _wgslsmith_mult_u32(~45651u, ~_wgslsmith_mult_u32(global3.b.x & 1u, ~7994u)), _wgslsmith_f_op_f32(-global3.c.x), vec2<u32>(~global3.b.x, 0u));
    global0 = array<Struct_4, 25>();
    let var_2 = func_4(~(~vec3<u32>(global3.a.a.d, 0u, global3.b.x)) >> (~vec3<u32>(global3.b.x, ~var_1.e.x, max(var_1.c, global3.b.x)) % vec3<u32>(32u)), Struct_4(func_1(~(~vec3<u32>(84501u, 4294967295u, 1u))), _wgslsmith_mod_vec4_u32(~global3.b, ~(~vec4<u32>(global3.b.x, var_1.a.a.c.x, 73903u, var_1.a.a.d))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(var_1.a.a.b)), _wgslsmith_div_f32(global3.a.a.b, global3.a.a.b), _wgslsmith_f_op_f32(global3.a.a.b * 908f)))), -max(u_input.a.x, u_input.a.x));
    global2 = array<Struct_2, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(var_2.a.a.d, 1u), ~vec3<i32>(u_input.a.x, _wgslsmith_sub_i32(firstTrailingBit(-46488i), u_input.a.x), _wgslsmith_div_i32(1i, u_input.a.x) & ~0i));
}

