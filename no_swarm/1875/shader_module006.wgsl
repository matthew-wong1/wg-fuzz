struct Struct_1 {
    a: f32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
    c: f32,
    d: vec2<u32>,
    e: f32,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_1,
    c: i32,
    d: vec4<bool>,
}

struct Struct_5 {
    a: Struct_2,
    b: vec2<bool>,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<i32>,
    d: vec4<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 30> = array<Struct_2, 30>(Struct_2(Struct_1(671f, vec3<f32>(1000f, 298f, -844f)), vec3<f32>(848f, 505f, -120f)), Struct_2(Struct_1(-914f, vec3<f32>(451f, -240f, 1285f)), vec3<f32>(-614f, 953f, -2076f)), Struct_2(Struct_1(203f, vec3<f32>(-112f, -488f, -275f)), vec3<f32>(-1399f, 600f, 1726f)), Struct_2(Struct_1(395f, vec3<f32>(1000f, -376f, 375f)), vec3<f32>(-1144f, -473f, -1285f)), Struct_2(Struct_1(-884f, vec3<f32>(-284f, -171f, 710f)), vec3<f32>(-1510f, -193f, 1595f)), Struct_2(Struct_1(892f, vec3<f32>(1068f, -1423f, 1657f)), vec3<f32>(1050f, -661f, 237f)), Struct_2(Struct_1(-858f, vec3<f32>(-961f, 1478f, 738f)), vec3<f32>(368f, -412f, 837f)), Struct_2(Struct_1(326f, vec3<f32>(-1000f, -901f, -636f)), vec3<f32>(379f, -2919f, 230f)), Struct_2(Struct_1(824f, vec3<f32>(-911f, 869f, 272f)), vec3<f32>(-779f, -862f, -223f)), Struct_2(Struct_1(-879f, vec3<f32>(415f, -173f, -485f)), vec3<f32>(1000f, -1568f, -611f)), Struct_2(Struct_1(-117f, vec3<f32>(-464f, -951f, -1172f)), vec3<f32>(-1000f, -594f, 906f)), Struct_2(Struct_1(-1508f, vec3<f32>(-305f, 630f, -1000f)), vec3<f32>(-272f, -768f, -1000f)), Struct_2(Struct_1(134f, vec3<f32>(579f, 1608f, -744f)), vec3<f32>(-125f, 273f, 1031f)), Struct_2(Struct_1(713f, vec3<f32>(157f, 1310f, -273f)), vec3<f32>(-1000f, -365f, -605f)), Struct_2(Struct_1(-1000f, vec3<f32>(1253f, -154f, -1647f)), vec3<f32>(-549f, -505f, 159f)), Struct_2(Struct_1(183f, vec3<f32>(1073f, 904f, 1436f)), vec3<f32>(1000f, 974f, -1000f)), Struct_2(Struct_1(245f, vec3<f32>(-664f, 519f, 930f)), vec3<f32>(-989f, -261f, -666f)), Struct_2(Struct_1(564f, vec3<f32>(-675f, -235f, -1000f)), vec3<f32>(-479f, 198f, -324f)), Struct_2(Struct_1(798f, vec3<f32>(-787f, -1453f, -928f)), vec3<f32>(1462f, -354f, -880f)), Struct_2(Struct_1(-557f, vec3<f32>(1635f, 934f, -135f)), vec3<f32>(-314f, 547f, 825f)), Struct_2(Struct_1(2534f, vec3<f32>(1058f, 166f, 1000f)), vec3<f32>(2376f, -787f, 1930f)), Struct_2(Struct_1(-185f, vec3<f32>(119f, -919f, 538f)), vec3<f32>(1382f, -817f, 2517f)), Struct_2(Struct_1(-557f, vec3<f32>(1125f, -432f, -219f)), vec3<f32>(1113f, 367f, -674f)), Struct_2(Struct_1(-372f, vec3<f32>(1000f, -311f, -623f)), vec3<f32>(-446f, 610f, 325f)), Struct_2(Struct_1(-783f, vec3<f32>(147f, -789f, 421f)), vec3<f32>(916f, 936f, 781f)), Struct_2(Struct_1(-340f, vec3<f32>(1000f, -594f, -733f)), vec3<f32>(-1000f, 186f, -782f)), Struct_2(Struct_1(266f, vec3<f32>(578f, -1695f, -1808f)), vec3<f32>(-1052f, -519f, 1310f)), Struct_2(Struct_1(-1056f, vec3<f32>(424f, 363f, 421f)), vec3<f32>(-1391f, -498f, -478f)), Struct_2(Struct_1(1792f, vec3<f32>(737f, -521f, 140f)), vec3<f32>(-437f, -1000f, 1155f)), Struct_2(Struct_1(-945f, vec3<f32>(2211f, 3806f, -627f)), vec3<f32>(1000f, -848f, -871f)));

var<private> global1: Struct_3 = Struct_3(Struct_1(875f, vec3<f32>(-1386f, 166f, 837f)), vec3<f32>(712f, 660f, 220f), 2150f, vec2<u32>(16416u, 10710u), 162f);

var<private> global2: Struct_1 = Struct_1(-447f, vec3<f32>(549f, 779f, -1538f));

var<private> global3: i32 = 3730i;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_5, arg_1: Struct_5, arg_2: bool) -> f32 {
    global0 = array<Struct_2, 30>();
    var var_0 = -800f;
    global3 = -abs(abs(u_input.a));
    var var_1 = abs(~0u & global1.d.x);
    global1 = Struct_3(Struct_1(_wgslsmith_f_op_f32(-arg_1.a.a.b.x), _wgslsmith_f_op_vec3_f32(select(global2.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.b)), arg_1.c))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(arg_1.a.a.b)) + vec3<f32>(163f, global1.c, 237f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(148f, -1000f, arg_0.a.a.b.x)))), global1.e, _wgslsmith_mult_vec2_u32(firstTrailingBit(vec2<u32>(reverseBits(u_input.e.x), _wgslsmith_mult_u32(u_input.b.x, 1u))), ~global1.d), _wgslsmith_f_op_f32(min(-1000f, -948f)));
    return -1539f;
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_4, arg_2: u32, arg_3: Struct_1) -> bool {
    var var_0 = ~u_input.b;
    global0 = array<Struct_2, 30>();
    let var_1 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(422f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b.b.x) - _wgslsmith_f_op_f32(func_3(Struct_5(Struct_2(global1.a, vec3<f32>(global2.b.x, global1.b.x, 1766f)), arg_1.a, arg_1.d.xxy), Struct_5(global0[_wgslsmith_index_u32(16454u, 30u)], arg_1.a, arg_1.d.wyx), true))), _wgslsmith_f_op_f32(-230f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b.b.x))), 625f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1778f, arg_1.b.b.x, global2.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1000f))))), true));
    return arg_1.d.x || !(-1389f <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_3.b.x, var_1.x, false)) * global1.c));
}

fn func_1(arg_0: vec4<bool>, arg_1: vec3<f32>, arg_2: Struct_4) -> vec4<u32> {
    let var_0 = vec4<bool>(!(!arg_2.a.x), select(arg_0.x && arg_2.d.x, !(!arg_2.d.x || !arg_0.x), arg_0.x), arg_0.x, true);
    var var_1 = Struct_5(Struct_2(Struct_1(global2.b.x, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -199f), _wgslsmith_f_op_f32(763f - arg_1.x), _wgslsmith_f_op_f32(f32(-1f) * -913f))), global1.a.b), vec2<bool>(!func_2(_wgslsmith_div_vec3_i32(u_input.c, u_input.d.yxx), arg_2, 1u, arg_2.b), arg_2.a.x), arg_2.d.wzy);
    let var_2 = arg_2;
    global1 = Struct_3(Struct_1(-221f, vec3<f32>(_wgslsmith_f_op_f32(-1f), arg_1.x, -473f)), arg_1, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_5(Struct_2(Struct_1(-1905f, global1.b), var_1.a.b), var_2.a, vec3<bool>(var_0.x, arg_2.d.x, false)), Struct_5(Struct_2(Struct_1(global2.b.x, vec3<f32>(1340f, -1000f, 156f)), vec3<f32>(-1137f, 1378f, 484f)), vec2<bool>(arg_0.x, arg_0.x), vec3<bool>(arg_0.x, false, false)), arg_2.a.x))))))), min(vec2<u32>(global1.d.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e.x, global1.d.x), select(u_input.e, global1.d, arg_2.a.x))), vec2<u32>(reverseBits(4294967295u) ^ ~u_input.b.x, 1u | global1.d.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    var var_3 = _wgslsmith_dot_vec4_i32(u_input.d, _wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(~vec4<i32>(-2147483647i, 2147483647i, -16639i, 1i), firstLeadingBit(max(u_input.d, u_input.d))), vec4<i32>(_wgslsmith_clamp_i32(1i, _wgslsmith_mult_i32(var_2.c, -1i), -17261i), ~(-2147483647i), -31301i | min(arg_2.c, u_input.a), 27965i), u_input.d));
    return countOneBits(~(~(~vec4<u32>(0u, u_input.e.x, 0u, 20574u)) | vec4<u32>(_wgslsmith_dot_vec3_u32(u_input.b, u_input.b), u_input.e.x, _wgslsmith_mult_u32(u_input.e.x, 46028u), ~u_input.b.x)));
}

fn func_4(arg_0: i32, arg_1: vec4<u32>, arg_2: u32) -> u32 {
    global2 = global1.a;
    var var_0 = !select(vec4<bool>(true, _wgslsmith_f_op_f32(-global2.a) == _wgslsmith_f_op_f32(2348f + 806f), !all(vec3<bool>(true, false, true)), true), vec4<bool>(all(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), true)), true, true, any(vec3<bool>(false, false, true))), any(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true)));
    var var_1 = global1.a;
    let var_2 = _wgslsmith_mult_u32(1u, abs(global1.d.x));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.b.x + -289f)), _wgslsmith_f_op_f32(132f - _wgslsmith_f_op_f32(floor(783f)))))), _wgslsmith_f_op_vec3_f32(floor(global1.b)));
    return ~(global1.d.x & _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(global1.d, ~vec2<u32>(4294967295u, u_input.b.x)), arg_2));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(func_4(-1i, firstTrailingBit(func_1(vec4<bool>(false, true, true, false), global1.b, Struct_4(vec2<bool>(false, false), Struct_1(163f, global1.a.b), u_input.d.x, vec4<bool>(true, false, false, true))) | func_1(vec4<bool>(true, true, false, true), vec3<f32>(-333f, -779f, 1569f), Struct_4(vec2<bool>(true, false), Struct_1(global2.b.x, vec3<f32>(global1.a.a, 1035f, global2.a)), 25263i, vec4<bool>(false, true, true, false)))), global1.d.x), 1u, u_input.c.x, u_input.b.yz);
}

