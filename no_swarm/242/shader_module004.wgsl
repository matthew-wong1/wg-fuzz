struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: vec2<bool>,
    e: vec3<bool>,
}

struct Struct_5 {
    a: Struct_2,
    b: vec3<u32>,
    c: vec4<u32>,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<bool, 14> = array<bool, 14>(false, false, true, false, false, false, true, false, false, false, false, true, false, true);

var<private> global2: u32 = 25293u;

var<private> global3: array<Struct_2, 27> = array<Struct_2, 27>(Struct_2(Struct_1(vec4<f32>(-993f, -224f, -1275f, -914f), -927f, vec4<i32>(70200i, 2256i, 2147483647i, 2243i))), Struct_2(Struct_1(vec4<f32>(-650f, 2028f, 706f, -1688f), 695f, vec4<i32>(-69824i, 1i, 21270i, 0i))), Struct_2(Struct_1(vec4<f32>(-1838f, 985f, 2708f, 1288f), -124f, vec4<i32>(0i, 20375i, 0i, 7453i))), Struct_2(Struct_1(vec4<f32>(320f, 240f, 367f, 973f), -1353f, vec4<i32>(2147483647i, 1i, 1i, 10749i))), Struct_2(Struct_1(vec4<f32>(-596f, -257f, -1000f, 150f), -866f, vec4<i32>(1i, -46017i, 32881i, -43708i))), Struct_2(Struct_1(vec4<f32>(226f, 1794f, -1405f, 431f), 951f, vec4<i32>(-22192i, 1i, -32799i, 10947i))), Struct_2(Struct_1(vec4<f32>(-2611f, 1510f, 1537f, 1000f), -1000f, vec4<i32>(-1i, -1i, 0i, 34879i))), Struct_2(Struct_1(vec4<f32>(-1000f, -841f, 350f, -561f), -450f, vec4<i32>(1i, -1i, 8387i, -21646i))), Struct_2(Struct_1(vec4<f32>(1846f, 1021f, 1999f, -1000f), 1072f, vec4<i32>(1i, -24659i, 0i, 16348i))), Struct_2(Struct_1(vec4<f32>(1684f, -945f, 383f, 357f), 657f, vec4<i32>(79247i, 25437i, 2147483647i, -27097i))), Struct_2(Struct_1(vec4<f32>(147f, 1037f, 404f, 445f), -563f, vec4<i32>(-12564i, 41893i, -43480i, i32(-2147483648)))), Struct_2(Struct_1(vec4<f32>(1000f, 1499f, -1648f, 526f), 1714f, vec4<i32>(1i, i32(-2147483648), 19189i, 28214i))), Struct_2(Struct_1(vec4<f32>(1359f, -113f, -308f, -1463f), -113f, vec4<i32>(2147483647i, 53200i, -15198i, -1i))), Struct_2(Struct_1(vec4<f32>(-114f, -1348f, 1229f, -535f), -2055f, vec4<i32>(7292i, 0i, 2147483647i, -1i))), Struct_2(Struct_1(vec4<f32>(-947f, -1471f, 965f, -1899f), 1022f, vec4<i32>(-22988i, 24177i, -1i, 41490i))), Struct_2(Struct_1(vec4<f32>(-921f, -1689f, -132f, -872f), -1064f, vec4<i32>(13249i, -40184i, -37631i, 0i))), Struct_2(Struct_1(vec4<f32>(384f, -698f, 163f, 819f), -274f, vec4<i32>(-1i, 40787i, -1i, -46257i))), Struct_2(Struct_1(vec4<f32>(-1713f, -1144f, 422f, -747f), 1494f, vec4<i32>(2147483647i, 16943i, -1i, -1i))), Struct_2(Struct_1(vec4<f32>(1221f, 2565f, 972f, 295f), 930f, vec4<i32>(1i, 1i, 22387i, -1i))), Struct_2(Struct_1(vec4<f32>(-357f, -955f, 1804f, 1689f), -3943f, vec4<i32>(-1i, 7067i, 13133i, i32(-2147483648)))), Struct_2(Struct_1(vec4<f32>(-479f, 796f, 606f, -739f), -1000f, vec4<i32>(-8042i, 18023i, 1i, 49182i))), Struct_2(Struct_1(vec4<f32>(-610f, -906f, 1000f, -141f), 331f, vec4<i32>(0i, -26008i, 0i, i32(-2147483648)))), Struct_2(Struct_1(vec4<f32>(-388f, 1000f, 1000f, -673f), -817f, vec4<i32>(9500i, 0i, 1i, 55624i))), Struct_2(Struct_1(vec4<f32>(951f, -358f, -1301f, 1818f), 3071f, vec4<i32>(-42165i, 39825i, 10390i, -1i))), Struct_2(Struct_1(vec4<f32>(-1615f, -509f, 350f, 776f), -1617f, vec4<i32>(2147483647i, 1i, -2159i, -46090i))), Struct_2(Struct_1(vec4<f32>(201f, 1000f, -1608f, 1288f), -1322f, vec4<i32>(34138i, 0i, 38929i, -31179i))), Struct_2(Struct_1(vec4<f32>(-248f, -1000f, 1155f, -220f), 471f, vec4<i32>(2147483647i, 6344i, -67137i, 15076i))));

var<private> global4: vec4<bool> = vec4<bool>(true, false, false, true);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec4<f32>) -> f32 {
    global0 = true;
    global2 = u_input.b.x;
    global0 = !all(!vec4<bool>(!global1[_wgslsmith_index_u32(46017u, 14u)], any(global4.wzz), !global1[_wgslsmith_index_u32(u_input.c, 14u)], !global1[_wgslsmith_index_u32(u_input.c, 14u)]));
    var var_0 = global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~0u, select(13384u, _wgslsmith_add_u32(12614u, ~21217u), global1[_wgslsmith_index_u32(~72016u, 14u)] | false), u_input.b.x) & u_input.b.x, 27u)];
    var var_1 = -_wgslsmith_sub_i32(-abs(45646i), -(~(-21244i)));
    return -1148f;
}

fn func_2(arg_0: vec2<u32>) -> bool {
    global4 = !(!(!(!select(vec4<bool>(global1[_wgslsmith_index_u32(16827u, 14u)], global1[_wgslsmith_index_u32(arg_0.x, 14u)], global4.x, false), vec4<bool>(global1[_wgslsmith_index_u32(arg_0.x, 14u)], true, true, false), vec4<bool>(false, true, global1[_wgslsmith_index_u32(52138u, 14u)], global1[_wgslsmith_index_u32(u_input.c, 14u)])))));
    var var_0 = u_input.b.zxz;
    var var_1 = Struct_4(vec2<i32>(u_input.e, ~_wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.d, -1i), abs(vec2<i32>(7216i, u_input.a)))), u_input.d, -2147483647i, select(global4.xz, global4.xx, true), vec3<bool>(global4.x, global4.x, all(!vec4<bool>(true, global4.x, true, false)) & !(!global4.x)));
    let var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1193f, 387f, -870f, 428f), vec4<f32>(-444f, 1985f, -775f, 1573f))))), 658f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -584f)))));
    var var_3 = -2147483647i;
    return var_1.b <= 6857i;
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: vec3<bool>) -> Struct_5 {
    let var_0 = ~vec2<i32>(0i, ~_wgslsmith_mod_i32(_wgslsmith_mod_i32(u_input.d, -34061i), u_input.a));
    var var_1 = arg_1;
    var_1 = firstLeadingBit(8661i);
    global1 = array<bool, 14>();
    global3 = array<Struct_2, 27>();
    return Struct_5(global3[_wgslsmith_index_u32(u_input.c & ~(~1u >> (_wgslsmith_add_u32(u_input.c, u_input.b.x) % 32u)), 27u)], select(u_input.b.wyy ^ vec3<u32>(~u_input.b.x, max(1u, u_input.c), 0u), _wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(46882u, u_input.b.x, 35738u), u_input.b.yyz), ~vec3<u32>(u_input.b.x, u_input.b.x, u_input.c)), global4.xxz), u_input.b, Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1492f, -1201f, 396f, 1167f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -852f, -113f, 1106f)))), _wgslsmith_f_op_f32(trunc(1f)), vec4<i32>(var_0.x, -_wgslsmith_sub_i32(-10171i, var_0.x), ~u_input.a, arg_1)), min(arg_1, reverseBits(i32(-1i) * -2147483647i)));
}

fn func_5(arg_0: f32, arg_1: Struct_5, arg_2: Struct_2) -> Struct_2 {
    var var_0 = !all(!vec4<bool>(!global1[_wgslsmith_index_u32(0u, 14u)], global1[_wgslsmith_index_u32(1u, 14u)], global1[_wgslsmith_index_u32(arg_1.b.x, 14u)], true));
    let var_1 = vec4<bool>(_wgslsmith_f_op_f32(round(arg_1.d.a.x)) == -1962f, true, abs(_wgslsmith_dot_vec4_i32(-arg_1.a.a.c, vec4<i32>(arg_1.d.c.x, 39287i, arg_2.a.c.x, arg_1.a.a.c.x))) < _wgslsmith_mult_i32(max(u_input.e, -2147483647i) >> (~arg_1.c.x % 32u), -abs(arg_1.d.c.x)), any(global4.wyz));
    let var_2 = true;
    global0 = !(arg_0 <= _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0, arg_0)));
    global4 = vec4<bool>(any(select(vec4<bool>(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.c, 4294967295u), 14u)], !global4.x, false, !var_1.x), !select(vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 14u)], var_2, var_2, true), var_1, false), select(var_1, var_1, !var_1.x))), !(!global4.x), global1[_wgslsmith_index_u32(~_wgslsmith_add_u32(arg_1.b.x, countOneBits(~19059u)), 14u)], !global1[_wgslsmith_index_u32(min(1u >> (~4294967295u % 32u), _wgslsmith_dot_vec3_u32(~vec3<u32>(25536u, u_input.b.x, u_input.b.x), u_input.b.xxy)), 14u)]);
    return arg_2;
}

fn func_1() -> u32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -565f));
    let var_1 = Struct_5(func_5(222f, func_4(!func_2(vec2<u32>(0u, u_input.b.x)), u_input.a ^ 35991i, vec3<bool>(false, true, u_input.a >= u_input.e)), Struct_2(func_4(select(false, false, global1[_wgslsmith_index_u32(u_input.b.x, 14u)]), -48699i, !global4.xzy).a.a)), ~(~u_input.b.wzy), vec4<u32>(131580u, 1u, u_input.b.x, abs(~u_input.b.x)) ^ ~reverseBits(firstLeadingBit(vec4<u32>(u_input.b.x, u_input.c, u_input.c, 0u))), func_5(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(var_0)), _wgslsmith_div_f32(-692f, _wgslsmith_f_op_f32(step(-853f, -564f))))), Struct_5(Struct_2(Struct_1(vec4<f32>(-1156f, 224f, var_0, 970f), 1688f, vec4<i32>(u_input.a, u_input.a, u_input.e, 0i))), vec3<u32>(u_input.c, ~u_input.c, u_input.c ^ u_input.b.x), min(u_input.b, _wgslsmith_add_vec4_u32(vec4<u32>(56185u, u_input.c, 0u, u_input.b.x), vec4<u32>(u_input.c, u_input.c, 12841u, u_input.b.x))), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, -258f, var_0, var_0) * vec4<f32>(var_0, 2049f, -124f, var_0)), var_0, abs(vec4<i32>(2086i, u_input.d, u_input.a, u_input.a))), _wgslsmith_sub_i32(u_input.d, u_input.a)), Struct_2(Struct_1(vec4<f32>(var_0, var_0, -1000f, var_0), var_0, ~vec4<i32>(49310i, u_input.d, 24883i, u_input.e)))).a, u_input.e);
    global0 = var_1.a.a.c.x <= min(_wgslsmith_mult_i32(u_input.a, _wgslsmith_clamp_i32(~u_input.a, -var_1.e, -22706i)), countOneBits(-var_1.d.c.x));
    let var_2 = var_1.a.a.a.yww;
    var var_3 = ~abs(vec3<u32>(49989u, ~var_1.c.x, ~var_1.c.x));
    return u_input.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_1();
    var var_0 = Struct_2(func_4(func_4(false, -u_input.e, select(vec3<bool>(global4.x, global4.x, global1[_wgslsmith_index_u32(4062u, 14u)]), global4.www, global4.xww)).c.x <= _wgslsmith_div_u32(firstTrailingBit(1u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 72783u), vec2<u32>(1u, u_input.b.x))), 1i, vec3<bool>(true, all(vec3<bool>(global4.x, global4.x, false)), true)).d);
    var var_1 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-func_4(true, var_0.a.c.x, select(select(global4.yxw, global4.xzw, false), select(global4.xxx, global4.xzx, global4.zwx), true)).d.a.xx)));
    var var_2 = countOneBits(u_input.b.yz);
    var var_3 = global3[_wgslsmith_index_u32(~(~4294967295u), 27u)];
    let var_4 = min(_wgslsmith_div_vec2_i32(max(abs(var_0.a.c.xy), var_3.a.c.wz), -(~vec2<i32>(var_3.a.c.x, var_3.a.c.x))), _wgslsmith_sub_vec2_i32(vec2<i32>(1i, -2147483647i & _wgslsmith_dot_vec4_i32(var_0.a.c, vec4<i32>(19913i, -1i, var_3.a.c.x, 34476i))), vec2<i32>(u_input.d, -2147483647i)));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_sub_i32(-261i, ~2147483647i));
}

