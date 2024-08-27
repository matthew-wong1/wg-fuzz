struct Struct_1 {
    a: f32,
    b: bool,
    c: f32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: vec2<u32>,
    d: vec4<bool>,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: vec4<u32>,
}

struct Struct_4 {
    a: u32,
    b: vec2<f32>,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<i32>,
    d: vec3<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 28> = array<vec3<f32>, 28>(vec3<f32>(-1758f, -1488f, 1110f), vec3<f32>(-1113f, -885f, 353f), vec3<f32>(-2327f, -2724f, -435f), vec3<f32>(1450f, -1877f, -1224f), vec3<f32>(-359f, -665f, 1475f), vec3<f32>(-1038f, 1179f, -1425f), vec3<f32>(-388f, -1880f, 360f), vec3<f32>(-857f, 882f, 448f), vec3<f32>(535f, 209f, 1060f), vec3<f32>(443f, -1629f, -241f), vec3<f32>(-424f, -756f, 914f), vec3<f32>(1000f, 894f, 371f), vec3<f32>(1214f, 307f, 1435f), vec3<f32>(1000f, 664f, 514f), vec3<f32>(565f, 268f, -833f), vec3<f32>(-214f, -2386f, 619f), vec3<f32>(-1814f, 1000f, 835f), vec3<f32>(1611f, -2405f, 1730f), vec3<f32>(266f, -881f, -162f), vec3<f32>(1658f, -389f, -204f), vec3<f32>(1403f, 1000f, -2048f), vec3<f32>(-1000f, 1000f, 713f), vec3<f32>(-1171f, -582f, -116f), vec3<f32>(-166f, 537f, 819f), vec3<f32>(1000f, -1000f, -382f), vec3<f32>(430f, -1085f, 702f), vec3<f32>(1256f, -996f, 486f), vec3<f32>(301f, -590f, 1326f));

var<private> global1: array<vec2<u32>, 24>;

var<private> global2: array<vec2<i32>, 20> = array<vec2<i32>, 20>(vec2<i32>(-1i, 2147483647i), vec2<i32>(7569i, 1i), vec2<i32>(-17459i, 1i), vec2<i32>(-13149i, -22516i), vec2<i32>(-10565i, i32(-2147483648)), vec2<i32>(0i, 1i), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(1i, -1i), vec2<i32>(-29927i, 40810i), vec2<i32>(12364i, 64433i), vec2<i32>(-25047i, -31794i), vec2<i32>(2147483647i, 12005i), vec2<i32>(-1i, -1i), vec2<i32>(25397i, 0i), vec2<i32>(-1144i, -3388i), vec2<i32>(-4191i, 42968i), vec2<i32>(595i, 2033i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(0i, 4284i), vec2<i32>(0i, 59250i));

var<private> global3: array<Struct_4, 21> = array<Struct_4, 21>(Struct_4(26025u, vec2<f32>(-1317f, 680f), 4294967295u, Struct_1(-1053f, false, -1340f, vec4<bool>(false, true, false, true))), Struct_4(33844u, vec2<f32>(-1340f, -951f), 0u, Struct_1(-172f, false, 1398f, vec4<bool>(true, false, false, false))), Struct_4(12195u, vec2<f32>(668f, -190f), 4294967295u, Struct_1(-346f, false, 225f, vec4<bool>(true, false, true, true))), Struct_4(62u, vec2<f32>(1000f, -1824f), 8752u, Struct_1(-1061f, true, -339f, vec4<bool>(true, true, true, false))), Struct_4(76967u, vec2<f32>(1147f, 1007f), 24975u, Struct_1(961f, false, -403f, vec4<bool>(true, false, true, true))), Struct_4(0u, vec2<f32>(-1952f, 1300f), 28714u, Struct_1(-389f, false, -498f, vec4<bool>(false, false, true, true))), Struct_4(3154u, vec2<f32>(-1639f, 115f), 0u, Struct_1(2051f, false, 1475f, vec4<bool>(false, true, true, false))), Struct_4(48978u, vec2<f32>(-593f, -243f), 33194u, Struct_1(809f, false, 1226f, vec4<bool>(true, false, true, true))), Struct_4(1u, vec2<f32>(-2069f, 2713f), 1u, Struct_1(-2270f, false, -804f, vec4<bool>(true, false, true, false))), Struct_4(4294967295u, vec2<f32>(686f, -1521f), 0u, Struct_1(1000f, true, 1301f, vec4<bool>(true, false, true, true))), Struct_4(4294967295u, vec2<f32>(394f, 168f), 19589u, Struct_1(-216f, false, 1000f, vec4<bool>(true, false, false, true))), Struct_4(4294967295u, vec2<f32>(-638f, -1277f), 0u, Struct_1(-1111f, true, -410f, vec4<bool>(false, true, false, false))), Struct_4(35011u, vec2<f32>(-2079f, 225f), 4791u, Struct_1(-956f, true, 472f, vec4<bool>(false, false, false, false))), Struct_4(38899u, vec2<f32>(-1126f, -772f), 53778u, Struct_1(-898f, false, 2006f, vec4<bool>(true, false, false, true))), Struct_4(66436u, vec2<f32>(-2004f, -1000f), 21635u, Struct_1(-1781f, true, -682f, vec4<bool>(false, false, false, false))), Struct_4(0u, vec2<f32>(-1000f, 171f), 44394u, Struct_1(-252f, false, 710f, vec4<bool>(true, false, false, false))), Struct_4(28708u, vec2<f32>(318f, 388f), 124811u, Struct_1(-280f, false, 1147f, vec4<bool>(true, true, false, true))), Struct_4(28211u, vec2<f32>(-1106f, 630f), 11513u, Struct_1(-159f, false, 837f, vec4<bool>(false, false, false, true))), Struct_4(4294967295u, vec2<f32>(-1562f, 992f), 0u, Struct_1(450f, false, -328f, vec4<bool>(false, true, true, false))), Struct_4(1u, vec2<f32>(-1657f, -301f), 3024u, Struct_1(-1379f, false, 1027f, vec4<bool>(true, false, true, true))), Struct_4(67226u, vec2<f32>(197f, 958f), 41426u, Struct_1(2160f, true, -1645f, vec4<bool>(true, false, false, false))));

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2() -> u32 {
    let var_0 = ~u_input.e.x;
    let var_1 = _wgslsmith_mult_vec3_u32(u_input.e.wwy, min(u_input.e.xzw, u_input.e.yzy));
    var var_2 = Struct_3(true, firstLeadingBit(8691i), abs(_wgslsmith_div_vec4_u32(u_input.e << (vec4<u32>(var_1.x, 90895u, 57604u, var_0) % vec4<u32>(32u)), vec4<u32>(u_input.e.x, 0u, 1u, 0u))) ^ vec4<u32>(u_input.e.x, max(_wgslsmith_add_u32(var_0, 4294967295u), u_input.e.x), 49272u, var_0));
    global1 = array<vec2<u32>, 24>();
    return ~(~(~(~var_0)));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: vec2<f32>, arg_3: vec3<f32>) -> f32 {
    global1 = array<vec2<u32>, 24>();
    var var_0 = Struct_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.a, _wgslsmith_f_op_f32(-arg_0.c))))), arg_3.x, _wgslsmith_mod_vec2_u32(u_input.e.ww, _wgslsmith_sub_vec2_u32(~u_input.e.wz, global1[_wgslsmith_index_u32(~2447u, 24u)])), arg_0.d);
    global3 = array<Struct_4, 21>();
    var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_3.x)))) * _wgslsmith_f_op_f32(abs(arg_0.c))), _wgslsmith_f_op_f32(select(-1000f, var_0.b, select(false, false, true))), vec2<u32>(~func_2(), u_input.e.x), !vec4<bool>(false || all(arg_0.d), !(3187u != u_input.e.x), arg_1.x, true));
    global2 = array<vec2<i32>, 20>();
    return 282f;
}

fn func_3(arg_0: Struct_4) -> vec2<u32> {
    var var_0 = Struct_3(select(firstLeadingBit(~4294967295u) < _wgslsmith_mod_u32(73085u, ~u_input.e.x), !arg_0.d.d.x, arg_0.d.b), 5530i, (u_input.e >> (reverseBits(firstTrailingBit(vec4<u32>(11701u, 0u, 16892u, 0u))) % vec4<u32>(32u))) | select(countOneBits(vec4<u32>(arg_0.c, 0u, arg_0.c, u_input.e.x)), vec4<u32>(u_input.e.x, ~1u, u_input.e.x, func_2()), vec4<bool>(false, arg_0.d.a <= arg_0.b.x, !arg_0.d.b, true)));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(559f, arg_0.b.x, -1302f, 1725f), vec4<f32>(arg_0.b.x, arg_0.b.x, arg_0.d.c, 102f), any(vec4<bool>(true, var_0.a, false, true)))))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-307f, 1231f, arg_0.d.a, -1000f), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b.x, arg_0.b.x, -1253f, -1390f) - vec4<f32>(arg_0.b.x, arg_0.b.x, arg_0.b.x, arg_0.b.x)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.d.a, 635f, -422f, arg_0.b.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(322f, arg_0.d.a, arg_0.b.x, arg_0.b.x) * vec4<f32>(790f, arg_0.b.x, arg_0.d.a, -1061f))))) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(max(1000f, arg_0.b.x)), -599f, _wgslsmith_f_op_f32(floor(-111f)), _wgslsmith_f_op_f32(sign(arg_0.d.a))))));
    var var_2 = Struct_3(4294967295u > (_wgslsmith_dot_vec2_u32(vec2<u32>(1u, arg_0.a), ~vec2<u32>(arg_0.c, u_input.e.x)) << (4294967295u % 32u)), min(var_0.b, i32(-1i) * -27412i), var_0.c);
    global2 = array<vec2<i32>, 20>();
    global3 = array<Struct_4, 21>();
    return reverseBits(_wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32((global1[_wgslsmith_index_u32(4294967295u, 24u)] >> (var_0.c.yw % vec2<u32>(32u))) >> (vec2<u32>(arg_0.a, var_0.c.x) % vec2<u32>(32u)), vec2<u32>(select(0u, 4294967295u, false), u_input.e.x)), var_0.c.xw, vec2<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(u_input.e.yz, global1[_wgslsmith_index_u32(4294967295u, 24u)]), _wgslsmith_mult_vec2_u32(vec2<u32>(18709u, var_2.c.x), vec2<u32>(50625u, arg_0.a))), func_2())));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -579f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_1(-1205f, true, -1819f, vec4<bool>(false, true, false, true)), vec4<bool>(false, true, true, true), vec2<f32>(695f, -469f), global0[_wgslsmith_index_u32(max(4294967295u, u_input.e.x), 28u)])) * 1817f), _wgslsmith_f_op_f32(-1090f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-830f)), _wgslsmith_f_op_f32(sign(1691f))))), select(func_3(global3[_wgslsmith_index_u32(min(_wgslsmith_add_u32(1u, 35830u), u_input.e.x), 21u)]), global1[_wgslsmith_index_u32(~_wgslsmith_add_u32(85253u, ~u_input.e.x), 24u)], vec2<bool>(false, true)), vec4<bool>(true, (34889u >> (_wgslsmith_mult_u32(u_input.e.x, 0u) % 32u)) > 4294967295u, 8223i <= -(u_input.a.x ^ u_input.b), -firstLeadingBit(-2783i) <= u_input.d.x));
    let var_1 = Struct_3(any(select(var_0.d, var_0.d, u_input.b < -16086i)), _wgslsmith_clamp_i32(~(_wgslsmith_mult_i32(-7751i, u_input.d.x) << (u_input.e.x % 32u)), u_input.c.x, (max(u_input.b, -2147483647i) | 2147483647i) | -u_input.a.x), u_input.e << (vec4<u32>(70320u, firstLeadingBit(44652u), func_3(Struct_4(u_input.e.x, vec2<f32>(617f, 755f), var_0.c.x, Struct_1(var_0.a, false, 523f, var_0.d))).x, min(0u, _wgslsmith_dot_vec4_u32(u_input.e, vec4<u32>(u_input.e.x, var_0.c.x, u_input.e.x, 4294967295u)))) % vec4<u32>(32u)));
    var var_2 = var_1.b & _wgslsmith_add_i32(firstLeadingBit(-2147483647i), (_wgslsmith_sub_i32(var_1.b, var_1.b) ^ u_input.b) & 24302i);
    global0 = array<vec3<f32>, 28>();
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a + var_0.b) * -698f) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)), _wgslsmith_f_op_f32(f32(-1f) * -480f)))) - 447f);
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.d << (~min(vec3<u32>(var_1.c.x, u_input.e.x, var_1.c.x), u_input.e.yxz) % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_3, var_3, 213f))))), vec3<f32>(_wgslsmith_f_op_f32(func_1(Struct_1(1603f, false, var_0.b, var_0.d), select(var_0.d, vec4<bool>(var_0.d.x, true, true, var_0.d.x), var_0.d), _wgslsmith_f_op_vec2_f32(vec2<f32>(-755f, var_0.a) * vec2<f32>(374f, var_0.b)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(154f, var_0.b, var_3)))), _wgslsmith_f_op_f32(ceil(var_3)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1173f * -174f))))));
}

