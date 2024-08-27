struct Struct_1 {
    a: vec2<i32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec2<bool>,
    d: vec3<bool>,
    e: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec4<bool>,
    d: i32,
    e: Struct_2,
}

struct Struct_4 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(vec2<i32>(-11419i, -1i), vec4<f32>(238f, -740f, 139f, 1910f)), Struct_1(vec2<i32>(-18080i, 0i), vec4<f32>(-1000f, -115f, -948f, -1000f)), Struct_1(vec2<i32>(i32(-2147483648), 43088i), vec4<f32>(1000f, -726f, 1000f, 852f)), Struct_1(vec2<i32>(-1i, 1i), vec4<f32>(1411f, 1438f, 385f, -1702f)), Struct_1(vec2<i32>(51461i, -3690i), vec4<f32>(646f, 454f, -1857f, 484f)), Struct_1(vec2<i32>(0i, 22470i), vec4<f32>(-1922f, -1486f, -1000f, -1560f)), Struct_1(vec2<i32>(36111i, -7913i), vec4<f32>(-1420f, -855f, -532f, -1431f)), Struct_1(vec2<i32>(-6296i, 17340i), vec4<f32>(-169f, -683f, -180f, 268f)), Struct_1(vec2<i32>(-1i, 1i), vec4<f32>(-140f, -1555f, 764f, -248f)), Struct_1(vec2<i32>(7044i, 0i), vec4<f32>(1134f, 706f, 830f, -431f)), Struct_1(vec2<i32>(-17191i, 19593i), vec4<f32>(-1286f, -1000f, 329f, -2233f)), Struct_1(vec2<i32>(0i, 19612i), vec4<f32>(1100f, 361f, 526f, 1271f)), Struct_1(vec2<i32>(37838i, -34716i), vec4<f32>(806f, -2034f, 732f, 1582f)), Struct_1(vec2<i32>(39711i, 23721i), vec4<f32>(-1160f, 1119f, -127f, 793f)), Struct_1(vec2<i32>(i32(-2147483648), -1i), vec4<f32>(-2257f, 1216f, -613f, 207f)), Struct_1(vec2<i32>(i32(-2147483648), -1i), vec4<f32>(656f, -858f, -1000f, 1664f)), Struct_1(vec2<i32>(-1i, -1i), vec4<f32>(122f, -439f, 1480f, -1937f)));

var<private> global1: array<vec4<u32>, 24> = array<vec4<u32>, 24>(vec4<u32>(1u, 38791u, 1u, 16081u), vec4<u32>(66650u, 4294967295u, 4294967295u, 4294967295u), vec4<u32>(38756u, 60441u, 36516u, 4294967295u), vec4<u32>(2244u, 33636u, 1u, 4294967295u), vec4<u32>(0u, 4294967295u, 42646u, 54306u), vec4<u32>(64779u, 13435u, 1u, 47400u), vec4<u32>(1u, 1u, 0u, 0u), vec4<u32>(7757u, 34682u, 85489u, 0u), vec4<u32>(53218u, 857u, 15257u, 58650u), vec4<u32>(57433u, 42337u, 44406u, 0u), vec4<u32>(15474u, 32895u, 4294967295u, 55308u), vec4<u32>(4294967295u, 37563u, 48201u, 2866u), vec4<u32>(1u, 0u, 12907u, 23460u), vec4<u32>(1u, 38758u, 0u, 87269u), vec4<u32>(8267u, 24891u, 32557u, 0u), vec4<u32>(4294967295u, 0u, 16137u, 4294967295u), vec4<u32>(1u, 1u, 4294967295u, 46492u), vec4<u32>(21377u, 0u, 4294967295u, 94205u), vec4<u32>(71228u, 4294967295u, 161849u, 4294967295u), vec4<u32>(4294967295u, 38817u, 4294967295u, 1u), vec4<u32>(45780u, 1u, 41556u, 2662u), vec4<u32>(58067u, 4294967295u, 0u, 0u), vec4<u32>(40327u, 41106u, 67696u, 1u), vec4<u32>(0u, 4294967295u, 4294967295u, 1u));

var<private> global2: array<Struct_2, 5> = array<Struct_2, 5>(Struct_2(Struct_1(vec2<i32>(13003i, -76528i), vec4<f32>(-236f, -395f, -1000f, -356f)), 61039u, vec2<bool>(true, false), vec3<bool>(true, false, true), false), Struct_2(Struct_1(vec2<i32>(1i, 18371i), vec4<f32>(359f, 1459f, 323f, 292f)), 15739u, vec2<bool>(true, true), vec3<bool>(false, false, false), true), Struct_2(Struct_1(vec2<i32>(12710i, 30084i), vec4<f32>(1000f, 248f, 1237f, 2781f)), 0u, vec2<bool>(false, false), vec3<bool>(true, true, false), false), Struct_2(Struct_1(vec2<i32>(-21722i, -44222i), vec4<f32>(178f, -747f, 344f, -200f)), 1u, vec2<bool>(false, true), vec3<bool>(true, false, true), true), Struct_2(Struct_1(vec2<i32>(-15513i, 2147483647i), vec4<f32>(385f, 145f, 687f, 524f)), 12633u, vec2<bool>(false, false), vec3<bool>(false, true, true), true));

var<private> global3: array<Struct_2, 25> = array<Struct_2, 25>(Struct_2(Struct_1(vec2<i32>(-22832i, 38211i), vec4<f32>(643f, -388f, 691f, 650f)), 23141u, vec2<bool>(false, true), vec3<bool>(true, false, true), false), Struct_2(Struct_1(vec2<i32>(-51223i, 0i), vec4<f32>(669f, -1534f, 1938f, 1000f)), 1u, vec2<bool>(false, true), vec3<bool>(false, true, false), false), Struct_2(Struct_1(vec2<i32>(-1i, 2147483647i), vec4<f32>(-151f, -1048f, 219f, 1929f)), 28677u, vec2<bool>(false, false), vec3<bool>(false, true, false), false), Struct_2(Struct_1(vec2<i32>(0i, 0i), vec4<f32>(-1031f, 180f, -668f, -558f)), 12364u, vec2<bool>(false, true), vec3<bool>(true, false, false), false), Struct_2(Struct_1(vec2<i32>(39947i, 0i), vec4<f32>(1209f, 933f, 931f, -363f)), 22457u, vec2<bool>(false, true), vec3<bool>(true, true, true), true), Struct_2(Struct_1(vec2<i32>(2147483647i, -18024i), vec4<f32>(-1043f, -1116f, 1000f, 279f)), 4294967295u, vec2<bool>(true, true), vec3<bool>(false, false, false), false), Struct_2(Struct_1(vec2<i32>(-1i, -5057i), vec4<f32>(1366f, 813f, 841f, 870f)), 61873u, vec2<bool>(true, true), vec3<bool>(false, true, false), true), Struct_2(Struct_1(vec2<i32>(-1i, 0i), vec4<f32>(-339f, -202f, -732f, -1002f)), 79153u, vec2<bool>(false, false), vec3<bool>(true, false, true), false), Struct_2(Struct_1(vec2<i32>(10189i, -28462i), vec4<f32>(-1282f, 2001f, 1000f, -951f)), 0u, vec2<bool>(true, true), vec3<bool>(false, false, false), true), Struct_2(Struct_1(vec2<i32>(1i, -59034i), vec4<f32>(327f, 627f, -1000f, -1000f)), 0u, vec2<bool>(true, false), vec3<bool>(false, true, true), true), Struct_2(Struct_1(vec2<i32>(1i, i32(-2147483648)), vec4<f32>(1333f, 704f, -159f, 390f)), 67790u, vec2<bool>(true, true), vec3<bool>(true, true, false), true), Struct_2(Struct_1(vec2<i32>(2147483647i, i32(-2147483648)), vec4<f32>(-667f, -453f, 255f, 2236f)), 4294967295u, vec2<bool>(true, false), vec3<bool>(true, false, true), false), Struct_2(Struct_1(vec2<i32>(0i, 0i), vec4<f32>(-469f, 1000f, -369f, 417f)), 27427u, vec2<bool>(false, true), vec3<bool>(false, true, false), false), Struct_2(Struct_1(vec2<i32>(-1i, 11889i), vec4<f32>(-173f, -983f, 1000f, 594f)), 17156u, vec2<bool>(true, false), vec3<bool>(false, false, true), true), Struct_2(Struct_1(vec2<i32>(i32(-2147483648), 2147483647i), vec4<f32>(1724f, -618f, 799f, 1108f)), 1u, vec2<bool>(true, true), vec3<bool>(true, true, true), false), Struct_2(Struct_1(vec2<i32>(5414i, 1i), vec4<f32>(-1300f, -575f, 891f, 655f)), 0u, vec2<bool>(false, false), vec3<bool>(false, false, false), false), Struct_2(Struct_1(vec2<i32>(2147483647i, -1i), vec4<f32>(-1113f, 1017f, -551f, 1000f)), 1u, vec2<bool>(false, true), vec3<bool>(false, false, true), true), Struct_2(Struct_1(vec2<i32>(0i, 27237i), vec4<f32>(-1107f, -3472f, -1879f, 1075f)), 20152u, vec2<bool>(false, false), vec3<bool>(false, false, false), true), Struct_2(Struct_1(vec2<i32>(51818i, -35097i), vec4<f32>(-736f, 803f, 1000f, 441f)), 0u, vec2<bool>(true, false), vec3<bool>(true, false, false), true), Struct_2(Struct_1(vec2<i32>(-40864i, -16218i), vec4<f32>(898f, -398f, -156f, 501f)), 1u, vec2<bool>(false, false), vec3<bool>(true, false, true), false), Struct_2(Struct_1(vec2<i32>(i32(-2147483648), 14581i), vec4<f32>(-392f, 185f, -865f, -1105f)), 70912u, vec2<bool>(false, false), vec3<bool>(true, true, true), true), Struct_2(Struct_1(vec2<i32>(31363i, -14563i), vec4<f32>(654f, 1319f, -1011f, -1002f)), 4294967295u, vec2<bool>(true, false), vec3<bool>(false, false, true), true), Struct_2(Struct_1(vec2<i32>(0i, i32(-2147483648)), vec4<f32>(-558f, 336f, -1184f, 299f)), 87760u, vec2<bool>(true, false), vec3<bool>(false, false, true), false), Struct_2(Struct_1(vec2<i32>(-12967i, -1256i), vec4<f32>(361f, 1000f, 608f, -388f)), 21113u, vec2<bool>(true, false), vec3<bool>(true, false, true), false), Struct_2(Struct_1(vec2<i32>(-2761i, 6450i), vec4<f32>(-1170f, 1438f, -2036f, 728f)), 1u, vec2<bool>(true, false), vec3<bool>(true, false, false), true));

var<private> global4: Struct_4 = Struct_4(vec3<i32>(-1i, 27258i, 1i));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: Struct_4) -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -223f);
    global2 = array<Struct_2, 5>();
    global0 = array<Struct_1, 17>();
    global2 = array<Struct_2, 5>();
    global1 = array<vec4<u32>, 24>();
    return _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, arg_0, arg_0, var_0)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1918f, -1871f, -2533f, var_0)))) + vec4<f32>(var_0, _wgslsmith_f_op_f32(arg_0 + var_0), _wgslsmith_f_op_f32(var_0 + 624f), _wgslsmith_f_op_f32(-arg_0))) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1000f, var_0, var_0, var_0), vec4<f32>(187f, arg_0, var_0, -297f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, var_0, 130f, var_0)))))), select(!(!select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false))), vec4<bool>(true, true, true, true), !vec4<bool>(true, true, select(true, true, true), true))));
}

fn func_2(arg_0: vec3<i32>, arg_1: bool) -> u32 {
    global4 = Struct_4(global4.a);
    let var_0 = -691f;
    global0 = array<Struct_1, 17>();
    let var_1 = Struct_2(Struct_1(~_wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(global4.a.xz, vec2<i32>(2147483647i, global4.a.x)), arg_0.zz, vec2<i32>(u_input.a, -15267i)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_f32(sign(var_0)), u_input.c, Struct_4(vec3<i32>(arg_0.x, 0i, u_input.a)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0, var_0, var_0, 819f), vec4<f32>(var_0, var_0, var_0, 635f), false))))))), ~u_input.c, vec2<bool>(arg_1, any(select(vec4<bool>(true, arg_1, false, arg_1), vec4<bool>(false, true, arg_1, true), vec4<bool>(false, arg_1, arg_1, arg_1)))), vec3<bool>(all(!(!vec2<bool>(arg_1, true))), ~_wgslsmith_mult_u32(0u, 8754u) > ~(~u_input.b.x), !arg_1), false);
    let var_2 = ~0u;
    return var_2;
}

fn func_1(arg_0: bool, arg_1: Struct_2) -> Struct_1 {
    global3 = array<Struct_2, 25>();
    let var_0 = Struct_2(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(func_2(global4.a & global4.a, arg_0), func_2(abs(global4.a), !arg_0)), 17u)], _wgslsmith_sub_u32(arg_1.b, ~u_input.b.x), vec2<bool>(all(select(arg_1.d.zz, arg_1.d.yz, !vec2<bool>(arg_0, arg_0))), arg_0), !arg_1.d, arg_0);
    var var_1 = var_0.a;
    var var_2 = _wgslsmith_mod_u32(var_0.b, ~_wgslsmith_mult_u32(arg_1.b, var_0.b));
    var var_3 = vec4<f32>(1071f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.b.x))), arg_1.a.b.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.b.x + var_0.a.b.x) * -348f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(1152f, -668f)), 1331f)), 327f)));
    return Struct_1(~(vec2<i32>(-1i) * -(var_0.a.a >> (vec2<u32>(24650u, arg_1.b) % vec2<u32>(32u)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(arg_1.a.b, arg_1.a.b))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -1000f;
    var var_1 = global0[_wgslsmith_index_u32(~u_input.b.x, 17u)];
    let var_2 = var_1.a.x;
    var var_3 = func_1(all(vec4<bool>(true, true, true, true)) & true, global2[_wgslsmith_index_u32(0u, 5u)]);
    var var_4 = any(select(vec4<bool>(any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), false)), var_3.b.x > 804f, all(vec4<bool>(true, true, true, true)), true), select(vec4<bool>(false, select(false, false, false), true, true), vec4<bool>(all(vec3<bool>(false, false, false)), true, 251f <= var_1.b.x, true), vec4<bool>(true, true, true, true)), (1f >= var_1.b.x) | true));
    let var_5 = 63871u;
    let var_6 = _wgslsmith_clamp_vec3_i32(vec3<i32>(min(max(~27859i, -global4.a.x), 2147483647i), var_1.a.x ^ ~(~11040i), _wgslsmith_mult_i32(~global4.a.x, _wgslsmith_mod_i32(-1i, -1i)) >> (2576u % 32u)), vec3<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(global4.a.x, 1i, global4.a.x, var_3.a.x), vec4<i32>(7569i, var_3.a.x, var_1.a.x, global4.a.x)), select(vec4<i32>(1814i, var_1.a.x, -1i, -1i), vec4<i32>(var_1.a.x, 26378i, 0i, -2147483647i), false)), select(_wgslsmith_div_i32(2147483647i, u_input.a), ~var_3.a.x, true)), var_1.a.x, ~(13473i ^ -var_3.a.x)), -_wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(~vec3<i32>(var_1.a.x, var_3.a.x, global4.a.x), ~global4.a), global4.a, vec3<i32>(global4.a.x & var_3.a.x, global4.a.x >> (0u % 32u), _wgslsmith_clamp_i32(-17365i, 36309i, var_3.a.x))));
    var var_7 = global3[_wgslsmith_index_u32(u_input.b.x, 25u)];
    global0 = array<Struct_1, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b.yyx, ~vec4<u32>(firstLeadingBit(var_5), 1u, _wgslsmith_mult_u32(53355u, var_5), ~1u) ^ ~vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.b.xy, u_input.b.zx), 9509u, ~var_7.b, ~u_input.b.x), -2147483647i);
}

