struct Struct_1 {
    a: vec4<i32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: f32,
    c: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_4 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: i32,
    d: vec4<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 27> = array<Struct_4, 27>(Struct_4(vec2<f32>(755f, -1269f)), Struct_4(vec2<f32>(-1000f, -1619f)), Struct_4(vec2<f32>(-301f, -429f)), Struct_4(vec2<f32>(-374f, 1445f)), Struct_4(vec2<f32>(150f, 1359f)), Struct_4(vec2<f32>(-1331f, 1214f)), Struct_4(vec2<f32>(-1602f, -465f)), Struct_4(vec2<f32>(-1782f, -2461f)), Struct_4(vec2<f32>(2157f, -267f)), Struct_4(vec2<f32>(1017f, -2468f)), Struct_4(vec2<f32>(-202f, 205f)), Struct_4(vec2<f32>(-449f, -344f)), Struct_4(vec2<f32>(-1115f, -1232f)), Struct_4(vec2<f32>(-839f, -1272f)), Struct_4(vec2<f32>(857f, 260f)), Struct_4(vec2<f32>(-823f, -258f)), Struct_4(vec2<f32>(-121f, -1264f)), Struct_4(vec2<f32>(-737f, 445f)), Struct_4(vec2<f32>(1273f, -703f)), Struct_4(vec2<f32>(249f, 1076f)), Struct_4(vec2<f32>(-982f, 599f)), Struct_4(vec2<f32>(-359f, -132f)), Struct_4(vec2<f32>(1820f, -1231f)), Struct_4(vec2<f32>(510f, 728f)), Struct_4(vec2<f32>(-658f, -140f)), Struct_4(vec2<f32>(-804f, -471f)), Struct_4(vec2<f32>(756f, 1123f)));

var<private> global1: vec3<bool> = vec3<bool>(false, false, true);

var<private> global2: array<vec3<f32>, 27>;

var<private> global3: array<Struct_3, 28> = array<Struct_3, 28>(Struct_3(Struct_2(vec3<i32>(1i, 2147483647i, 27001i), -1204f, vec3<f32>(-907f, -1429f, -575f)), Struct_1(vec4<i32>(-1i, -37400i, 2147483647i, 0i), vec3<f32>(-1854f, 771f, 2395f))), Struct_3(Struct_2(vec3<i32>(-10482i, 0i, 0i), 345f, vec3<f32>(487f, -113f, -195f)), Struct_1(vec4<i32>(14817i, i32(-2147483648), i32(-2147483648), i32(-2147483648)), vec3<f32>(-260f, -1835f, 2182f))), Struct_3(Struct_2(vec3<i32>(-1i, 50701i, -5881i), -1083f, vec3<f32>(-1176f, -773f, -1518f)), Struct_1(vec4<i32>(-4807i, i32(-2147483648), 29675i, 21524i), vec3<f32>(235f, -386f, -1683f))), Struct_3(Struct_2(vec3<i32>(2147483647i, -1i, -6616i), 134f, vec3<f32>(-1195f, -1915f, -1000f)), Struct_1(vec4<i32>(-15722i, -62753i, -29226i, -1i), vec3<f32>(175f, -511f, 361f))), Struct_3(Struct_2(vec3<i32>(i32(-2147483648), 57040i, 1i), 627f, vec3<f32>(-775f, 402f, 1010f)), Struct_1(vec4<i32>(1i, -9331i, -26249i, i32(-2147483648)), vec3<f32>(-768f, 1410f, -292f))), Struct_3(Struct_2(vec3<i32>(-10472i, i32(-2147483648), 13344i), -2077f, vec3<f32>(640f, -327f, -1858f)), Struct_1(vec4<i32>(37218i, 46854i, i32(-2147483648), 16902i), vec3<f32>(-868f, -473f, 1412f))), Struct_3(Struct_2(vec3<i32>(1i, i32(-2147483648), 31446i), -1000f, vec3<f32>(-211f, 229f, 668f)), Struct_1(vec4<i32>(7796i, 0i, -1i, -4540i), vec3<f32>(252f, -352f, 1000f))), Struct_3(Struct_2(vec3<i32>(i32(-2147483648), i32(-2147483648), -1i), 1503f, vec3<f32>(686f, -704f, -565f)), Struct_1(vec4<i32>(i32(-2147483648), -1i, -1i, -1i), vec3<f32>(1021f, 1044f, -1000f))), Struct_3(Struct_2(vec3<i32>(-28i, 0i, 2147483647i), 255f, vec3<f32>(412f, -1150f, 618f)), Struct_1(vec4<i32>(-22262i, i32(-2147483648), 1i, 2147483647i), vec3<f32>(1062f, 1881f, 922f))), Struct_3(Struct_2(vec3<i32>(-84197i, 2147483647i, 1i), -1482f, vec3<f32>(1500f, 259f, -611f)), Struct_1(vec4<i32>(-47957i, 2147483647i, 0i, -416i), vec3<f32>(-276f, 1000f, 1426f))), Struct_3(Struct_2(vec3<i32>(-15500i, 0i, -35119i), 697f, vec3<f32>(887f, -227f, -822f)), Struct_1(vec4<i32>(0i, -1i, -2310i, -1i), vec3<f32>(-1299f, -321f, -1309f))), Struct_3(Struct_2(vec3<i32>(i32(-2147483648), 1i, i32(-2147483648)), -335f, vec3<f32>(-854f, -339f, 1409f)), Struct_1(vec4<i32>(-89748i, 0i, -11369i, -1i), vec3<f32>(127f, -736f, 1519f))), Struct_3(Struct_2(vec3<i32>(1i, 2147483647i, 36420i), 758f, vec3<f32>(639f, 339f, -244f)), Struct_1(vec4<i32>(36257i, 1i, -6368i, 1i), vec3<f32>(1053f, 986f, -1000f))), Struct_3(Struct_2(vec3<i32>(0i, 1i, -17135i), -252f, vec3<f32>(-897f, -533f, 1140f)), Struct_1(vec4<i32>(-51171i, 9627i, 1i, -1i), vec3<f32>(-1072f, -404f, -1687f))), Struct_3(Struct_2(vec3<i32>(0i, -6143i, -2121i), -1150f, vec3<f32>(-336f, 185f, 669f)), Struct_1(vec4<i32>(0i, 2147483647i, 1i, 0i), vec3<f32>(-1160f, -1207f, 663f))), Struct_3(Struct_2(vec3<i32>(i32(-2147483648), 0i, 2147483647i), 1623f, vec3<f32>(1619f, -2004f, 360f)), Struct_1(vec4<i32>(7170i, i32(-2147483648), 0i, -1i), vec3<f32>(-1000f, -1186f, 575f))), Struct_3(Struct_2(vec3<i32>(12523i, 2147483647i, 0i), 595f, vec3<f32>(2252f, -1874f, -202f)), Struct_1(vec4<i32>(30628i, 57441i, -13279i, 0i), vec3<f32>(-746f, 413f, -1293f))), Struct_3(Struct_2(vec3<i32>(-1i, 2861i, 25882i), -901f, vec3<f32>(112f, -305f, -903f)), Struct_1(vec4<i32>(16984i, 16706i, i32(-2147483648), i32(-2147483648)), vec3<f32>(661f, -312f, 1091f))), Struct_3(Struct_2(vec3<i32>(0i, -38074i, -15507i), -880f, vec3<f32>(490f, -1068f, -308f)), Struct_1(vec4<i32>(0i, -51981i, -1i, 2147483647i), vec3<f32>(-1951f, 202f, -555f))), Struct_3(Struct_2(vec3<i32>(24889i, 42078i, -1i), -987f, vec3<f32>(618f, 2284f, 154f)), Struct_1(vec4<i32>(-19413i, -3415i, i32(-2147483648), 2147483647i), vec3<f32>(-296f, -683f, -2006f))), Struct_3(Struct_2(vec3<i32>(-1776i, 49030i, 1i), -1000f, vec3<f32>(-1327f, -303f, 627f)), Struct_1(vec4<i32>(2147483647i, 0i, i32(-2147483648), 1i), vec3<f32>(-1000f, 824f, -554f))), Struct_3(Struct_2(vec3<i32>(86154i, -49431i, -1i), -1616f, vec3<f32>(1092f, -175f, 517f)), Struct_1(vec4<i32>(-54037i, -20621i, -5496i, 26781i), vec3<f32>(-2045f, -687f, 327f))), Struct_3(Struct_2(vec3<i32>(-57616i, -3398i, 1i), 1295f, vec3<f32>(102f, 1455f, -1648f)), Struct_1(vec4<i32>(-1i, 28966i, -29173i, -1i), vec3<f32>(1000f, -594f, 1039f))), Struct_3(Struct_2(vec3<i32>(-1i, -44486i, 6452i), -547f, vec3<f32>(-1712f, -216f, 1621f)), Struct_1(vec4<i32>(-12704i, 13963i, 7023i, 0i), vec3<f32>(367f, -378f, -1000f))), Struct_3(Struct_2(vec3<i32>(60681i, i32(-2147483648), -20228i), 1724f, vec3<f32>(-1000f, 1249f, -1474f)), Struct_1(vec4<i32>(-56199i, -51316i, 67264i, -16421i), vec3<f32>(-1789f, -621f, -799f))), Struct_3(Struct_2(vec3<i32>(1i, -5257i, -1372i), -1579f, vec3<f32>(-481f, 1000f, 768f)), Struct_1(vec4<i32>(-30149i, -27614i, -1i, i32(-2147483648)), vec3<f32>(-1000f, -155f, -761f))), Struct_3(Struct_2(vec3<i32>(735i, 8064i, 18420i), 2232f, vec3<f32>(822f, -1000f, -1642f)), Struct_1(vec4<i32>(0i, i32(-2147483648), -4917i, -51462i), vec3<f32>(-1354f, -741f, -1339f))), Struct_3(Struct_2(vec3<i32>(i32(-2147483648), 27574i, 16126i), 1720f, vec3<f32>(-839f, -1695f, -243f)), Struct_1(vec4<i32>(0i, 0i, -25582i, -42252i), vec3<f32>(557f, 527f, 917f))));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<u32>) -> Struct_1 {
    global0 = array<Struct_4, 27>();
    global0 = array<Struct_4, 27>();
    var var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b.x * arg_0.b.x)), -840f)))));
    let var_1 = vec2<i32>(arg_0.a.x, 17954i << (_wgslsmith_div_u32(countOneBits(0u) >> ((1u >> (arg_1.x % 32u)) % 32u), ~(u_input.b << (arg_1.x % 32u))) % 32u));
    return Struct_1(-arg_0.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.b) * vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-749f)), _wgslsmith_f_op_f32(arg_0.b.x + 778f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.x)), _wgslsmith_f_op_f32(arg_0.b.x + arg_0.b.x))));
}

fn func_3() -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(185f, 206f, 1616f, 130f))))))));
    let var_1 = ~(~firstLeadingBit(firstLeadingBit(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.c, 22053i), vec2<i32>(56030i, u_input.c)))));
    global3 = array<Struct_3, 28>();
    let var_2 = global0[_wgslsmith_index_u32(~(u_input.b | ~0u), 27u)];
    var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(var_2.a.x)), _wgslsmith_f_op_f32(-430f + _wgslsmith_f_op_f32(round(1482f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_0.x, 231f)), 937f), var_0.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(2244f, -797f, var_2.a.x, 122f))))))));
    return var_2.a.x;
}

fn func_1() -> Struct_2 {
    var var_0 = Struct_3(Struct_2(-(vec3<i32>(u_input.c, u_input.c, u_input.c) >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a.x, 0u, 1u), vec3<u32>(19092u, 56349u, u_input.b), vec3<u32>(u_input.b, u_input.a.x, u_input.a.x)) % vec3<u32>(32u))), -284f, _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(step(-435f, 406f)), -1000f, -171f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global2[_wgslsmith_index_u32(17037u, 27u)]))))), func_2(Struct_1(vec4<i32>(2147483647i, _wgslsmith_add_i32(19969i, -9031i), ~u_input.c, u_input.c), global2[_wgslsmith_index_u32(~u_input.a.x, 27u)]), u_input.a | vec2<u32>(firstTrailingBit(2112u), countOneBits(969u))));
    var var_1 = Struct_4(var_0.a.c.xx);
    let var_2 = Struct_2(var_0.a.a >> (~(vec3<u32>(u_input.b, 55651u, 0u) & _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, u_input.b, 24443u), vec3<u32>(84040u, u_input.a.x, u_input.b))) % vec3<u32>(32u)), var_0.a.c.x, _wgslsmith_f_op_vec3_f32(-global2[_wgslsmith_index_u32(~1u ^ u_input.b, 27u)]));
    let var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(687f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.a.c.x - -1322f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-1163f, 309f)), -602f, true)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-451f + var_0.a.c.x) + _wgslsmith_f_op_f32(func_3()))), _wgslsmith_f_op_f32(254f * -269f)));
    var_0 = global3[_wgslsmith_index_u32(12025u, 28u)];
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global1 = !select(!vec3<bool>(true && global1.x, !global1.x, any(global1.yx)), vec3<bool>(all(select(vec2<bool>(false, global1.x), global1.yy, vec2<bool>(true, true))), true, func_1().a.x > -18822i), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.c.x, -1000f)) < _wgslsmith_f_op_f32(-var_0.b));
    let var_1 = global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(firstLeadingBit(u_input.b), select(_wgslsmith_mult_u32(firstLeadingBit(34282u >> (1u % 32u)), _wgslsmith_add_u32(~u_input.a.x, abs(35718u))), ~30171u, global1.x)), 28u)];
    var var_2 = !select(vec3<bool>(global1.x, u_input.a.x > _wgslsmith_mod_u32(u_input.a.x, u_input.b), global1.x), vec3<bool>(all(global1.yx) | true, true, false), select(select(!vec3<bool>(false, false, global1.x), !vec3<bool>(global1.x, true, global1.x), global1.x), !vec3<bool>(false, true, global1.x), true));
    var_2 = !vec3<bool>(var_2.x, var_2.x, any(!vec4<bool>(global1.x, false, global1.x, false)));
    global3 = array<Struct_3, 28>();
    var var_3 = ~vec4<i32>(_wgslsmith_add_i32(u_input.c >> (_wgslsmith_sub_u32(u_input.a.x, 34982u) % 32u), countOneBits(abs(u_input.c))), min(_wgslsmith_add_i32(6945i, u_input.c), -var_0.a.x) >> (_wgslsmith_clamp_u32(u_input.b, 69151u, 4294967295u) % 32u), -2147483647i, _wgslsmith_add_i32(-2147483647i, func_2(func_2(Struct_1(var_1.b.a, vec3<f32>(var_1.a.b, var_1.a.c.x, var_1.a.c.x)), vec2<u32>(u_input.b, 43444u)), ~u_input.a).a.x));
    var_2 = !(!(!(!vec3<bool>(global1.x, var_2.x, true))));
    let var_4 = global3[_wgslsmith_index_u32(u_input.a.x, 28u)];
    let x = u_input.a;
    s_output = StorageBuffer((vec4<u32>(min(u_input.a.x, 1u), u_input.b >> (1u % 32u), _wgslsmith_sub_u32(0u, u_input.a.x), _wgslsmith_clamp_u32(u_input.b, 21132u, 4294967295u)) | ~(vec4<u32>(u_input.b, 4294967295u, 0u, u_input.b) & vec4<u32>(u_input.b, u_input.a.x, 51854u, u_input.a.x))) << ((firstLeadingBit(~vec4<u32>(u_input.b, 24420u, 0u, u_input.b)) >> ((abs(vec4<u32>(u_input.a.x, 13444u, 1u, 4294967295u)) | vec4<u32>(u_input.b, 27148u, 26513u, u_input.a.x)) % vec4<u32>(32u))) % vec4<u32>(32u)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(var_1.a.c.x))))), var_0.b)), -firstLeadingBit(_wgslsmith_dot_vec4_i32(var_1.b.a, vec4<i32>(-63488i, -1i, 1i, 0i)) ^ _wgslsmith_add_i32(var_4.a.a.x, -56164i)), vec4<i32>(var_3.x, -((i32(-1i) * -1i) | var_3.x), var_4.b.a.x, 0i), _wgslsmith_mult_u32(~_wgslsmith_sub_u32(max(2899u, 57936u), countOneBits(0u)), _wgslsmith_add_u32(38131u | u_input.b, 1u) >> (~abs(36516u) % 32u)));
}

