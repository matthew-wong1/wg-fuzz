struct Struct_1 {
    a: vec4<i32>,
    b: vec3<i32>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec4<f32>,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: vec2<bool>,
    d: Struct_2,
    e: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<f32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<vec4<u32>, 16> = array<vec4<u32>, 16>(vec4<u32>(4294967295u, 17893u, 827u, 4294967295u), vec4<u32>(0u, 35632u, 4294967295u, 9226u), vec4<u32>(20501u, 0u, 1u, 1u), vec4<u32>(42144u, 4294967295u, 1u, 4294967295u), vec4<u32>(51443u, 4294967295u, 1u, 4294967295u), vec4<u32>(4294967295u, 4294967295u, 16969u, 1u), vec4<u32>(52510u, 72242u, 0u, 4294967295u), vec4<u32>(1u, 0u, 49859u, 0u), vec4<u32>(1u, 4294967295u, 108156u, 0u), vec4<u32>(24874u, 64084u, 4294967295u, 0u), vec4<u32>(54056u, 1u, 14400u, 4294967295u), vec4<u32>(4294967295u, 20578u, 1u, 4294967295u), vec4<u32>(1u, 4294967295u, 3206u, 4294967295u), vec4<u32>(48141u, 77399u, 0u, 138925u), vec4<u32>(4840u, 1u, 5434u, 4294967295u), vec4<u32>(11133u, 60198u, 1u, 0u));

var<private> global2: array<vec4<f32>, 30>;

var<private> global3: array<Struct_3, 24> = array<Struct_3, 24>(Struct_3(1u, 0i, vec2<bool>(false, true), Struct_2(Struct_1(vec4<i32>(i32(-2147483648), -707i, -25216i, 8385i), vec3<i32>(i32(-2147483648), 2147483647i, i32(-2147483648)), false), -520f, vec4<f32>(1523f, -1000f, -1442f, 1015f)), -1834f), Struct_3(7242u, 2147483647i, vec2<bool>(true, false), Struct_2(Struct_1(vec4<i32>(44026i, -46360i, 2147483647i, 50638i), vec3<i32>(36716i, -11929i, 0i), false), -522f, vec4<f32>(267f, 287f, 513f, -1106f)), -1563f), Struct_3(4294967295u, 75922i, vec2<bool>(true, true), Struct_2(Struct_1(vec4<i32>(10629i, -24345i, 14908i, 21622i), vec3<i32>(1i, -3448i, 0i), false), 1479f, vec4<f32>(-480f, -1672f, 583f, -1000f)), -1023f), Struct_3(40540u, -14304i, vec2<bool>(false, false), Struct_2(Struct_1(vec4<i32>(12357i, 4028i, -29516i, -9112i), vec3<i32>(2147483647i, 2176i, 19484i), true), -419f, vec4<f32>(277f, 237f, -819f, -277f)), -2054f), Struct_3(10393u, 1i, vec2<bool>(true, true), Struct_2(Struct_1(vec4<i32>(-30906i, 1i, -19731i, 26731i), vec3<i32>(i32(-2147483648), -2773i, 1i), true), 917f, vec4<f32>(-560f, -382f, -1922f, 1489f)), 2072f), Struct_3(18191u, 110923i, vec2<bool>(false, true), Struct_2(Struct_1(vec4<i32>(1i, -48542i, i32(-2147483648), 2147483647i), vec3<i32>(7883i, -31842i, 2147483647i), false), -365f, vec4<f32>(887f, -676f, 572f, 1301f)), 1686f), Struct_3(4294967295u, 55690i, vec2<bool>(true, true), Struct_2(Struct_1(vec4<i32>(2147483647i, 2147483647i, -17093i, 62355i), vec3<i32>(-8424i, 14880i, 30125i), false), 114f, vec4<f32>(1000f, -523f, -350f, -1160f)), 778f), Struct_3(4294967295u, -1i, vec2<bool>(false, false), Struct_2(Struct_1(vec4<i32>(49973i, -14558i, -6453i, i32(-2147483648)), vec3<i32>(-3193i, -1i, -72214i), true), -773f, vec4<f32>(-715f, -903f, -1977f, -1749f)), -880f), Struct_3(0u, 1i, vec2<bool>(false, true), Struct_2(Struct_1(vec4<i32>(i32(-2147483648), -1i, 6789i, 46733i), vec3<i32>(2147483647i, 1i, 14638i), false), -967f, vec4<f32>(-758f, 1000f, -412f, -260f)), -949f), Struct_3(52144u, 1i, vec2<bool>(false, true), Struct_2(Struct_1(vec4<i32>(55687i, 4677i, 1i, 4432i), vec3<i32>(8207i, 2147483647i, 2168i), false), 320f, vec4<f32>(1000f, -843f, 110f, -1205f)), 1780f), Struct_3(0u, -19973i, vec2<bool>(false, true), Struct_2(Struct_1(vec4<i32>(16673i, 2147483647i, 0i, -1i), vec3<i32>(-1i, 9557i, 16514i), true), -200f, vec4<f32>(112f, 632f, -765f, 788f)), 777f), Struct_3(4294967295u, -70565i, vec2<bool>(false, true), Struct_2(Struct_1(vec4<i32>(2147483647i, -6459i, -31853i, 0i), vec3<i32>(10329i, -20868i, 26580i), false), 513f, vec4<f32>(-827f, -1495f, -1000f, 1000f)), 884f), Struct_3(0u, -38360i, vec2<bool>(false, true), Struct_2(Struct_1(vec4<i32>(-24695i, 0i, -40030i, 2147483647i), vec3<i32>(1i, 0i, 29055i), true), -270f, vec4<f32>(-834f, -677f, -1203f, 1000f)), -1092f), Struct_3(85264u, i32(-2147483648), vec2<bool>(true, false), Struct_2(Struct_1(vec4<i32>(-45978i, 8349i, 0i, 57545i), vec3<i32>(-55608i, 2147483647i, 2147483647i), false), -304f, vec4<f32>(-526f, 687f, 738f, 1000f)), 551f), Struct_3(82683u, 1i, vec2<bool>(false, true), Struct_2(Struct_1(vec4<i32>(-21552i, 1i, 1i, 2147483647i), vec3<i32>(0i, -26556i, 0i), false), -1210f, vec4<f32>(415f, -962f, 1000f, 184f)), 137f), Struct_3(1u, 2147483647i, vec2<bool>(false, true), Struct_2(Struct_1(vec4<i32>(-1i, -21653i, 15683i, 2147483647i), vec3<i32>(-27178i, 6638i, 0i), false), 127f, vec4<f32>(413f, 686f, -597f, -381f)), 785f), Struct_3(52894u, 43057i, vec2<bool>(false, false), Struct_2(Struct_1(vec4<i32>(2147483647i, 1i, 2147483647i, 0i), vec3<i32>(-18433i, 30951i, 0i), true), -1000f, vec4<f32>(-1830f, -766f, 761f, -186f)), -909f), Struct_3(4294967295u, 35856i, vec2<bool>(true, false), Struct_2(Struct_1(vec4<i32>(1i, -13524i, i32(-2147483648), 7299i), vec3<i32>(826i, -31654i, -42212i), true), 1337f, vec4<f32>(249f, -1346f, -497f, 1684f)), -861f), Struct_3(35331u, 304i, vec2<bool>(false, true), Struct_2(Struct_1(vec4<i32>(2147483647i, -999i, 2147483647i, 24787i), vec3<i32>(1i, 1i, -1i), false), 656f, vec4<f32>(554f, -1354f, -1000f, 1289f)), -252f), Struct_3(1u, 1i, vec2<bool>(true, true), Struct_2(Struct_1(vec4<i32>(-24634i, 47610i, -1i, 1i), vec3<i32>(31794i, -42550i, 1i), false), -349f, vec4<f32>(-879f, -806f, 834f, 443f)), 369f), Struct_3(1u, 0i, vec2<bool>(false, true), Struct_2(Struct_1(vec4<i32>(2165i, -36031i, 2147483647i, -1i), vec3<i32>(-39678i, -53028i, 8378i), false), 1601f, vec4<f32>(-467f, -811f, 2059f, -1562f)), 562f), Struct_3(4294967295u, 25600i, vec2<bool>(true, true), Struct_2(Struct_1(vec4<i32>(12804i, 1i, i32(-2147483648), 1i), vec3<i32>(i32(-2147483648), 2147483647i, -32023i), true), -231f, vec4<f32>(-476f, -587f, 837f, -1374f)), 1748f), Struct_3(20776u, -22100i, vec2<bool>(false, false), Struct_2(Struct_1(vec4<i32>(-21196i, 2147483647i, 1i, 17167i), vec3<i32>(2147483647i, -38172i, 0i), false), 1190f, vec4<f32>(1272f, 361f, -1251f, -1390f)), 756f), Struct_3(622u, 1i, vec2<bool>(false, false), Struct_2(Struct_1(vec4<i32>(19263i, -5067i, i32(-2147483648), -2417i), vec3<i32>(1i, 57395i, -29659i), false), -1436f, vec4<f32>(1820f, -1354f, -462f, -116f)), 1524f));

var<private> global4: array<vec3<i32>, 3> = array<vec3<i32>, 3>(vec3<i32>(-53471i, -24112i, -31273i), vec3<i32>(-42836i, i32(-2147483648), 1i), vec3<i32>(-34065i, -9904i, 629i));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_2) -> i32 {
    global3 = array<Struct_3, 24>();
    let var_0 = arg_2.a.a;
    global2 = array<vec4<f32>, 30>();
    var var_1 = ~(-arg_2.a.a);
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(abs(-184f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.c.x) - arg_0), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2.b * -747f), _wgslsmith_div_f32(1378f, -1173f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -231f), -117f)))), _wgslsmith_f_op_f32(round(-918f)));
    return i32(-1i) * -(~arg_2.a.b.x);
}

fn func_2(arg_0: i32, arg_1: u32, arg_2: f32) -> vec4<i32> {
    global2 = array<vec4<f32>, 30>();
    var var_0 = !vec2<bool>(true, !all(vec2<bool>(true, false)));
    var var_1 = vec2<i32>(_wgslsmith_add_i32(-311i, -24649i), -1i) & (-u_input.a | ~vec2<i32>(u_input.b.x, arg_0));
    let var_2 = _wgslsmith_mod_u32(1u, abs(~(~_wgslsmith_mod_u32(arg_1, arg_1))));
    let var_3 = global3[_wgslsmith_index_u32(4294967295u, 24u)];
    return vec4<i32>(-_wgslsmith_mult_i32(-arg_0, firstTrailingBit(-14267i)), _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0, -19958i, arg_0) >> (vec3<u32>(arg_1, 0u, var_3.a) % vec3<u32>(32u)), _wgslsmith_add_vec3_i32(vec3<i32>(-40554i, var_1.x, -47700i), var_3.d.a.a.xwy)), min(-1i, arg_0) << (~arg_1 % 32u)), 1i, -func_3(_wgslsmith_div_f32(arg_2, 1175f), var_3.d, var_3.d, var_3.d)) ^ var_3.d.a.a;
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_1) -> Struct_2 {
    var var_0 = Struct_1(func_2(~_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(arg_1.b.yx, u_input.a, u_input.a), arg_1.a.wx), arg_0.x ^ ~(~2066u), _wgslsmith_div_f32(2280f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(284f)) - _wgslsmith_div_f32(104f, 417f)))), arg_1.a.wwy, arg_1.c);
    return Struct_2(arg_1, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-316f, 1288f)) - _wgslsmith_f_op_f32(1000f - -426f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-156f, 1218f, -446f, -187f) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-487f, -823f, 182f, -1000f)))) + global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(arg_0.x, 4294967295u) ^ ~1u, 30u)])));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<vec3<i32>, 3>();
    var var_0 = func_1(~vec3<u32>(select(17214u, _wgslsmith_dot_vec2_u32(vec2<u32>(64644u, 28739u), vec2<u32>(23059u, 4294967295u)), true), 1u, _wgslsmith_mult_u32(max(19882u, 12100u), _wgslsmith_mod_u32(4294967295u, 54654u))), Struct_1(vec4<i32>(1i, 0i, ~(-1i), ~(-1i)), global4[_wgslsmith_index_u32(45813u, 3u)], true));
    var_0 = func_1(firstLeadingBit(~(~vec3<u32>(1u, 1u, 1u))), Struct_1(vec4<i32>(-min(var_0.a.a.x, u_input.a.x), _wgslsmith_mod_i32(var_0.a.a.x, firstLeadingBit(u_input.a.x)), _wgslsmith_mod_i32(-8045i, u_input.a.x), 26384i), -vec3<i32>(var_0.a.a.x, -u_input.b.x, abs(var_0.a.b.x)), false));
    global2 = array<vec4<f32>, 30>();
    let var_1 = var_0.a;
    global1 = array<vec4<u32>, 16>();
    global2 = array<vec4<f32>, 30>();
    global2 = array<vec4<f32>, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(var_0.c.x, var_0.b), 41306u, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(func_1(vec3<u32>(13778u, 18802u, 0u), var_0.a).c.wxy, var_0.c.zww))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(var_0.c.wxx))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-var_0.c.wwz)))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1518f, 1016f, -903f)))), var_0.c.wzy), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(var_0.c.zzw + var_0.c.wyw))))), !vec3<bool>(true, var_0.a.c, true))));
}

