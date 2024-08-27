struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: f32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<bool>,
    c: u32,
    d: vec4<bool>,
    e: Struct_1,
}

struct Struct_5 {
    a: Struct_3,
    b: vec2<i32>,
    c: Struct_4,
    d: Struct_3,
    e: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-1581f, -347f, -196f);

var<private> global1: f32;

var<private> global2: f32 = -862f;

var<private> global3: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(11674u, vec4<f32>(-396f, 717f, -1357f, -298f), -527f, vec2<f32>(969f, 269f)), Struct_1(14486u, vec4<f32>(1266f, -191f, 1851f, -1000f), 410f, vec2<f32>(1485f, -520f)), Struct_1(0u, vec4<f32>(-622f, -1088f, 338f, 858f), 174f, vec2<f32>(-1000f, 486f)), Struct_1(12884u, vec4<f32>(-155f, -1150f, -493f, 660f), -1890f, vec2<f32>(338f, 1165f)), Struct_1(1u, vec4<f32>(-849f, -2241f, 1714f, -318f), -275f, vec2<f32>(747f, -410f)), Struct_1(1u, vec4<f32>(-258f, 2295f, 1000f, -2007f), -783f, vec2<f32>(732f, 1506f)), Struct_1(37518u, vec4<f32>(-254f, -1000f, -954f, 2265f), 663f, vec2<f32>(361f, -1253f)), Struct_1(0u, vec4<f32>(-223f, -223f, 712f, 1975f), 595f, vec2<f32>(467f, -458f)), Struct_1(4294967295u, vec4<f32>(137f, 545f, -1535f, 579f), -134f, vec2<f32>(912f, -245f)), Struct_1(0u, vec4<f32>(850f, -2970f, -1552f, 1302f), -1268f, vec2<f32>(1000f, -279f)), Struct_1(46160u, vec4<f32>(-418f, -320f, -554f, 832f), -1000f, vec2<f32>(1188f, 1399f)), Struct_1(4294967295u, vec4<f32>(-1751f, -1259f, 2939f, 660f), 1046f, vec2<f32>(-1471f, 815f)), Struct_1(3788u, vec4<f32>(-230f, -1034f, -2103f, 478f), 985f, vec2<f32>(1361f, -299f)), Struct_1(29264u, vec4<f32>(-546f, 789f, 1816f, 127f), -628f, vec2<f32>(-1000f, 1128f)), Struct_1(33858u, vec4<f32>(-778f, 830f, -428f, -152f), -1392f, vec2<f32>(-797f, -545f)), Struct_1(52546u, vec4<f32>(693f, -105f, 1358f, -238f), 1995f, vec2<f32>(395f, 725f)), Struct_1(24516u, vec4<f32>(989f, -1161f, 717f, 1036f), 1865f, vec2<f32>(-114f, -746f)), Struct_1(15378u, vec4<f32>(-140f, 917f, -445f, 299f), 748f, vec2<f32>(260f, -1048f)), Struct_1(107173u, vec4<f32>(-728f, 426f, 1772f, 555f), -209f, vec2<f32>(1000f, 1755f)), Struct_1(1u, vec4<f32>(214f, 711f, 1945f, 198f), -1480f, vec2<f32>(-1084f, -1000f)), Struct_1(1u, vec4<f32>(-350f, -1000f, 484f, 1000f), 647f, vec2<f32>(1039f, 1562f)), Struct_1(0u, vec4<f32>(-839f, -365f, 641f, -1036f), 320f, vec2<f32>(1076f, 1142f)), Struct_1(4294967295u, vec4<f32>(-107f, 110f, 685f, 811f), 1000f, vec2<f32>(902f, -508f)), Struct_1(1u, vec4<f32>(-550f, -928f, -1768f, 1000f), -835f, vec2<f32>(3280f, -970f)), Struct_1(1u, vec4<f32>(-515f, -1673f, -809f, -312f), -517f, vec2<f32>(248f, 1090f)), Struct_1(84002u, vec4<f32>(-1056f, 1106f, -935f, -1000f), -1175f, vec2<f32>(340f, -568f)), Struct_1(37163u, vec4<f32>(1359f, -1668f, -943f, -569f), 602f, vec2<f32>(-1215f, 449f)), Struct_1(0u, vec4<f32>(617f, 290f, -852f, -430f), 530f, vec2<f32>(2203f, -516f)), Struct_1(4294967295u, vec4<f32>(-139f, -1302f, 1734f, -2281f), -817f, vec2<f32>(1000f, 379f)));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> vec4<i32> {
    var var_0 = global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(~abs(_wgslsmith_clamp_u32(13433u, _wgslsmith_clamp_u32(u_input.a.x, 1u, 0u), _wgslsmith_div_u32(u_input.a.x, u_input.a.x))), ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(13581u, 7270u, u_input.a.x, u_input.a.x), vec4<u32>(65901u, u_input.a.x, u_input.a.x, u_input.a.x))) & countOneBits(21277u)), 29u)];
    global3 = array<Struct_1, 29>();
    var var_1 = ~_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(-8071i, -2147483647i, -2333i), -vec3<i32>(2147483647i, -1i, -2147483647i)), ~firstTrailingBit(vec3<i32>(1i, -1i, -2147483647i))) >= -73445i;
    var var_2 = Struct_4(Struct_3(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, var_0.a, var_0.a, u_input.a.x), ~vec4<u32>(u_input.a.x, 2207u, u_input.a.x, u_input.a.x)) | ~_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.a, u_input.a.x, u_input.a.x, var_0.a), vec4<u32>(4294967295u, 0u, 0u, var_0.a), vec4<u32>(57478u, var_0.a, 1u, 0u)), u_input.a.x), !select(!select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true)), vec4<bool>(true, true, true, true), true), 11355u, select(!select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true)), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), false), any(vec4<bool>(false, true, false, true))), vec4<bool>(true, true, true, true), false), Struct_1(~u_input.a.x, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1307f), global0.x, _wgslsmith_div_f32(527f, global0.x), 1000f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(var_0.b.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(global0.x)))), true)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(global0.yy - vec2<f32>(-967f, global0.x))))));
    let var_3 = ~(-vec2<i32>(1i, 1i));
    return select(~(~vec4<i32>(max(-2147483647i, var_3.x), _wgslsmith_mod_i32(8940i, -15774i), var_3.x, _wgslsmith_dot_vec2_i32(vec2<i32>(var_3.x, 35476i), vec2<i32>(var_3.x, -20390i)))), min(-vec4<i32>(var_3.x, 2147483647i, var_3.x, var_3.x) | -vec4<i32>(var_3.x, var_3.x, 85654i, var_3.x), vec4<i32>(-56428i, var_3.x & 14726i, var_3.x & 3287i, select(0i, -53921i, var_2.b.x))) & vec4<i32>(-37042i, -select(var_3.x, var_3.x, var_2.b.x), _wgslsmith_div_i32(var_3.x, var_3.x) ^ ~var_3.x, -42103i), true);
}

fn func_2() -> Struct_5 {
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(1155f + 971f), 1000f, _wgslsmith_f_op_f32(global0.x - global0.x)) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-199f, global0.x, global0.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global0.x, global0.x, global0.x), vec3<f32>(global0.x, 1747f, 198f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -287f, global0.x))))) + _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))))));
    global3 = array<Struct_1, 29>();
    let var_0 = func_3();
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, global0.x)) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * 461f))), -1667f, 3119i >= _wgslsmith_add_i32(var_0.x, var_0.x))));
    global0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(1770f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.x + 760f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.x), global0.x))), _wgslsmith_f_op_f32(global0.x - -782f)));
    return Struct_5(Struct_3(vec4<u32>(15914u, u_input.a.x, 117756u >> (~4294967295u % 32u), ~reverseBits(u_input.a.x)), 4294967295u), vec2<i32>(_wgslsmith_dot_vec3_i32(var_0.zzz, -firstTrailingBit(vec3<i32>(var_0.x, var_0.x, -26690i))), 0i), Struct_4(Struct_3(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, 53943u, u_input.a.x), ~vec4<u32>(4294967295u, 37797u, u_input.a.x, u_input.a.x)), ~u_input.a.x | u_input.a.x), select(vec4<bool>(false, true, true, all(vec2<bool>(false, true))), !select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), false), vec4<bool>(true, true, true, true)), _wgslsmith_add_u32(u_input.a.x, u_input.a.x), vec4<bool>(all(vec3<bool>(false, false, false)), true, false, all(vec4<bool>(true, true, true, true))), global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(~_wgslsmith_mult_u32(1u, u_input.a.x), 33169u), 29u)]), Struct_3(vec4<u32>(16066u, ~u_input.a.x, 1u, ~(~u_input.a.x)), 1901u), 1i);
}

fn func_4(arg_0: Struct_5, arg_1: vec2<i32>, arg_2: Struct_3, arg_3: vec4<f32>) -> i32 {
    let var_0 = Struct_1(33571u, _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0.x, -231f, 743f, arg_3.x))), _wgslsmith_f_op_vec4_f32(select(func_2().c.e.b, _wgslsmith_f_op_vec4_f32(arg_3 - vec4<f32>(-333f, global0.x, global0.x, -1688f)), true))), _wgslsmith_f_op_vec4_f32(-arg_0.c.e.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.x, _wgslsmith_div_f32(arg_0.c.e.c, -1000f), true))) - arg_0.c.e.c), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0.x)))), _wgslsmith_f_op_f32(191f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.x * arg_3.x) - _wgslsmith_f_op_f32(step(-673f, -709f))))));
    global2 = arg_0.c.e.c;
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1988f, arg_3.x, any(arg_0.c.d.ywy))) * 1f);
    global2 = _wgslsmith_f_op_f32(max(arg_0.c.e.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -412f))));
    let var_1 = true;
    return -firstTrailingBit(1i);
}

fn func_1() -> f32 {
    var var_0 = -vec3<i32>(-func_4(func_2(), ~vec2<i32>(-2147483647i, -43363i), Struct_3(vec4<u32>(4192u, 1u, u_input.a.x, u_input.a.x), 4294967295u), _wgslsmith_div_vec4_f32(vec4<f32>(1715f, 923f, global0.x, global0.x), vec4<f32>(-1000f, global0.x, global0.x, global0.x))), _wgslsmith_div_i32(61679i, func_3().x), _wgslsmith_sub_i32(-firstTrailingBit(-2147483647i), 1i));
    global1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -695f)));
    var var_1 = func_2().a;
    global1 = -510f;
    global2 = 1581f;
    return 141f;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_f_op_f32(func_1());
    global2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global0.x)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global0.x)) * _wgslsmith_f_op_f32(f32(-1f) * -1832f)) + _wgslsmith_f_op_f32(-1919f * _wgslsmith_f_op_f32(step(524f, -702f)))))));
    let var_0 = 452u;
    global0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, _wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(-global0.x)));
    let var_1 = _wgslsmith_div_f32(320f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0.x))));
    var var_2 = _wgslsmith_mod_u32(max(max(var_0, ~0u), ~var_0), 26096u);
    global1 = global0.x;
    global2 = 1868f;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(var_0, 20413u, u_input.a.x, 4294967295u));
}

