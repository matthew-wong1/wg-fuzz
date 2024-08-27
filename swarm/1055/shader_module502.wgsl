struct Struct_1 {
    a: bool,
    b: u32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: bool,
    b: vec2<f32>,
    c: u32,
    d: Struct_2,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_3,
    c: u32,
    d: vec4<f32>,
    e: Struct_1,
}

struct Struct_5 {
    a: Struct_4,
    b: vec2<u32>,
    c: Struct_1,
    d: vec2<u32>,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: bool = false;

var<private> global2: array<Struct_3, 18> = array<Struct_3, 18>(Struct_3(true, vec2<f32>(-168f, -1392f), 18314u, Struct_2(vec4<f32>(246f, 486f, 554f, 530f), vec2<i32>(57061i, 23058i), vec3<u32>(39741u, 4294967295u, 0u), Struct_1(false, 11183u, vec4<u32>(41740u, 1u, 4294967295u, 46788u)), true)), Struct_3(false, vec2<f32>(1230f, 722f), 0u, Struct_2(vec4<f32>(-1000f, -706f, -772f, 424f), vec2<i32>(-1i, i32(-2147483648)), vec3<u32>(2981u, 4294967295u, 0u), Struct_1(false, 4294967295u, vec4<u32>(1u, 4294967295u, 1u, 1u)), false)), Struct_3(false, vec2<f32>(119f, -1537f), 1u, Struct_2(vec4<f32>(1237f, 907f, -897f, -1259f), vec2<i32>(38652i, -1754i), vec3<u32>(14308u, 4294967295u, 65086u), Struct_1(true, 23222u, vec4<u32>(1u, 0u, 24882u, 14883u)), false)), Struct_3(false, vec2<f32>(1114f, 154f), 0u, Struct_2(vec4<f32>(-191f, -851f, 410f, 1059f), vec2<i32>(2147483647i, i32(-2147483648)), vec3<u32>(1708u, 1u, 4294967295u), Struct_1(false, 1u, vec4<u32>(1u, 4294967295u, 0u, 10400u)), false)), Struct_3(false, vec2<f32>(-508f, -1383f), 53064u, Struct_2(vec4<f32>(765f, 918f, 1400f, 737f), vec2<i32>(2147483647i, 1i), vec3<u32>(1896u, 8573u, 4294967295u), Struct_1(true, 4173u, vec4<u32>(21836u, 25136u, 4294967295u, 1u)), false)), Struct_3(false, vec2<f32>(-794f, 1346f), 44170u, Struct_2(vec4<f32>(884f, -535f, 515f, -1711f), vec2<i32>(i32(-2147483648), 1613i), vec3<u32>(1u, 42560u, 1u), Struct_1(false, 0u, vec4<u32>(0u, 0u, 1u, 1u)), false)), Struct_3(false, vec2<f32>(1000f, -1000f), 17553u, Struct_2(vec4<f32>(163f, -259f, -333f, 539f), vec2<i32>(0i, -11795i), vec3<u32>(28237u, 21890u, 21870u), Struct_1(true, 4294967295u, vec4<u32>(1u, 16020u, 30813u, 4294967295u)), false)), Struct_3(true, vec2<f32>(-827f, 335f), 3877u, Struct_2(vec4<f32>(1107f, 759f, -512f, -2426f), vec2<i32>(-16129i, i32(-2147483648)), vec3<u32>(0u, 4294967295u, 12832u), Struct_1(false, 75783u, vec4<u32>(30667u, 1u, 1u, 0u)), true)), Struct_3(true, vec2<f32>(401f, 1000f), 1u, Struct_2(vec4<f32>(-1000f, -1618f, -1477f, 753f), vec2<i32>(-46292i, 35769i), vec3<u32>(4294967295u, 1u, 16163u), Struct_1(true, 31198u, vec4<u32>(1u, 0u, 39703u, 49868u)), false)), Struct_3(false, vec2<f32>(458f, -1069f), 13460u, Struct_2(vec4<f32>(612f, -145f, -817f, 653f), vec2<i32>(-24343i, -22064i), vec3<u32>(38282u, 12753u, 1u), Struct_1(true, 4294967295u, vec4<u32>(4294967295u, 0u, 1u, 4294967295u)), true)), Struct_3(false, vec2<f32>(421f, -254f), 0u, Struct_2(vec4<f32>(-1009f, -1206f, 871f, -552f), vec2<i32>(-40683i, 2147483647i), vec3<u32>(1u, 100969u, 0u), Struct_1(false, 20295u, vec4<u32>(0u, 4294967295u, 0u, 0u)), false)), Struct_3(false, vec2<f32>(-337f, 402f), 39174u, Struct_2(vec4<f32>(842f, -1247f, 588f, 861f), vec2<i32>(53254i, 40128i), vec3<u32>(0u, 19712u, 1u), Struct_1(true, 28795u, vec4<u32>(0u, 0u, 21060u, 4294967295u)), false)), Struct_3(true, vec2<f32>(1244f, -386f), 64741u, Struct_2(vec4<f32>(280f, -146f, 554f, 1436f), vec2<i32>(i32(-2147483648), 20061i), vec3<u32>(27890u, 4294967295u, 4294967295u), Struct_1(false, 4294967295u, vec4<u32>(0u, 56491u, 4294967295u, 1u)), false)), Struct_3(false, vec2<f32>(1510f, -1295f), 1u, Struct_2(vec4<f32>(-1274f, 2134f, -271f, -692f), vec2<i32>(-9252i, 29758i), vec3<u32>(4294967295u, 6841u, 1u), Struct_1(false, 154421u, vec4<u32>(4294967295u, 48445u, 7594u, 0u)), true)), Struct_3(false, vec2<f32>(-1658f, 303f), 4294967295u, Struct_2(vec4<f32>(-893f, -952f, 212f, 1592f), vec2<i32>(i32(-2147483648), 2147483647i), vec3<u32>(37509u, 4294967295u, 16288u), Struct_1(true, 73242u, vec4<u32>(12893u, 10428u, 82999u, 49474u)), false)), Struct_3(true, vec2<f32>(-1181f, -1206f), 41690u, Struct_2(vec4<f32>(-725f, 988f, -950f, 136f), vec2<i32>(-18320i, 14602i), vec3<u32>(0u, 0u, 16627u), Struct_1(false, 1u, vec4<u32>(85511u, 6877u, 4294967295u, 17330u)), true)), Struct_3(true, vec2<f32>(337f, -1000f), 4294967295u, Struct_2(vec4<f32>(907f, 762f, -124f, -382f), vec2<i32>(0i, 0i), vec3<u32>(56709u, 45842u, 1u), Struct_1(false, 28004u, vec4<u32>(38069u, 36827u, 0u, 3646u)), true)), Struct_3(true, vec2<f32>(-491f, 760f), 589u, Struct_2(vec4<f32>(-753f, 569f, 201f, -520f), vec2<i32>(-31024i, 7645i), vec3<u32>(113456u, 66973u, 28140u), Struct_1(false, 26950u, vec4<u32>(1u, 63474u, 2271u, 43780u)), false)));

var<private> global3: array<vec3<i32>, 3> = array<vec3<i32>, 3>(vec3<i32>(0i, 0i, 0i), vec3<i32>(11663i, 1i, 2147483647i), vec3<i32>(21813i, 1i, 74193i));

var<private> global4: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(false, 44729u, vec4<u32>(62012u, 4294967295u, 57307u, 4294967295u)), Struct_1(true, 0u, vec4<u32>(1012u, 4294967295u, 1u, 72434u)), Struct_1(false, 68680u, vec4<u32>(1u, 4294967295u, 0u, 48386u)), Struct_1(true, 6958u, vec4<u32>(10646u, 51068u, 4294967295u, 37717u)), Struct_1(true, 0u, vec4<u32>(0u, 0u, 0u, 14896u)), Struct_1(false, 0u, vec4<u32>(4294967295u, 4294967295u, 0u, 1u)), Struct_1(true, 1u, vec4<u32>(0u, 38925u, 94231u, 16345u)), Struct_1(false, 4294967295u, vec4<u32>(14480u, 4294967295u, 4294967295u, 28320u)), Struct_1(false, 0u, vec4<u32>(15328u, 0u, 1u, 4294967295u)), Struct_1(true, 7038u, vec4<u32>(82607u, 0u, 1u, 1u)), Struct_1(false, 18552u, vec4<u32>(5876u, 1u, 0u, 44661u)), Struct_1(false, 110659u, vec4<u32>(417u, 28260u, 76554u, 3837u)), Struct_1(false, 34321u, vec4<u32>(81787u, 22576u, 50569u, 1u)), Struct_1(true, 4294967295u, vec4<u32>(4294967295u, 1u, 1u, 0u)), Struct_1(false, 0u, vec4<u32>(0u, 4294967295u, 67241u, 40716u)), Struct_1(true, 32070u, vec4<u32>(1u, 30444u, 4294967295u, 4294967295u)), Struct_1(true, 0u, vec4<u32>(9522u, 4294967295u, 0u, 51669u)), Struct_1(false, 4294967295u, vec4<u32>(4294967295u, 70105u, 135636u, 25708u)));

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_5, arg_1: Struct_1, arg_2: f32, arg_3: vec3<i32>) -> vec2<bool> {
    let var_0 = arg_3.zx;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-131f, -1314f)) * 446f)));
    let var_2 = arg_0.e.d;
    var var_3 = false;
    var var_4 = Struct_2(_wgslsmith_f_op_vec4_f32(var_2.a * _wgslsmith_f_op_vec4_f32(select(var_2.a, _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_2.a.x, -522f, arg_0.a.b.b.x, arg_0.e.b.x))), true && (arg_0.a.e.a & var_2.d.a)))), max(abs(vec2<i32>(1i, _wgslsmith_mult_i32(2147483647i, arg_0.e.d.b.x))), _wgslsmith_clamp_vec2_i32(~vec2<i32>(arg_3.x, -9226i), select(~arg_3.xy, min(arg_0.e.d.b, var_2.b), true), min(~arg_3.yy, ~vec2<i32>(var_0.x, 2147483647i)))), ~vec3<u32>(~(~107377u), 0u, 17928u), Struct_1(!var_2.d.a, firstTrailingBit(firstLeadingBit(u_input.b.x) | firstTrailingBit(var_2.d.b)), vec4<u32>(_wgslsmith_mod_u32(~arg_1.b, _wgslsmith_sub_u32(arg_0.d.x, 22262u)), arg_0.c.b, 4294967295u, ~(~u_input.b.x))), true);
    return select(select(vec2<bool>(false, all(vec4<bool>(false, false, true, var_2.e)) || !var_2.d.a), arg_0.a.a, u_input.d.x != firstTrailingBit(~arg_1.b)), select(!(!vec2<bool>(arg_0.e.a, true)), arg_0.a.a, !arg_0.a.a), vec2<bool>(var_4.e, true));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec4<bool>, arg_2: vec3<u32>) -> vec4<f32> {
    let var_0 = -1280f;
    let var_1 = Struct_4(select(select(arg_0, vec2<bool>(var_0 > var_0, any(arg_0)), select(!arg_0, func_3(Struct_5(Struct_4(vec2<bool>(arg_1.x, arg_0.x), global2[_wgslsmith_index_u32(u_input.d.x, 18u)], u_input.d.x, vec4<f32>(var_0, 687f, var_0, -1068f), global4[_wgslsmith_index_u32(u_input.c.x, 18u)]), u_input.b.zz, global4[_wgslsmith_index_u32(arg_2.x, 18u)], vec2<u32>(arg_2.x, u_input.b.x), Struct_3(arg_1.x, vec2<f32>(var_0, -1000f), u_input.b.x, Struct_2(vec4<f32>(1810f, 1000f, var_0, var_0), vec2<i32>(-1i, 30554i), vec3<u32>(32100u, u_input.b.x, u_input.d.x), Struct_1(true, 4294967295u, vec4<u32>(1373u, 0u, 78404u, arg_2.x)), arg_0.x))), global4[_wgslsmith_index_u32(arg_2.x, 18u)], var_0, vec3<i32>(-2147483647i, 0i, -1i)), vec2<bool>(true, true))), arg_1.yy, !(true && any(arg_0))), Struct_3(!arg_0.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, 1160f) + vec2<f32>(-1325f, 174f))) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-199f, var_0), _wgslsmith_div_vec2_f32(vec2<f32>(var_0, -1000f), vec2<f32>(805f, 1362f)), arg_1.x))), _wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(u_input.d.x, 1u)), ~u_input.a.xz), Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_0, var_0, var_0)) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0, var_0, var_0, var_0)))), vec2<i32>(-9811i, min(-2147483647i, -17378i)), vec3<u32>(arg_2.x, 4294967295u, 67413u) & u_input.a.wwz, global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_mult_u32(1u, 20281u), arg_2.x), 18u)], true)), abs(~(~firstLeadingBit(78193u))), vec4<f32>(360f, 418f, _wgslsmith_f_op_f32(max(var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 * var_0) + _wgslsmith_f_op_f32(991f + var_0)))), var_0), Struct_1(!arg_1.x, ~(9448u | select(58547u, u_input.b.x, true)), vec4<u32>(46961u, countOneBits(1u), arg_2.x, _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), u_input.b.zy), ~11386u))));
    let var_2 = global3[_wgslsmith_index_u32(arg_2.x, 3u)] & _wgslsmith_sub_vec3_i32(~_wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(var_1.b.d.b.x, -2147483647i, -14082i), global3[_wgslsmith_index_u32(0u, 3u)]), ~vec3<i32>(var_1.b.d.b.x, 24207i, 0i)), reverseBits(-reverseBits(vec3<i32>(-1i, 44690i, var_1.b.d.b.x))));
    let var_3 = 4294967295u;
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0)) - var_0), -299f) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 * 918f)))), -292f)));
    return _wgslsmith_f_op_vec4_f32(floor(var_1.b.d.a));
}

fn func_1(arg_0: f32) -> f32 {
    global3 = array<vec3<i32>, 3>();
    let var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(vec2<bool>(false, false), vec4<bool>(true, true, true, true), u_input.c.yzw))))), ~vec2<i32>(-1i, 1i), firstLeadingBit(~(~firstLeadingBit(u_input.b))), global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.b, ~vec3<u32>(41890u, 1u, u_input.a.x)), vec3<u32>(u_input.c.x, u_input.b.x, _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a.x, u_input.b.x, 1u), firstLeadingBit(u_input.a.zyx)))), 18u)], true);
    var var_1 = Struct_5(Struct_4(!vec2<bool>(var_0.e, true), Struct_3(!(!var_0.e), var_0.a.xw, 47710u, var_0), _wgslsmith_dot_vec2_u32(u_input.b.zy, vec2<u32>(~u_input.b.x, ~u_input.b.x)), var_0.a, global4[_wgslsmith_index_u32(u_input.c.x, 18u)]), u_input.c.zw, Struct_1(any(vec2<bool>(all(vec2<bool>(var_0.e, false)), !var_0.d.a)), u_input.d.x, ~(~(u_input.d | vec4<u32>(1u, 4294967295u, u_input.b.x, 1u)))), _wgslsmith_clamp_vec2_u32(var_0.d.c.xx, ~var_0.d.c.ww, vec2<u32>(_wgslsmith_div_u32(u_input.c.x, ~var_0.d.c.x), 30632u)), Struct_3(all(!vec3<bool>(var_0.e, var_0.d.a, false)), _wgslsmith_f_op_vec2_f32(-var_0.a.wy), 4294967295u << (abs(~u_input.b.x) % 32u), Struct_2(vec4<f32>(_wgslsmith_f_op_f32(arg_0 - -165f), _wgslsmith_f_op_f32(trunc(675f)), _wgslsmith_f_op_f32(arg_0 * arg_0), _wgslsmith_f_op_f32(floor(arg_0))), _wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483647i, 1i), vec2<i32>(-61i, -3794i), var_0.b), -vec2<i32>(var_0.b.x, var_0.b.x)), ~(~vec3<u32>(12580u, 68814u, 60680u)), global4[_wgslsmith_index_u32(var_0.c.x, 18u)], true)));
    return _wgslsmith_f_op_f32(var_1.a.b.d.a.x * var_1.e.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(!any(select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), false))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-556f, -897f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1248f, -642f))) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -944f), _wgslsmith_f_op_f32(func_1(-197f))))), ~select(~1u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), max(vec2<u32>(86789u, 73280u), u_input.b.yz)), true), Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-399f, -183f), _wgslsmith_f_op_f32(953f + -787f), _wgslsmith_f_op_f32(func_1(-124f)), _wgslsmith_f_op_f32(max(408f, 111f)))), vec2<i32>(2147483647i, ~1i), ~vec3<u32>(0u, u_input.b.x, u_input.c.x) | (vec3<u32>(u_input.a.x, u_input.b.x, u_input.c.x) << ((u_input.a.ywy & u_input.b) % vec3<u32>(32u))), global4[_wgslsmith_index_u32(abs(44770u) & abs(reverseBits(u_input.d.x)), 18u)], false));
    global0 = var_0.c;
    let var_1 = !(reverseBits(var_0.d.b.x) != abs(var_0.d.b.x));
    let var_2 = u_input.b.x;
    var var_3 = all(select(vec2<bool>(false, !(false | var_0.a)), vec2<bool>(var_0.a, var_1), select(var_0.a, true || all(vec4<bool>(true, var_0.d.d.a, var_0.a, var_0.d.e)), true)));
    let var_4 = Struct_3(var_1, vec2<f32>(var_0.b.x, _wgslsmith_f_op_f32(abs(-408f))), 69444u, var_0.d);
    var_3 = _wgslsmith_div_f32(var_0.d.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4.d.a.x) - _wgslsmith_f_op_f32(select(560f, 373f, var_4.d.d.a & true)))) == var_4.d.a.x;
    var var_5 = Struct_4(vec2<bool>(all(!vec4<bool>(var_0.a, true, false, true)) || var_0.d.e, true), Struct_3(var_1, var_0.b, _wgslsmith_dot_vec2_u32(vec2<u32>(~4294967295u, 1u), min(vec2<u32>(var_2, 4294967295u), abs(vec2<u32>(29437u, 39777u)))), var_4.d), u_input.a.x, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(var_0.d.a, vec4<f32>(-927f, var_0.d.a.x, 1000f, 1000f)) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.d.a.x, -1063f, var_4.d.a.x, -1000f)))) - var_4.d.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1141f, var_4.d.a.x, var_0.b.x, var_0.b.x)))), Struct_1(!func_3(Struct_5(Struct_4(vec2<bool>(var_1, true), var_4, 4294967295u, var_0.d.a, Struct_1(false, 17313u, vec4<u32>(var_0.c, 0u, 47797u, u_input.d.x))), vec2<u32>(u_input.c.x, 23852u), global4[_wgslsmith_index_u32(4294967295u, 18u)], var_4.d.c.yy, Struct_3(var_4.a, var_4.b, var_2, var_4.d)), global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_0.c, var_0.d.d.b), 18u)], _wgslsmith_f_op_f32(sign(-1460f)), -global3[_wgslsmith_index_u32(62196u, 3u)]).x, u_input.a.x, u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(~(vec2<u32>(var_5.c << (var_5.e.b % 32u), _wgslsmith_mod_u32(4294967295u, var_0.c)) << (reverseBits(var_4.d.c.yz) % vec2<u32>(32u))));
}

