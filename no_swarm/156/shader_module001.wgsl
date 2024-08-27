struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: u32,
    c: vec2<u32>,
    d: vec4<f32>,
    e: i32,
}

struct Struct_3 {
    a: u32,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 28> = array<Struct_2, 28>(Struct_2(vec4<u32>(65735u, 51437u, 0u, 4294967295u), 14679u, vec2<u32>(1u, 62333u), vec4<f32>(-862f, -1234f, 168f, 828f), i32(-2147483648)), Struct_2(vec4<u32>(55396u, 50106u, 14022u, 121952u), 52899u, vec2<u32>(23273u, 0u), vec4<f32>(1779f, -1043f, -1000f, -1000f), -1i), Struct_2(vec4<u32>(10284u, 17284u, 15199u, 4127u), 30522u, vec2<u32>(29603u, 1u), vec4<f32>(-1000f, 505f, 831f, 1430f), -10485i), Struct_2(vec4<u32>(55502u, 4294967295u, 1u, 11701u), 8069u, vec2<u32>(4294967295u, 69197u), vec4<f32>(-1547f, 298f, 768f, 1229f), -4525i), Struct_2(vec4<u32>(25835u, 1u, 52000u, 0u), 1u, vec2<u32>(121938u, 0u), vec4<f32>(-547f, -171f, -878f, -386f), -1i), Struct_2(vec4<u32>(4294967295u, 50911u, 1u, 57621u), 0u, vec2<u32>(1u, 46174u), vec4<f32>(1521f, 467f, -174f, 251f), -1i), Struct_2(vec4<u32>(11066u, 15391u, 83167u, 0u), 1u, vec2<u32>(4294967295u, 57354u), vec4<f32>(159f, 1288f, -352f, -969f), 1i), Struct_2(vec4<u32>(1199u, 127928u, 30351u, 101404u), 26307u, vec2<u32>(4294967295u, 1781u), vec4<f32>(928f, 1626f, -370f, 597f), -1i), Struct_2(vec4<u32>(4294967295u, 99501u, 62336u, 1u), 11032u, vec2<u32>(4294967295u, 47136u), vec4<f32>(1813f, -1091f, -1169f, 1033f), i32(-2147483648)), Struct_2(vec4<u32>(42973u, 4294967295u, 22526u, 1u), 105526u, vec2<u32>(0u, 38640u), vec4<f32>(1658f, -1426f, 475f, -446f), -44687i), Struct_2(vec4<u32>(0u, 47317u, 28804u, 64211u), 4294967295u, vec2<u32>(7225u, 1u), vec4<f32>(1031f, -692f, -845f, -237f), 10417i), Struct_2(vec4<u32>(6582u, 4294967295u, 28921u, 0u), 0u, vec2<u32>(54841u, 4294967295u), vec4<f32>(626f, -1153f, 1274f, -1082f), 19255i), Struct_2(vec4<u32>(0u, 4294967295u, 51454u, 0u), 55503u, vec2<u32>(0u, 0u), vec4<f32>(-780f, -1998f, -551f, -1499f), -1i), Struct_2(vec4<u32>(80645u, 22110u, 16528u, 62181u), 4294967295u, vec2<u32>(23472u, 1u), vec4<f32>(-1657f, 861f, 148f, -1285f), -41834i), Struct_2(vec4<u32>(0u, 18070u, 21807u, 56409u), 71791u, vec2<u32>(0u, 4294967295u), vec4<f32>(252f, 236f, -1030f, 497f), -25929i), Struct_2(vec4<u32>(4294967295u, 44517u, 9949u, 43376u), 41769u, vec2<u32>(0u, 7947u), vec4<f32>(1713f, -916f, -931f, -204f), 1i), Struct_2(vec4<u32>(4294967295u, 0u, 776u, 4294967295u), 10328u, vec2<u32>(17813u, 13443u), vec4<f32>(-1440f, 1000f, 329f, 1000f), i32(-2147483648)), Struct_2(vec4<u32>(48815u, 4294967295u, 4294967295u, 47554u), 4294967295u, vec2<u32>(42250u, 4294967295u), vec4<f32>(570f, 1694f, -210f, -1905f), -10138i), Struct_2(vec4<u32>(7857u, 19472u, 43085u, 15974u), 0u, vec2<u32>(1u, 54598u), vec4<f32>(478f, 240f, 148f, 2058f), 4450i), Struct_2(vec4<u32>(19425u, 0u, 4294967295u, 33459u), 16286u, vec2<u32>(49256u, 1u), vec4<f32>(803f, -512f, 1445f, -387f), 8547i), Struct_2(vec4<u32>(78584u, 4294967295u, 53789u, 1u), 4294967295u, vec2<u32>(4294967295u, 4294967295u), vec4<f32>(197f, 733f, 771f, 2660f), -5549i), Struct_2(vec4<u32>(0u, 44643u, 6347u, 4294967295u), 1u, vec2<u32>(8271u, 1u), vec4<f32>(1609f, 462f, 1000f, 1000f), 1i), Struct_2(vec4<u32>(56262u, 0u, 1u, 53560u), 21048u, vec2<u32>(1u, 4294967295u), vec4<f32>(-463f, 971f, 563f, -150f), -1i), Struct_2(vec4<u32>(11146u, 0u, 60038u, 0u), 5118u, vec2<u32>(4294967295u, 5413u), vec4<f32>(-1000f, 827f, -319f, -421f), 1i), Struct_2(vec4<u32>(1u, 64835u, 68271u, 0u), 1u, vec2<u32>(4294967295u, 8619u), vec4<f32>(-1937f, -115f, 242f, 915f), 58156i), Struct_2(vec4<u32>(33900u, 69710u, 1u, 7288u), 5587u, vec2<u32>(0u, 16535u), vec4<f32>(758f, 145f, -2846f, -2106f), -1i), Struct_2(vec4<u32>(9329u, 139532u, 36496u, 0u), 12078u, vec2<u32>(1u, 89138u), vec4<f32>(257f, -665f, -316f, 711f), 15252i), Struct_2(vec4<u32>(22210u, 0u, 13612u, 1014u), 26566u, vec2<u32>(8381u, 6680u), vec4<f32>(221f, -697f, 369f, 287f), i32(-2147483648)));

var<private> global1: vec3<u32> = vec3<u32>(41906u, 19920u, 26531u);

var<private> global2: array<Struct_1, 1>;

var<private> global3: vec2<i32>;

var<private> global4: array<vec2<f32>, 23>;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> vec3<i32> {
    var var_0 = vec2<i32>(-1i) * -firstLeadingBit(_wgslsmith_div_vec2_i32(-vec2<i32>(-14493i, -2147483647i), min(vec2<i32>(global3.x, global3.x), vec2<i32>(global3.x, 2147483647i))));
    global2 = array<Struct_1, 1>();
    var var_1 = u_input.d;
    let var_2 = Struct_3(1u, select(select(vec3<bool>(true, true, false), !select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true)), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), any(vec4<bool>(true, true, true, true))), select(select(vec3<bool>(true, false, false), select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), false), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), true)));
    global2 = array<Struct_1, 1>();
    return _wgslsmith_sub_vec3_i32(vec3<i32>(var_0.x, -u_input.e, -2147483647i), select(-select(_wgslsmith_clamp_vec3_i32(vec3<i32>(global3.x, -2147483647i, u_input.e), vec3<i32>(u_input.e, 1i, u_input.e), vec3<i32>(-1i, global3.x, 15597i)), vec3<i32>(71604i, u_input.e, global3.x), select(var_2.b.x, var_2.b.x, var_2.b.x)), vec3<i32>(_wgslsmith_div_i32(~var_0.x, var_0.x ^ u_input.e), -(~global3.x), u_input.a), vec3<bool>(false, true & (var_2.a <= 4294967295u), true)));
}

fn func_2(arg_0: vec3<bool>) -> i32 {
    var var_0 = -(~vec3<i32>(0i << (1u % 32u), ~global3.x, -(~u_input.a)));
    global0 = array<Struct_2, 28>();
    global1 = u_input.d.yyx;
    let var_1 = global2[_wgslsmith_index_u32(global1.x, 1u)];
    var var_2 = _wgslsmith_dot_vec3_i32(-firstTrailingBit(abs(vec3<i32>(global3.x, var_0.x, 5356i))), select(func_3(), vec3<i32>(1i, -19866i & global3.x, 0i), arg_0.x)) != -2147483647i;
    return 0i;
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(-select(vec4<i32>(-2147483647i, 20874i, global3.x, global3.x), vec4<i32>(u_input.e, global3.x, 1i, global3.x), vec4<bool>(true, true, false, true)), vec4<i32>(func_2(vec3<bool>(true, true, false)), 1i, u_input.a, 28528i)), select(-(vec4<i32>(-72678i, global3.x, u_input.e, u_input.a) >> (u_input.d % vec4<u32>(32u))), _wgslsmith_sub_vec4_i32(vec4<i32>(1i, u_input.e, global3.x, u_input.e) ^ vec4<i32>(-26582i, global3.x, global3.x, u_input.e), max(vec4<i32>(u_input.a, global3.x, global3.x, -82850i), vec4<i32>(global3.x, 2147483647i, 717i, 1i))), false)));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(1265f - _wgslsmith_f_op_f32(1232f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-556f, -1823f)) - _wgslsmith_f_op_f32(abs(-847f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-2639f)) + -1004f)), 1040f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(-222f, 846f, false | select(true, true, false))), -680f)), 495f);
    var var_2 = Struct_1(~(u_input.e & u_input.a) & -27573i);
    let var_3 = countOneBits(reverseBits(_wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(global1.x, u_input.d.x) & u_input.c.xw, ~vec2<u32>(51595u, 38931u)), u_input.c.wy, u_input.d.zx)));
    var var_4 = Struct_3(firstLeadingBit(97669u) | var_3.x, vec3<bool>(true, true, true));
    return global2[_wgslsmith_index_u32(~(~(~_wgslsmith_div_u32(global1.x, abs(u_input.c.x)))), 1u)];
}

fn func_4(arg_0: Struct_1) -> u32 {
    global0 = array<Struct_2, 28>();
    let var_0 = select(global1.x, firstTrailingBit(abs(89157u)), true);
    var var_1 = _wgslsmith_dot_vec2_u32(vec2<u32>(global1.x, min(~global1.x | 3923u, u_input.b)), vec2<u32>(0u, 1u));
    var var_2 = u_input.c;
    var var_3 = true;
    return 33278u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -(~_wgslsmith_add_vec4_i32(vec4<i32>(global3.x, 0i, -1i, -2147483647i) >> (~u_input.c % vec4<u32>(32u)), vec4<i32>(69366i, u_input.e, 49359i, 23229i) ^ (vec4<i32>(global3.x, 1i, 31321i, 7400i) | vec4<i32>(global3.x, global3.x, global3.x, -5731i))));
    global1 = ~u_input.c.zwz;
    global1 = vec3<u32>(~(~func_4(func_1())), _wgslsmith_mod_u32(2847u, u_input.b | ~38495u), _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(~select(u_input.c.yz, u_input.c.xw, vec2<bool>(false, true)), vec2<u32>(1u, global1.x)), u_input.b));
    let var_1 = _wgslsmith_f_op_vec2_f32(-global4[_wgslsmith_index_u32((~_wgslsmith_clamp_u32(32226u, u_input.c.x, 4294967295u) & global1.x) | ~(~4294967295u), 23u)]);
    let var_2 = !(!select(vec2<bool>(true, true), !select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true)), select(vec2<bool>(false, true), vec2<bool>(true, true), true)));
    global1 = firstTrailingBit(select(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(u_input.b, 0u)), ~330u, max(u_input.b, 4294967295u)), ~vec3<u32>(5254u, u_input.c.x, 4294967295u), true) ^ abs(~reverseBits(vec3<u32>(u_input.b, u_input.c.x, u_input.d.x))));
    var var_3 = !var_2.x;
    var_3 = var_2.x | all(var_2);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.xzx);
}

