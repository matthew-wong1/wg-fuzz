struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: f32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: f32,
    b: f32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_3,
    c: Struct_2,
}

struct Struct_5 {
    a: bool,
    b: f32,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(0i, -5847i, -2452i, 0i);

var<private> global1: array<vec2<i32>, 24>;

var<private> global2: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(false, vec4<f32>(-905f, 1306f, 599f, -1000f), -873f, vec3<u32>(0u, 44336u, 46285u)), Struct_1(false, vec4<f32>(2083f, -379f, 609f, -1143f), -1025f, vec3<u32>(69668u, 37981u, 4294967295u)), Struct_1(false, vec4<f32>(1240f, -1695f, 1948f, 789f), 719f, vec3<u32>(36022u, 37438u, 25032u)), Struct_1(true, vec4<f32>(-652f, 1492f, 945f, 2736f), 944f, vec3<u32>(4294967295u, 31137u, 4294967295u)), Struct_1(true, vec4<f32>(1832f, -715f, 1246f, -907f), -1291f, vec3<u32>(13605u, 7905u, 15744u)), Struct_1(false, vec4<f32>(555f, 512f, -164f, -665f), -1380f, vec3<u32>(1u, 1u, 21179u)), Struct_1(false, vec4<f32>(523f, -372f, 1223f, -1000f), -1346f, vec3<u32>(1589u, 0u, 10382u)), Struct_1(true, vec4<f32>(-1032f, 2067f, 550f, 998f), 221f, vec3<u32>(17756u, 47426u, 11590u)), Struct_1(false, vec4<f32>(-459f, 1000f, 1248f, -1090f), 223f, vec3<u32>(36374u, 0u, 4294967295u)), Struct_1(true, vec4<f32>(-1000f, -1000f, -320f, -1515f), 401f, vec3<u32>(0u, 1u, 34189u)), Struct_1(false, vec4<f32>(808f, 203f, 918f, 500f), 344f, vec3<u32>(0u, 0u, 84404u)), Struct_1(true, vec4<f32>(-319f, 802f, -1901f, 953f), -1125f, vec3<u32>(4294967295u, 29804u, 37948u)), Struct_1(true, vec4<f32>(-2602f, 154f, 101f, 756f), -618f, vec3<u32>(62379u, 0u, 0u)), Struct_1(false, vec4<f32>(-1733f, -1813f, 178f, -1000f), -705f, vec3<u32>(4294967295u, 1u, 59321u)), Struct_1(false, vec4<f32>(1249f, -1000f, -1000f, 1238f), -127f, vec3<u32>(5873u, 4500u, 1u)), Struct_1(false, vec4<f32>(1722f, -833f, 578f, -1484f), -266f, vec3<u32>(4294967295u, 45502u, 1u)), Struct_1(false, vec4<f32>(971f, -436f, 1000f, 193f), 2279f, vec3<u32>(0u, 1u, 1u)), Struct_1(true, vec4<f32>(-1360f, 1024f, 1000f, -895f), -1000f, vec3<u32>(4294967295u, 1u, 1u)), Struct_1(true, vec4<f32>(1611f, 491f, 1173f, 101f), 1936f, vec3<u32>(19839u, 40275u, 0u)), Struct_1(true, vec4<f32>(124f, 522f, -345f, 1169f), -1015f, vec3<u32>(1557u, 4294967295u, 34208u)), Struct_1(false, vec4<f32>(-1840f, 444f, 101f, -1076f), -1520f, vec3<u32>(43456u, 8653u, 0u)), Struct_1(false, vec4<f32>(786f, -209f, 1143f, -1581f), 613f, vec3<u32>(4294967295u, 85558u, 174u)), Struct_1(false, vec4<f32>(-379f, -801f, -1060f, -849f), 234f, vec3<u32>(4294967295u, 4294967295u, 1u)), Struct_1(true, vec4<f32>(-599f, -355f, -332f, -241f), -628f, vec3<u32>(13057u, 31524u, 21431u)), Struct_1(true, vec4<f32>(-364f, -407f, -265f, 980f), 326f, vec3<u32>(0u, 2541u, 1u)), Struct_1(false, vec4<f32>(-476f, -1000f, -1062f, -573f), -1334f, vec3<u32>(4294967295u, 4294967295u, 1u)), Struct_1(true, vec4<f32>(816f, -1093f, -1000f, -2058f), 336f, vec3<u32>(86412u, 0u, 1u)), Struct_1(false, vec4<f32>(-200f, -1000f, 205f, 1580f), 291f, vec3<u32>(49947u, 51873u, 10176u)), Struct_1(false, vec4<f32>(-623f, 1923f, -1531f, -948f), -925f, vec3<u32>(4294967295u, 1u, 89696u)));

var<private> global3: array<vec3<u32>, 1>;

var<private> global4: array<vec4<i32>, 21> = array<vec4<i32>, 21>(vec4<i32>(-31476i, i32(-2147483648), 0i, 0i), vec4<i32>(29003i, 8172i, -28738i, 2147483647i), vec4<i32>(1i, -61960i, 8819i, -1i), vec4<i32>(-54321i, -15341i, 2147483647i, 10014i), vec4<i32>(-1i, 0i, 11884i, 1i), vec4<i32>(0i, -20167i, 24182i, -2440i), vec4<i32>(-7714i, -63341i, -1i, 13748i), vec4<i32>(-8731i, -1i, -45685i, 2147483647i), vec4<i32>(10672i, -7575i, -35322i, i32(-2147483648)), vec4<i32>(20261i, 1i, i32(-2147483648), 2147483647i), vec4<i32>(38230i, 1i, 1i, -48829i), vec4<i32>(i32(-2147483648), 1i, 2147483647i, -90485i), vec4<i32>(0i, -7895i, 1i, -19150i), vec4<i32>(52843i, -1i, 896i, -139i), vec4<i32>(2147483647i, 10964i, 9545i, 2195i), vec4<i32>(-988i, 1i, -33778i, -1i), vec4<i32>(-4078i, -41491i, -55196i, 46686i), vec4<i32>(-5781i, 2147483647i, -47206i, 1i), vec4<i32>(11583i, 0i, 1i, 1543i), vec4<i32>(16107i, 2147483647i, -1i, 8336i), vec4<i32>(1i, -1i, 1i, 40170i));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_2(arg_0: f32, arg_1: vec3<u32>, arg_2: vec4<u32>, arg_3: Struct_2) -> Struct_3 {
    let var_0 = arg_3;
    var var_1 = vec4<i32>(global0.x, 1i, _wgslsmith_dot_vec2_i32(global0.zy, _wgslsmith_add_vec2_i32(global0.xx, firstLeadingBit(vec2<i32>(7830i, 36038i))) ^ ~select(global0.xw, global1[_wgslsmith_index_u32(arg_3.a.x, 24u)], vec2<bool>(false, true))), global0.x);
    var var_2 = true;
    var var_3 = select(u_input.b, ~min(select(~vec4<u32>(0u, 82096u, 22724u, 58u), vec4<u32>(21404u, 18906u, 66106u, u_input.b.x), select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), false)), vec4<u32>(select(1u, arg_3.a.x, false), 0u, arg_2.x, 0u)), !((i32(-1i) * -global0.x) < _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(global0.zxx, vec3<i32>(var_1.x, 75535i, var_1.x)), _wgslsmith_div_i32(global0.x, -10968i))));
    var var_4 = Struct_4(~_wgslsmith_sub_vec2_i32(global0.zx, _wgslsmith_mod_vec2_i32(vec2<i32>(var_1.x, var_1.x), vec2<i32>(-1i, global0.x)) | -vec2<i32>(1i, global0.x)), Struct_3(857f, arg_0), arg_3);
    return var_4.b;
}

fn func_1(arg_0: u32, arg_1: f32) -> vec2<i32> {
    var var_0 = func_2(_wgslsmith_f_op_f32(-arg_1), ~vec3<u32>(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.a.x, arg_0), _wgslsmith_sub_vec3_u32(global3[_wgslsmith_index_u32(arg_0, 1u)], u_input.a)), u_input.b.x), ~(~u_input.b), Struct_2(u_input.b.xy));
    var var_1 = 1u;
    let var_2 = 0i;
    var_1 = arg_0 & _wgslsmith_sub_u32(32736u, arg_0 << (_wgslsmith_add_u32(~u_input.a.x, u_input.b.x | arg_0) % 32u));
    let var_3 = Struct_5(all(!select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true))) | false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -230f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-712f - var_0.a) * 1259f)) * var_0.b), Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_0.a)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a, 299f))), 370f));
    return global0.wx;
}

fn func_3(arg_0: Struct_4, arg_1: vec3<i32>) -> Struct_4 {
    global0 = ~(~abs(vec4<i32>(1i, -2147483647i, _wgslsmith_add_i32(arg_1.x, 2147483647i), 0i)));
    var var_0 = arg_0.c;
    global4 = array<vec4<i32>, 21>();
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_3(Struct_4(func_1(u_input.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1004f)))), func_2(648f, vec3<u32>(~0u, _wgslsmith_sub_u32(u_input.b.x, u_input.a.x), _wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(u_input.a.x, 22443u, u_input.a.x))), u_input.b, Struct_2(u_input.b.yz)), Struct_2(vec2<u32>(u_input.b.x, 0u) << (~vec2<u32>(u_input.a.x, 1u) % vec2<u32>(32u)))), _wgslsmith_clamp_vec3_i32(global0.wxw, -min(~vec3<i32>(18583i, global0.x, global0.x), global0.zyw), _wgslsmith_mult_vec3_i32(max(global0.zxx, vec3<i32>(-15325i, -51556i, global0.x)) >> (vec3<u32>(1u, u_input.b.x, u_input.b.x) % vec3<u32>(32u)), _wgslsmith_div_vec3_i32(vec3<i32>(6210i, global0.x, global0.x) | global0.xxx, ~global0.yyy))));
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.b.a)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(var_0.b.a, var_0.b.a)), _wgslsmith_f_op_f32(-873f + var_0.b.a))), var_0.b.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1588f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2568f - 2146f)))) - vec4<f32>(-1233f, _wgslsmith_f_op_f32(var_0.b.a - _wgslsmith_f_op_f32(floor(var_0.b.b))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1000f - var_0.b.a))))), _wgslsmith_f_op_f32(-var_0.b.a)));
    let var_2 = select(vec2<bool>(_wgslsmith_sub_i32(global0.x & global0.x, global0.x) > firstLeadingBit(2147483647i), !all(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false)))), vec2<bool>(all(vec2<bool>(false, false)), true), vec2<bool>(true, true));
    let var_3 = var_1.xz;
    let var_4 = Struct_5(all(select(var_2, var_2, !vec2<bool>(var_2.x, true))) || (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1081f - var_1.x) + _wgslsmith_f_op_f32(var_1.x * var_0.b.b)) < -1008f), _wgslsmith_f_op_f32(trunc(var_3.x)), func_3(func_3(var_0, _wgslsmith_mod_vec3_i32(vec3<i32>(global0.x, global0.x, global0.x), firstLeadingBit(global0.wzx))), _wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(countOneBits(vec3<i32>(1i, 2147483647i, global0.x)), global0.zxz), _wgslsmith_div_vec3_i32(global0.yxx, vec3<i32>(var_0.a.x, global0.x, var_0.a.x)) ^ vec3<i32>(2147483647i, 34852i, -1i), _wgslsmith_clamp_vec3_i32(~global0.zzy, global0.wzz, vec3<i32>(33263i, -1i, global0.x)))).b);
    let var_5 = Struct_1(all(!vec2<bool>(var_2.x, false)) & var_2.x, vec4<f32>(var_4.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1114f))) + func_3(Struct_4(vec2<i32>(var_0.a.x, 24511i), Struct_3(var_1.x, -1155f), Struct_2(vec2<u32>(1u, var_0.c.a.x))), vec3<i32>(global0.x, var_0.a.x, 0i) << (vec3<u32>(0u, 74738u, 9420u) % vec3<u32>(32u))).b.a), _wgslsmith_f_op_f32(1515f + _wgslsmith_div_f32(-618f, _wgslsmith_f_op_f32(var_3.x + -1032f))), _wgslsmith_f_op_f32(floor(func_3(func_3(var_0, global0.ywz), vec3<i32>(var_0.a.x, -12277i, -8900i)).b.b))), -1000f, vec3<u32>(_wgslsmith_sub_u32(1u, select(65155u | u_input.a.x, ~u_input.a.x, true)), u_input.b.x, _wgslsmith_add_u32(min(var_0.c.a.x, u_input.b.x) & u_input.b.x, u_input.a.x)));
    let var_6 = max(vec2<u32>(var_5.d.x, firstTrailingBit(var_0.c.a.x ^ 1u)), vec2<u32>(var_0.c.a.x, u_input.b.x)) ^ vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(max(23503u, 55757u), var_5.d.x), u_input.b.ww), 84233u);
    global0 = ~vec4<i32>(func_1(var_0.c.a.x, -1610f).x, 2147483647i, -1i, -(reverseBits(global0.x) >> (26766u % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(max(_wgslsmith_mult_i32(_wgslsmith_mod_i32(1i, 1i), abs(-40734i)), -1i), var_0.a.x, 1i, -1i), func_3(var_0, global0.yxz).a.x);
}

