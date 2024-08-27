struct Struct_1 {
    a: vec4<u32>,
    b: vec4<bool>,
    c: vec4<i32>,
    d: vec3<f32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec3<u32>,
}

struct Struct_5 {
    a: u32,
    b: bool,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 28> = array<Struct_2, 28>(Struct_2(Struct_1(vec4<u32>(54647u, 0u, 4294967295u, 0u), vec4<bool>(false, true, true, true), vec4<i32>(-34870i, 0i, 2147483647i, 0i), vec3<f32>(2123f, 835f, -423f), 0u)), Struct_2(Struct_1(vec4<u32>(51982u, 1u, 33534u, 45011u), vec4<bool>(false, false, true, false), vec4<i32>(-1i, 0i, 0i, 18949i), vec3<f32>(-1196f, 740f, 779f), 1u)), Struct_2(Struct_1(vec4<u32>(1u, 0u, 1u, 9322u), vec4<bool>(true, true, true, true), vec4<i32>(1i, 55929i, 1i, -652i), vec3<f32>(-1399f, -679f, -129f), 11438u)), Struct_2(Struct_1(vec4<u32>(6829u, 77454u, 4294967295u, 33658u), vec4<bool>(false, true, true, false), vec4<i32>(i32(-2147483648), 30196i, 0i, -2544i), vec3<f32>(1176f, -597f, 433f), 4294967295u)), Struct_2(Struct_1(vec4<u32>(54351u, 25630u, 4294967295u, 22399u), vec4<bool>(false, false, false, false), vec4<i32>(-17290i, 0i, -245i, 0i), vec3<f32>(479f, -1000f, 633f), 4294967295u)), Struct_2(Struct_1(vec4<u32>(23199u, 4294967295u, 1u, 0u), vec4<bool>(false, true, false, true), vec4<i32>(-41958i, i32(-2147483648), 1i, 0i), vec3<f32>(-453f, 274f, 986f), 1u)), Struct_2(Struct_1(vec4<u32>(4294967295u, 0u, 0u, 4294967295u), vec4<bool>(false, false, true, true), vec4<i32>(1i, 0i, -1i, -21857i), vec3<f32>(-1390f, -769f, 707f), 4294967295u)), Struct_2(Struct_1(vec4<u32>(4294967295u, 23908u, 50974u, 0u), vec4<bool>(true, true, true, false), vec4<i32>(i32(-2147483648), 2147483647i, -1588i, 39186i), vec3<f32>(-512f, 288f, 792f), 32804u)), Struct_2(Struct_1(vec4<u32>(0u, 1u, 0u, 1u), vec4<bool>(true, false, true, false), vec4<i32>(-23941i, 2147483647i, i32(-2147483648), 24482i), vec3<f32>(-774f, 731f, 549f), 54849u)), Struct_2(Struct_1(vec4<u32>(0u, 8959u, 0u, 1u), vec4<bool>(true, false, false, true), vec4<i32>(2147483647i, -7449i, 0i, 39590i), vec3<f32>(-1940f, 1633f, 1083f), 39707u)), Struct_2(Struct_1(vec4<u32>(0u, 0u, 1u, 4294967295u), vec4<bool>(false, false, false, false), vec4<i32>(i32(-2147483648), i32(-2147483648), -19139i, i32(-2147483648)), vec3<f32>(173f, 1156f, 2061f), 1u)), Struct_2(Struct_1(vec4<u32>(47413u, 1u, 4294967295u, 0u), vec4<bool>(false, true, true, false), vec4<i32>(-23066i, -9769i, 8047i, 2147483647i), vec3<f32>(1000f, -1988f, -886f), 33314u)), Struct_2(Struct_1(vec4<u32>(68154u, 105339u, 1u, 4294967295u), vec4<bool>(true, true, false, false), vec4<i32>(i32(-2147483648), 1i, -14884i, -8607i), vec3<f32>(-1320f, 1663f, -605f), 1u)), Struct_2(Struct_1(vec4<u32>(99040u, 125921u, 37846u, 43197u), vec4<bool>(false, false, true, false), vec4<i32>(i32(-2147483648), -42425i, -28488i, -12574i), vec3<f32>(-442f, 337f, -702f), 0u)), Struct_2(Struct_1(vec4<u32>(0u, 26718u, 4294967295u, 0u), vec4<bool>(false, true, true, true), vec4<i32>(18750i, -44923i, -9865i, -6853i), vec3<f32>(-401f, -563f, 1517f), 22315u)), Struct_2(Struct_1(vec4<u32>(70202u, 2995u, 92609u, 10954u), vec4<bool>(true, true, false, true), vec4<i32>(1i, -25067i, -1i, -24762i), vec3<f32>(-531f, -882f, -330f), 4294967295u)), Struct_2(Struct_1(vec4<u32>(30878u, 1u, 4294967295u, 4294967295u), vec4<bool>(true, true, false, true), vec4<i32>(2147483647i, 2147483647i, -13731i, 3265i), vec3<f32>(845f, 506f, 895f), 0u)), Struct_2(Struct_1(vec4<u32>(38724u, 0u, 17075u, 5745u), vec4<bool>(false, true, true, true), vec4<i32>(24328i, 1i, 0i, 11116i), vec3<f32>(208f, 158f, -783f), 0u)), Struct_2(Struct_1(vec4<u32>(73679u, 126352u, 35329u, 24993u), vec4<bool>(false, false, true, true), vec4<i32>(2147483647i, i32(-2147483648), 30938i, 13239i), vec3<f32>(1176f, -516f, -132f), 4294967295u)), Struct_2(Struct_1(vec4<u32>(10960u, 0u, 60991u, 1u), vec4<bool>(false, false, true, true), vec4<i32>(-3378i, i32(-2147483648), 55403i, -3441i), vec3<f32>(-1734f, -1154f, -1000f), 4294967295u)), Struct_2(Struct_1(vec4<u32>(99332u, 1u, 33668u, 0u), vec4<bool>(true, true, true, false), vec4<i32>(-37775i, 5763i, -28274i, i32(-2147483648)), vec3<f32>(-399f, -1348f, -372f), 21850u)), Struct_2(Struct_1(vec4<u32>(39133u, 4294967295u, 33958u, 0u), vec4<bool>(false, true, true, true), vec4<i32>(1i, 0i, i32(-2147483648), 7323i), vec3<f32>(668f, -2016f, -180f), 90316u)), Struct_2(Struct_1(vec4<u32>(15395u, 38377u, 4294967295u, 25905u), vec4<bool>(true, false, false, true), vec4<i32>(0i, 2147483647i, -1i, -1i), vec3<f32>(-611f, -955f, 2343f), 6975u)), Struct_2(Struct_1(vec4<u32>(1u, 0u, 1u, 39861u), vec4<bool>(true, true, false, true), vec4<i32>(2147483647i, -29099i, 35417i, -21325i), vec3<f32>(1443f, -1096f, -127f), 30693u)), Struct_2(Struct_1(vec4<u32>(10743u, 0u, 52402u, 4294967295u), vec4<bool>(false, false, false, true), vec4<i32>(-4084i, 54321i, -17343i, -26472i), vec3<f32>(-638f, -1447f, 311f), 5227u)), Struct_2(Struct_1(vec4<u32>(1u, 51926u, 0u, 4294967295u), vec4<bool>(true, true, true, true), vec4<i32>(20151i, 0i, 0i, i32(-2147483648)), vec3<f32>(-1228f, 1143f, -360f), 33761u)), Struct_2(Struct_1(vec4<u32>(20887u, 49204u, 1u, 4294967295u), vec4<bool>(false, false, false, true), vec4<i32>(i32(-2147483648), 30846i, -1i, 2818i), vec3<f32>(327f, 205f, 1929f), 21100u)), Struct_2(Struct_1(vec4<u32>(8076u, 1u, 0u, 0u), vec4<bool>(false, false, false, false), vec4<i32>(38143i, 2427i, 1i, -1i), vec3<f32>(870f, 1000f, 884f), 18437u)));

var<private> global1: f32 = -1681f;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1) -> vec2<bool> {
    global0 = array<Struct_2, 28>();
    var var_0 = !vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.d.x)) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -753f)), _wgslsmith_f_op_f32(exp2(arg_1.d.x)) != -1390f);
    global1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_1.d.x + _wgslsmith_f_op_f32(exp2(arg_1.d.x)))))), _wgslsmith_f_op_f32(arg_1.d.x - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_1.d.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_1.d.x - arg_1.d.x)))))));
    var var_1 = firstTrailingBit(45029u);
    var_1 = _wgslsmith_clamp_u32(~35563u, u_input.c, u_input.c);
    return vec2<bool>(max(countOneBits(~1u), ~(u_input.c ^ u_input.e.x)) <= (arg_1.e >> (u_input.e.x % 32u)), !any(vec3<bool>(false, false, arg_1.b.x)));
}

fn func_4(arg_0: u32, arg_1: vec2<bool>, arg_2: vec2<bool>, arg_3: i32) -> f32 {
    global0 = array<Struct_2, 28>();
    global0 = array<Struct_2, 28>();
    global1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -382f)))))), -1362f);
    let var_0 = u_input.b.x;
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -580f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-125f, _wgslsmith_f_op_f32(floor(-1448f))))), arg_1.x)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -511f) + 303f) - -1205f));
}

fn func_2() -> vec2<bool> {
    global0 = array<Struct_2, 28>();
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-642f + _wgslsmith_f_op_f32(floor(-301f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(350f * -1073f) + _wgslsmith_f_op_f32(step(1494f, -1885f))))), _wgslsmith_f_op_f32(func_4(reverseBits(41596u), func_3(_wgslsmith_add_vec2_i32(u_input.b.xw, vec2<i32>(1i, 1i)), Struct_1(~vec4<u32>(24189u, 10803u, 4294967295u, 72909u), vec4<bool>(true, true, true, false), _wgslsmith_sub_vec4_i32(u_input.b, u_input.b), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1132f, 1000f, -1186f)), u_input.c)), !vec2<bool>(u_input.a < u_input.a, true), _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(-vec2<i32>(0i, u_input.d), vec2<i32>(u_input.d, u_input.a), u_input.b.xz), ~_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b.x, 2147483647i), u_input.b.wy)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1032f, 242f), -155f, true)))))), 1699f);
    global1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1047f)))));
    return !select(vec2<bool>(func_3(-vec2<i32>(u_input.d, u_input.a), Struct_1(vec4<u32>(28493u, u_input.e.x, u_input.e.x, u_input.c), vec4<bool>(false, false, true, false), vec4<i32>(u_input.b.x, 2147483647i, u_input.b.x, u_input.b.x), var_0.xww, 12786u)).x, select(true, 4294967295u < u_input.c, true)), vec2<bool>(true, true), any(vec3<bool>(true, true, true)));
}

fn func_1() -> vec4<u32> {
    var var_0 = all(!(!select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), false), vec3<bool>(true, true, true), all(vec3<bool>(false, false, true)))));
    var_0 = all(select(func_2(), !vec2<bool>(false, u_input.c <= u_input.c), vec2<bool>(true, true)));
    let var_1 = u_input.a;
    let var_2 = all(vec4<bool>(all(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), false)) != true, !(-var_1 > u_input.b.x), !select(true, u_input.c >= u_input.c, true), any(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)))));
    var var_3 = true;
    return reverseBits(_wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.e.x, 0u, u_input.e.x, 23289u), vec4<u32>(countOneBits(1u), ~u_input.c, u_input.c ^ u_input.c, u_input.c))) | _wgslsmith_mod_vec4_u32(firstTrailingBit(abs(vec4<u32>(u_input.e.x, u_input.e.x, 38425u, 0u) ^ vec4<u32>(47078u, u_input.c, u_input.c, u_input.e.x))), firstTrailingBit(vec4<u32>(4294967295u, 49094u, 18556u, _wgslsmith_dot_vec4_u32(vec4<u32>(18004u, u_input.c, 10887u, u_input.e.x), vec4<u32>(0u, u_input.c, 0u, 1u)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1000f;
    let var_1 = Struct_1(select(min(countOneBits(func_1()), vec4<u32>(24010u << (1u % 32u), ~15895u, u_input.c, u_input.c)), _wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(func_1(), vec4<u32>(153108u, 4294967295u, 4294967295u, u_input.c)), vec4<u32>(u_input.c | 37653u, ~36106u, firstTrailingBit(u_input.c), _wgslsmith_dot_vec2_u32(u_input.e, vec2<u32>(u_input.c, u_input.c)))), any(vec3<bool>(true, true, true))), !select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), all(vec3<bool>(false, false, true))), select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), false), vec4<bool>(true, true, false, false), func_3(u_input.b.yw, Struct_1(vec4<u32>(u_input.e.x, u_input.c, u_input.e.x, u_input.c), vec4<bool>(false, true, true, false), vec4<i32>(u_input.b.x, u_input.a, u_input.a, u_input.d), vec3<f32>(-1774f, 1235f, 222f), 21473u)).x), true), vec4<i32>(firstTrailingBit(-2147483647i) ^ u_input.b.x, u_input.d, firstTrailingBit(_wgslsmith_mult_i32(u_input.b.x, 1i) >> ((u_input.e.x ^ 1u) % 32u)), -76070i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1264f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), 1433f)), u_input.c);
    let var_2 = 4294967295u;
    let var_3 = ~firstTrailingBit(_wgslsmith_clamp_vec2_u32(~var_1.a.ww, u_input.e, var_1.a.xw));
    var var_4 = _wgslsmith_div_vec3_i32(u_input.b.wyz, vec3<i32>(u_input.d, var_1.c.x, _wgslsmith_dot_vec2_i32(vec2<i32>(countOneBits(u_input.d), countOneBits(-1i)), -u_input.b.yy)));
    let x = u_input.a;
    s_output = StorageBuffer(select(u_input.b.zw, var_1.c.xw, vec2<bool>(func_3(var_4.yz << (vec2<u32>(var_2, var_3.x) % vec2<u32>(32u)), Struct_1(vec4<u32>(0u, var_2, var_2, var_3.x), var_1.b, u_input.b, var_1.d, 42742u)).x, var_1.b.x)), vec4<u32>(var_1.a.x, u_input.e.x, 12059u, var_1.e), ~reverseBits(~(~var_2)));
}

