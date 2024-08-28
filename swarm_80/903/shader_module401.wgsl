struct Struct_1 {
    a: u32,
    b: u32,
    c: i32,
    d: vec2<f32>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
    d: f32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 20>;

var<private> global1: Struct_1 = Struct_1(0u, 36061u, 1i, vec2<f32>(201f, -1314f), vec2<u32>(49852u, 28275u));

var<private> global2: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(15015u, 5331u, 17045i, vec2<f32>(1411f, -223f), vec2<u32>(21467u, 4294967295u)), Struct_1(51257u, 0u, 0i, vec2<f32>(-2386f, -1615f), vec2<u32>(0u, 2573u)), Struct_1(42844u, 0u, i32(-2147483648), vec2<f32>(1255f, 1083f), vec2<u32>(2922u, 30421u)), Struct_1(11055u, 88151u, -3837i, vec2<f32>(251f, 870f), vec2<u32>(1u, 10299u)), Struct_1(1u, 0u, -11552i, vec2<f32>(813f, 617f), vec2<u32>(4294967295u, 1u)), Struct_1(4294967295u, 1u, -72060i, vec2<f32>(-112f, -1917f), vec2<u32>(718u, 1u)), Struct_1(71754u, 4294967295u, 1i, vec2<f32>(327f, 868f), vec2<u32>(43157u, 13534u)), Struct_1(20444u, 4294967295u, 10231i, vec2<f32>(-1663f, 1392f), vec2<u32>(1u, 17937u)), Struct_1(6311u, 54503u, -41689i, vec2<f32>(476f, 930f), vec2<u32>(87034u, 1u)), Struct_1(0u, 0u, 44753i, vec2<f32>(-582f, 931f), vec2<u32>(34191u, 1833u)), Struct_1(17633u, 4294967295u, i32(-2147483648), vec2<f32>(-156f, -1000f), vec2<u32>(22925u, 0u)), Struct_1(0u, 0u, -27883i, vec2<f32>(1000f, -191f), vec2<u32>(0u, 4294967295u)), Struct_1(4294967295u, 1u, 1i, vec2<f32>(-1639f, 402f), vec2<u32>(10511u, 1u)), Struct_1(1u, 4294967295u, -1i, vec2<f32>(-491f, 845f), vec2<u32>(4294967295u, 10791u)), Struct_1(7409u, 46102u, i32(-2147483648), vec2<f32>(413f, 788f), vec2<u32>(4294967295u, 49837u)), Struct_1(41150u, 3975u, 28336i, vec2<f32>(471f, -748f), vec2<u32>(38461u, 1694u)), Struct_1(30399u, 1u, i32(-2147483648), vec2<f32>(-1543f, -1362f), vec2<u32>(32215u, 30328u)), Struct_1(50481u, 43047u, -1i, vec2<f32>(1178f, 969f), vec2<u32>(124599u, 62841u)), Struct_1(33431u, 1u, 27261i, vec2<f32>(-1000f, -240f), vec2<u32>(47408u, 38994u)), Struct_1(33327u, 21490u, -1i, vec2<f32>(-1921f, 842f), vec2<u32>(3359u, 0u)), Struct_1(2528u, 12457u, 24196i, vec2<f32>(1294f, -693f), vec2<u32>(44235u, 67823u)), Struct_1(0u, 25412u, -23415i, vec2<f32>(-328f, -3630f), vec2<u32>(1u, 73034u)), Struct_1(0u, 73940u, 22594i, vec2<f32>(242f, 916f), vec2<u32>(41943u, 23642u)), Struct_1(4411u, 4294967295u, 2147483647i, vec2<f32>(-435f, -1468f), vec2<u32>(4294967295u, 23818u)), Struct_1(0u, 0u, 56187i, vec2<f32>(-1595f, 1898f), vec2<u32>(0u, 26544u)), Struct_1(105879u, 0u, -1i, vec2<f32>(1000f, -719f), vec2<u32>(0u, 4294967295u)), Struct_1(0u, 4294967295u, i32(-2147483648), vec2<f32>(739f, -781f), vec2<u32>(4675u, 45691u)), Struct_1(4294967295u, 48702u, -42262i, vec2<f32>(418f, 753f), vec2<u32>(63053u, 28143u)), Struct_1(35173u, 0u, 2147483647i, vec2<f32>(521f, 194f), vec2<u32>(4294967295u, 4294967295u)), Struct_1(1u, 4294967295u, -26008i, vec2<f32>(-681f, -584f), vec2<u32>(0u, 4294967295u)), Struct_1(2769u, 1u, 0i, vec2<f32>(-294f, -322f), vec2<u32>(0u, 0u)));

var<private> global3: array<vec2<f32>, 21>;

var<private> global4: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(115498u, 5590u, 1i, vec2<f32>(-1392f, -1748f), vec2<u32>(0u, 24070u)), Struct_1(0u, 30649u, 5752i, vec2<f32>(1717f, -437f), vec2<u32>(32564u, 1u)), Struct_1(1u, 31101u, 0i, vec2<f32>(390f, 1000f), vec2<u32>(7422u, 25646u)), Struct_1(1u, 0u, 14415i, vec2<f32>(-1369f, 1000f), vec2<u32>(4294967295u, 8179u)), Struct_1(34629u, 26906u, 25868i, vec2<f32>(515f, -738f), vec2<u32>(36798u, 4294967295u)), Struct_1(13288u, 4294967295u, 15814i, vec2<f32>(-678f, -1838f), vec2<u32>(0u, 39856u)), Struct_1(7268u, 0u, 2147483647i, vec2<f32>(1286f, -182f), vec2<u32>(1u, 61698u)), Struct_1(4294967295u, 4035u, i32(-2147483648), vec2<f32>(-112f, -2200f), vec2<u32>(4294967295u, 8246u)), Struct_1(13324u, 70852u, 20637i, vec2<f32>(-2428f, -134f), vec2<u32>(73738u, 59848u)), Struct_1(0u, 0u, 0i, vec2<f32>(-1096f, -332f), vec2<u32>(0u, 0u)), Struct_1(58200u, 0u, 2147483647i, vec2<f32>(1000f, -412f), vec2<u32>(4294967295u, 4688u)), Struct_1(4294967295u, 4294967295u, 42906i, vec2<f32>(-102f, -770f), vec2<u32>(105795u, 53856u)), Struct_1(4294967295u, 13682u, 0i, vec2<f32>(-726f, -257f), vec2<u32>(1u, 0u)), Struct_1(18854u, 4294967295u, -26951i, vec2<f32>(1098f, 1086f), vec2<u32>(27206u, 92919u)), Struct_1(150895u, 35902u, -815i, vec2<f32>(240f, -252f), vec2<u32>(90432u, 15259u)), Struct_1(49447u, 0u, 531i, vec2<f32>(-599f, 1240f), vec2<u32>(1u, 4294967295u)), Struct_1(4294967295u, 1u, 17128i, vec2<f32>(-219f, -1235f), vec2<u32>(45848u, 4294967295u)), Struct_1(55409u, 53045u, 27507i, vec2<f32>(983f, -1849f), vec2<u32>(32039u, 4294967295u)), Struct_1(0u, 0u, -43746i, vec2<f32>(-1102f, -2181f), vec2<u32>(14741u, 110836u)), Struct_1(55859u, 46913u, 42221i, vec2<f32>(-1239f, -1000f), vec2<u32>(65821u, 1u)), Struct_1(17515u, 8234u, 2147483647i, vec2<f32>(-187f, 1000f), vec2<u32>(42331u, 4294967295u)), Struct_1(0u, 1u, 27439i, vec2<f32>(-560f, 297f), vec2<u32>(109761u, 1u)), Struct_1(17555u, 49451u, -44604i, vec2<f32>(-897f, -471f), vec2<u32>(5247u, 40022u)), Struct_1(111408u, 1u, 1i, vec2<f32>(891f, -599f), vec2<u32>(15921u, 27866u)), Struct_1(1u, 1u, 2147483647i, vec2<f32>(-759f, 1000f), vec2<u32>(10980u, 0u)), Struct_1(1147u, 4294967295u, 1i, vec2<f32>(842f, -1532f), vec2<u32>(1u, 102540u)), Struct_1(1u, 11609u, 57036i, vec2<f32>(393f, 414f), vec2<u32>(1u, 0u)), Struct_1(53230u, 1u, i32(-2147483648), vec2<f32>(-442f, 310f), vec2<u32>(1u, 0u)), Struct_1(4294967295u, 25659u, 27304i, vec2<f32>(-1629f, -579f), vec2<u32>(1u, 1u)), Struct_1(1u, 36605u, -30192i, vec2<f32>(-159f, -186f), vec2<u32>(0u, 11791u)), Struct_1(1u, 1u, 68404i, vec2<f32>(917f, 177f), vec2<u32>(4294967295u, 0u)), Struct_1(1u, 0u, 16744i, vec2<f32>(2227f, 706f), vec2<u32>(4294967295u, 12078u)));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: u32) -> Struct_1 {
    global2 = array<Struct_1, 31>();
    global1 = Struct_1(~global1.e.x, min(abs(_wgslsmith_add_u32(global1.b, global1.b)), 1u) << (0u % 32u), -3787i, _wgslsmith_f_op_vec2_f32(-global3[_wgslsmith_index_u32(reverseBits(4294967295u), 21u)]), ~(~(firstLeadingBit(vec2<u32>(arg_0, 32637u)) | global1.e)));
    let var_0 = vec2<bool>(false, true);
    let var_1 = global1.c;
    var var_2 = ~abs(u_input.d);
    return global2[_wgslsmith_index_u32(~(countOneBits(~1u) | _wgslsmith_div_u32(_wgslsmith_add_u32(_wgslsmith_add_u32(1u, 1u), ~arg_0), max(49021u, ~27352u))), 31u)];
}

fn func_3(arg_0: bool) -> bool {
    global1 = global4[_wgslsmith_index_u32(0u, 32u)];
    global0 = array<i32, 20>();
    global4 = array<Struct_1, 32>();
    global2 = array<Struct_1, 31>();
    global1 = global2[_wgslsmith_index_u32(global1.e.x << (62836u % 32u), 31u)];
    return false;
}

fn func_4(arg_0: vec4<bool>, arg_1: vec3<bool>, arg_2: u32, arg_3: vec3<u32>) -> u32 {
    let var_0 = global0[_wgslsmith_index_u32(max(1u, (firstTrailingBit(global1.b) >> (35906u % 32u)) ^ 1u), 20u)];
    var var_1 = func_1(0u);
    let var_2 = 4294967295u;
    let var_3 = _wgslsmith_f_op_f32(floor(func_1(1u).d.x));
    let var_4 = _wgslsmith_sub_i32(1i, func_1(select(22243u, var_1.b, false) << (~52050u % 32u)).c) ^ _wgslsmith_mod_i32(global0[_wgslsmith_index_u32(4294967295u ^ firstTrailingBit(_wgslsmith_mult_u32(var_1.a, 41434u)), 20u)], global1.c);
    return var_2;
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    global2 = array<Struct_1, 31>();
    let var_0 = Struct_1(global1.e.x, func_4(!vec4<bool>(all(vec3<bool>(true, false, false)), func_3(true), true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true), true), 27949u >> (_wgslsmith_div_u32(~1u, arg_3.e.x) % 32u), ~countOneBits(vec3<u32>(global1.e.x, arg_3.a, u_input.a.x))), _wgslsmith_mod_i32(-7474i, _wgslsmith_mod_i32(global1.c, -(arg_3.c ^ global0[_wgslsmith_index_u32(arg_3.e.x, 20u)]))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1354f, -208f)), min(~vec2<u32>(156169u, abs(arg_2.a)), _wgslsmith_mult_vec2_u32(arg_0, _wgslsmith_div_vec2_u32(global1.e, global1.e)) | _wgslsmith_div_vec2_u32(vec2<u32>(0u, u_input.a.x) >> (arg_1.e % vec2<u32>(32u)), u_input.a.yz)));
    global2 = array<Struct_1, 31>();
    global3 = array<vec2<f32>, 21>();
    global3 = array<vec2<f32>, 21>();
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 31>();
    global1 = func_1(~1u);
    let var_0 = vec2<bool>(true, !(!func_2(u_input.a.yy, Struct_1(global1.e.x, 4294967295u, -47868i, vec2<f32>(-1671f, global1.d.x), vec2<u32>(1u, global1.e.x)), global2[_wgslsmith_index_u32(20015u, 31u)], Struct_1(global1.b, u_input.a.x, 1i, vec2<f32>(global1.d.x, -320f), vec2<u32>(79070u, global1.b)))) | false);
    var var_1 = func_1(global1.a);
    var var_2 = !(global0[_wgslsmith_index_u32(0u, 20u)] > func_1(~var_1.a).c);
    global1 = func_1(~firstTrailingBit(~var_1.b));
    var var_3 = u_input.a;
    global1 = Struct_1(~(~u_input.a.x), 24943u, 0i, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.d.x - 1000f), var_1.d.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1.d.x, global1.d.x, var_0.x)))), _wgslsmith_f_op_f32(f32(-1f) * -1535f)), ~(~_wgslsmith_div_vec2_u32(vec2<u32>(32634u, var_3.x) ^ var_1.e, var_3.zx)));
    var var_4 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-func_1(var_3.x >> (var_1.b % 32u)).d.x), -889f));
    let x = u_input.a;
    s_output = StorageBuffer(~var_1.c, _wgslsmith_clamp_i32(42422i, -countOneBits(-1704i), min(u_input.c, 1i)), var_4.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(2248f - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(var_4.x, 129f))))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(3095f)), _wgslsmith_f_op_f32(f32(-1f) * -1286f), _wgslsmith_f_op_f32(global1.d.x - 821f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_4.x, var_1.d.x, global1.d.x), vec3<f32>(var_1.d.x, var_1.d.x, 124f))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * var_1.d.x)), _wgslsmith_f_op_f32(max(-1000f, global1.d.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-816f)), global1.d.x)))));
}

