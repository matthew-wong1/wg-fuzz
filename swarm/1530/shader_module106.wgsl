struct Struct_1 {
    a: f32,
    b: u32,
    c: vec2<i32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec4<bool>,
    c: f32,
    d: bool,
    e: f32,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: i32;

var<private> global2: array<Struct_2, 26> = array<Struct_2, 26>(Struct_2(vec3<f32>(1042f, -425f, -526f), vec4<bool>(false, false, true, true), -847f, true, -1201f), Struct_2(vec3<f32>(-1727f, -1315f, -257f), vec4<bool>(true, true, true, true), 2255f, false, -1101f), Struct_2(vec3<f32>(1147f, 933f, 1611f), vec4<bool>(false, true, true, true), 128f, true, -507f), Struct_2(vec3<f32>(-734f, -1000f, 326f), vec4<bool>(false, false, false, true), 2156f, false, -389f), Struct_2(vec3<f32>(518f, 873f, -360f), vec4<bool>(false, false, true, false), -1547f, false, 301f), Struct_2(vec3<f32>(1090f, -1840f, 1765f), vec4<bool>(false, true, false, false), -148f, true, -731f), Struct_2(vec3<f32>(252f, 1398f, 1009f), vec4<bool>(true, false, false, false), -1441f, true, 675f), Struct_2(vec3<f32>(1492f, 1339f, 2604f), vec4<bool>(true, true, true, true), -555f, false, 111f), Struct_2(vec3<f32>(-414f, -344f, 1000f), vec4<bool>(false, true, true, false), 1024f, false, 1096f), Struct_2(vec3<f32>(421f, 666f, 863f), vec4<bool>(false, true, false, false), 1000f, false, 195f), Struct_2(vec3<f32>(-114f, -494f, 169f), vec4<bool>(false, true, true, true), -1000f, false, -989f), Struct_2(vec3<f32>(1592f, 1508f, -417f), vec4<bool>(false, true, true, false), 1049f, true, -348f), Struct_2(vec3<f32>(2066f, -1282f, -290f), vec4<bool>(true, false, true, true), 924f, false, 1539f), Struct_2(vec3<f32>(-1910f, -1545f, 1847f), vec4<bool>(false, true, true, true), 649f, false, -1907f), Struct_2(vec3<f32>(1510f, -487f, -540f), vec4<bool>(true, false, true, true), 2126f, false, 1741f), Struct_2(vec3<f32>(-554f, 2008f, 2193f), vec4<bool>(true, true, true, true), -644f, true, 550f), Struct_2(vec3<f32>(450f, 766f, -393f), vec4<bool>(false, true, false, true), 999f, true, -1941f), Struct_2(vec3<f32>(1000f, 782f, -1301f), vec4<bool>(true, true, false, false), -765f, true, -968f), Struct_2(vec3<f32>(1000f, -1833f, -1132f), vec4<bool>(false, true, false, true), 1000f, true, -1000f), Struct_2(vec3<f32>(1242f, -933f, 608f), vec4<bool>(false, true, false, false), -858f, true, 766f), Struct_2(vec3<f32>(-680f, -992f, 281f), vec4<bool>(true, true, false, false), 522f, false, -895f), Struct_2(vec3<f32>(-922f, -368f, -615f), vec4<bool>(true, true, true, true), 1005f, false, 524f), Struct_2(vec3<f32>(-185f, -1563f, 465f), vec4<bool>(false, false, true, false), -1223f, true, -1398f), Struct_2(vec3<f32>(-617f, -1633f, 439f), vec4<bool>(true, true, true, false), -703f, false, 250f), Struct_2(vec3<f32>(645f, -1000f, 517f), vec4<bool>(true, false, true, false), 942f, false, 566f), Struct_2(vec3<f32>(201f, -1950f, 1000f), vec4<bool>(true, true, true, true), -801f, true, -345f));

var<private> global3: Struct_2 = Struct_2(vec3<f32>(278f, 505f, -1074f), vec4<bool>(true, false, true, true), -1735f, false, 1323f);

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec4<u32>, arg_2: i32) -> Struct_1 {
    let var_0 = Struct_2(arg_0.zxx, select(global0.d, global0.d, true), global3.e, select((global0.c.x ^ global0.c.x) ^ ~global0.c.x, arg_2, global3.b.x) <= -1i, global3.c);
    let var_1 = var_0;
    let var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(-global3.a), global0.d, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x - -1702f)))), false, -541f);
    global2 = array<Struct_2, 26>();
    global1 = -13077i;
    return Struct_1(-2492f, global0.b, global0.c, vec4<bool>(true, global0.c.x < ~_wgslsmith_add_i32(arg_2, -29396i), any(var_2.b), true));
}

fn func_3() -> u32 {
    let var_0 = -(~_wgslsmith_div_vec2_i32(select(global0.c, vec2<i32>(22898i, global0.c.x), false), firstLeadingBit(-global0.c)));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.a, _wgslsmith_f_op_f32(abs(397f))))) - _wgslsmith_f_op_f32(global3.e * global3.e));
    global2 = array<Struct_2, 26>();
    var var_2 = ~u_input.a;
    global3 = Struct_2(vec3<f32>(global3.c, _wgslsmith_f_op_f32(-global3.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1638f - global0.a) - -1225f) * global0.a)), select(!global3.b, !vec4<bool>(func_2(vec4<f32>(global0.a, -526f, -1000f, -1270f), vec4<u32>(25289u, 12539u, global0.b, global0.b), 8829i).d.x, select(false, true, global3.d), false, true), vec4<bool>(global3.b.x, any(global0.d.zx), any(!global3.b), !(!global0.d.x))), _wgslsmith_f_op_f32(global3.c * 871f), false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global0.a * 298f), -1788f)), func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.a.x, global0.a, 495f, global3.a.x)), select(vec4<u32>(u_input.a, u_input.a, 23028u, 48924u), vec4<u32>(global0.b, 20305u, u_input.a, u_input.a), vec4<bool>(true, global0.d.x, global3.b.x, false)), _wgslsmith_add_i32(global0.c.x, global0.c.x)).a)) + global0.a));
    return 31304u >> ((~u_input.a ^ ~(~global0.b)) % 32u);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: u32, arg_3: u32) -> f32 {
    var var_0 = Struct_3(arg_1.a);
    return _wgslsmith_f_op_f32(-arg_0.a);
}

fn func_1(arg_0: u32, arg_1: vec3<i32>, arg_2: vec4<i32>) -> i32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a) * _wgslsmith_f_op_f32(func_4(func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-587f, -1108f, -670f, global0.a)), ~vec4<u32>(1u, arg_0, 1u, u_input.a), select(-6329i, 1i, global3.d)), Struct_3(vec4<u32>(arg_0, 46505u, 76800u, 0u)), reverseBits(countOneBits(19426u)), func_3()))), 4294967295u, global0.c, func_2(vec4<f32>(_wgslsmith_f_op_f32(min(-1910f, _wgslsmith_f_op_f32(step(-1000f, global3.c)))), _wgslsmith_f_op_f32(-global0.a), global0.a, global3.a.x), select(vec4<u32>(~arg_0, 37054u, _wgslsmith_div_u32(0u, u_input.a), 0u), vec4<u32>(global0.b << (arg_0 % 32u), 65697u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, global0.b), vec2<u32>(4294967295u, u_input.a)), global0.b), global3.b.x), ~(~(arg_1.x | 1i))).d);
    global3 = global2[_wgslsmith_index_u32(~_wgslsmith_mult_u32(0u, ~global0.b), 26u)];
    let var_1 = -firstTrailingBit(~(_wgslsmith_clamp_vec2_i32(global0.c, var_0.c, vec2<i32>(-9076i, arg_2.x)) << (vec2<u32>(1u, 1u) % vec2<u32>(32u))));
    let var_2 = (_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(527f - 1005f), 684f)))) < var_0.a) & any(global3.b.yz);
    global1 = var_1.x ^ 46584i;
    return arg_2.x;
}

fn func_5(arg_0: i32) -> Struct_2 {
    var var_0 = -(countOneBits(_wgslsmith_mult_vec2_i32(-vec2<i32>(15586i, 34259i), abs(global0.c))) & func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1285f, global3.a.x, -191f, 217f) * vec4<f32>(311f, -435f, 132f, -939f))), ~vec4<u32>(70199u, 1u, 0u, global0.b), -1i).c);
    global1 = -global0.c.x;
    let var_1 = abs(global0.b) <= abs(u_input.a);
    global2 = array<Struct_2, 26>();
    var var_2 = Struct_3(min((~vec4<u32>(u_input.a, 0u, 63740u, u_input.a) & firstLeadingBit(vec4<u32>(u_input.a, global0.b, u_input.a, 0u))) << ((vec4<u32>(global0.b, 0u, 11315u, 0u) ^ vec4<u32>(u_input.a, 1u, global0.b, global0.b)) % vec4<u32>(32u)), vec4<u32>(min(global0.b, 5012u), ~global0.b, 34084u, 1u) & vec4<u32>(_wgslsmith_mult_u32(36365u, global0.b), global0.b, reverseBits(4294967295u), global0.b)));
    return Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-209f, 491f, -850f))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a, -695f, 1522f))))), select(select(select(!global0.d, !vec4<bool>(true, global0.d.x, false, false), global3.b), global0.d, vec4<bool>(all(vec2<bool>(global0.d.x, var_1)), any(vec2<bool>(false, false)), !var_1, true)), func_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1584f, 1106f, 864f, -1024f))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(185f, -1883f, 1112f, 387f)))), var_2.a, 12698i).d, (true || (global3.d && true)) && var_1), _wgslsmith_f_op_f32(-global3.c), all(!(!global0.d.zy)), global3.c);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = global2[_wgslsmith_index_u32(1u, 26u)];
    global3 = func_5(func_1(_wgslsmith_div_u32(firstLeadingBit(global0.b), ~(~u_input.a)), -vec3<i32>(21079i, _wgslsmith_clamp_i32(global0.c.x, -1i, global0.c.x), global0.c.x), vec4<i32>(-8639i, global0.c.x, ~global0.c.x, _wgslsmith_mult_i32(-24842i, global0.c.x)) ^ -vec4<i32>(-13852i, global0.c.x, -89227i, 2147483647i)));
    var var_0 = vec3<bool>(func_5(global0.c.x).d, global3.d, !all(!func_2(vec4<f32>(global3.e, global3.c, -1000f, global0.a), vec4<u32>(15176u, 34392u, u_input.a, 27635u), -2147483647i).d.zxw));
    let var_1 = vec3<bool>(!(!all(global0.d)), var_0.x, !all(vec3<bool>(var_0.x, all(vec2<bool>(global3.b.x, global3.b.x)), true)));
    let var_2 = func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global0.a, _wgslsmith_f_op_f32(global3.a.x + 171f), 316f, _wgslsmith_f_op_f32(exp2(global3.e))), vec4<f32>(global0.a, -894f, _wgslsmith_f_op_f32(abs(global0.a)), global0.a)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a, global0.a, -1318f, global3.c)))))), vec4<u32>(_wgslsmith_mod_u32(u_input.a, 66627u), reverseBits(17920u & u_input.a), u_input.a, ~global0.b), 2724i).d.zzw;
    let var_3 = Struct_3(_wgslsmith_clamp_vec4_u32(~(~vec4<u32>(60824u, 0u, u_input.a, 49067u)), vec4<u32>(reverseBits(4294967295u), 57779u, 1955u, 0u), abs(abs(countOneBits(vec4<u32>(u_input.a, 42869u, 1u, u_input.a))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -638f)) + -1039f) - _wgslsmith_f_op_f32(func_4(Struct_1(global3.e, global0.b, vec2<i32>(global0.c.x, 41339i), !global3.b), Struct_3(vec4<u32>(105330u, 724u, 0u, var_3.a.x)), 4294967295u, ~func_3()))), -993f);
}

