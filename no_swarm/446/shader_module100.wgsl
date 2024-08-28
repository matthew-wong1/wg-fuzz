struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: f32,
}

struct Struct_2 {
    a: f32,
    b: vec2<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
    c: f32,
}

struct Struct_4 {
    a: vec3<u32>,
}

struct Struct_5 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(-54332i, vec4<f32>(330f, 586f, 2093f, 1000f), -676f), Struct_1(2147483647i, vec4<f32>(-1000f, 336f, 531f, 619f), 1538f), Struct_1(-1i, vec4<f32>(984f, -523f, -120f, -377f), -763f), Struct_1(-17574i, vec4<f32>(-208f, -1349f, -909f, -374f), 535f), Struct_1(2147483647i, vec4<f32>(774f, -1260f, -252f, 214f), -2483f), Struct_1(2147483647i, vec4<f32>(-902f, -1000f, -258f, -2109f), 2216f), Struct_1(i32(-2147483648), vec4<f32>(-101f, -578f, 723f, 356f), -1000f), Struct_1(-40889i, vec4<f32>(-483f, -1268f, 1000f, -449f), 793f), Struct_1(i32(-2147483648), vec4<f32>(885f, -569f, -1083f, -691f), -1302f), Struct_1(44434i, vec4<f32>(-630f, -951f, -1581f, -129f), 953f), Struct_1(7957i, vec4<f32>(-773f, 362f, 1883f, 227f), 658f), Struct_1(1i, vec4<f32>(461f, -1146f, 1320f, -197f), -1979f), Struct_1(i32(-2147483648), vec4<f32>(-1000f, 730f, 320f, 1254f), -756f), Struct_1(2147483647i, vec4<f32>(154f, 283f, -1000f, -1224f), -1098f), Struct_1(-46330i, vec4<f32>(1000f, -968f, -1155f, 485f), 1364f), Struct_1(2147483647i, vec4<f32>(1000f, 493f, -2318f, 386f), -2365f), Struct_1(43661i, vec4<f32>(1316f, -1165f, 671f, 663f), 864f), Struct_1(0i, vec4<f32>(555f, -194f, 523f, -1000f), -701f), Struct_1(-24192i, vec4<f32>(664f, 828f, -421f, -1698f), 514f), Struct_1(2147483647i, vec4<f32>(331f, 423f, -1751f, -899f), 100f), Struct_1(0i, vec4<f32>(1000f, -1475f, 344f, -422f), 100f), Struct_1(-4884i, vec4<f32>(533f, -621f, 1020f, 476f), 696f), Struct_1(-1i, vec4<f32>(-453f, -666f, 1247f, -661f), -768f), Struct_1(i32(-2147483648), vec4<f32>(694f, -666f, 1166f, -1000f), -137f), Struct_1(55431i, vec4<f32>(581f, -855f, -807f, -291f), 285f), Struct_1(28707i, vec4<f32>(1607f, -1156f, -127f, -1000f), 668f), Struct_1(0i, vec4<f32>(-671f, -442f, 844f, 428f), 1990f), Struct_1(3174i, vec4<f32>(-1000f, 688f, 1356f, 1107f), 796f), Struct_1(1i, vec4<f32>(1809f, -992f, -819f, 1592f), -1526f));

var<private> global1: bool;

var<private> global2: i32;

var<private> global3: array<f32, 13> = array<f32, 13>(-1891f, 144f, -556f, -590f, -1000f, 131f, -1732f, -615f, -1174f, -689f, 2164f, -1000f, -546f);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_3, arg_1: f32, arg_2: Struct_3) -> i32 {
    global1 = any(vec2<bool>(false, true));
    var var_0 = 66644u;
    let var_1 = true;
    var var_2 = 542f;
    return arg_0.b.x;
}

fn func_2(arg_0: i32, arg_1: vec2<i32>) -> Struct_2 {
    let var_0 = _wgslsmith_mult_i32(-func_3(Struct_3(Struct_1(arg_1.x, vec4<f32>(global3[_wgslsmith_index_u32(u_input.e, 13u)], global3[_wgslsmith_index_u32(u_input.c.x, 13u)], -286f, global3[_wgslsmith_index_u32(u_input.c.x, 13u)]), -1000f), u_input.d, _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(u_input.c.x, 13u)] - 836f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(4294967295u, 13u)])), Struct_3(global0[_wgslsmith_index_u32(18187u, 29u)], u_input.d, 908f)), _wgslsmith_dot_vec2_i32(u_input.d.wy, arg_1) | -2147483647i);
    global0 = array<Struct_1, 29>();
    global2 = select(0i, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, -2147483647i), arg_1), !((arg_1.x != arg_1.x) | true)) ^ (-17200i | -_wgslsmith_clamp_i32(_wgslsmith_sub_i32(2147483647i, arg_1.x), 1i, u_input.a));
    let var_1 = Struct_4(~_wgslsmith_mod_vec3_u32(vec3<u32>(16733u >> (u_input.c.x % 32u), 69774u, 26418u), ~u_input.c));
    var var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, var_1.a.x), u_input.c.yz), 13u)]) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(945f - global3[_wgslsmith_index_u32(var_1.a.x, 13u)])))))));
    return Struct_2(global3[_wgslsmith_index_u32(u_input.c.x, 13u)], vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global3[_wgslsmith_index_u32(firstLeadingBit(u_input.c.x), 13u)], global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.e, 15167u), 13u)])) - global3[_wgslsmith_index_u32(var_1.a.x, 13u)]), global3[_wgslsmith_index_u32(~(var_1.a.x << (u_input.c.x % 32u)), 13u)]), Struct_1(-2147483647i, vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(4974u, 13u)]), _wgslsmith_f_op_f32(trunc(188f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(475f + global3[_wgslsmith_index_u32(69798u, 13u)]) * _wgslsmith_f_op_f32(max(global3[_wgslsmith_index_u32(var_1.a.x, 13u)], 131f))), global3[_wgslsmith_index_u32(min(_wgslsmith_sub_u32(4294967295u, 1u), 35264u << (0u % 32u)), 13u)], _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(~u_input.e, 13u)])), -457f));
}

fn func_4(arg_0: Struct_2) -> Struct_1 {
    global1 = any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), -1229f == arg_0.c.b.x));
    global2 = -10156i | _wgslsmith_mult_i32(_wgslsmith_sub_i32(37405i, _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(u_input.d.zzz, vec3<i32>(arg_0.c.a, u_input.d.x, -1i)), -vec3<i32>(arg_0.c.a, arg_0.c.a, u_input.b))), 0i);
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.e ^ ~u_input.e, _wgslsmith_mod_u32(max(u_input.e, 4294967295u & u_input.c.x), ~(~0u))) >> (_wgslsmith_dot_vec3_u32(abs(min(u_input.c, u_input.c)) ^ abs(u_input.c), u_input.c) % 32u), 29u)];
    var var_1 = select(!vec3<bool>(!all(vec4<bool>(false, false, false, false)), true, true), select(select(select(vec3<bool>(false, false, false), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), true), vec3<bool>(true, any(vec2<bool>(true, false)), false), (u_input.c.x < 0u) | true), select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), false), vec3<bool>(true, true, true), any(vec2<bool>(false, false))), vec3<bool>(true, true, true)), !vec3<bool>(select(true, false, false), true, true)), vec3<bool>(any(!select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true))), true, true));
    let var_2 = func_2(func_2(-2147483647i, _wgslsmith_add_vec2_i32(select(u_input.d.zx, vec2<i32>(u_input.b, -2147483647i), false), u_input.d.zz)).c.a, u_input.d.zy);
    return arg_0.c;
}

fn func_5(arg_0: bool, arg_1: Struct_3) -> f32 {
    var var_0 = Struct_5(func_4(func_2(_wgslsmith_sub_i32(u_input.a << (27592u % 32u), u_input.d.x), -arg_1.b.yz)), !(!vec3<bool>(arg_0, -312f > global3[_wgslsmith_index_u32(u_input.e, 13u)], arg_0)), u_input.c.xz);
    let var_1 = _wgslsmith_clamp_i32(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(-vec4<i32>(var_0.a.a, u_input.b, 2147483647i, 18246i), -arg_1.b), countOneBits(arg_1.b) << (vec4<u32>(u_input.e, 55384u, 4294967295u, u_input.c.x) % vec4<u32>(32u))), -(_wgslsmith_div_i32(arg_1.a.a, 0i) ^ _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a.a, -1i, -2147483647i, 2147483647i), vec4<i32>(var_0.a.a, u_input.a, -2147483647i, var_0.a.a)))), _wgslsmith_dot_vec3_i32(arg_1.b.xyx, arg_1.b.zzx), 2147483647i);
    let var_2 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.a.b.xz + arg_1.a.b.zz) * _wgslsmith_f_op_vec2_f32(round(var_0.a.b.xx))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.c, global3[_wgslsmith_index_u32(u_input.e, 13u)]) - vec2<f32>(arg_1.c, -343f)))))))));
    global0 = array<Struct_1, 29>();
    let var_3 = ~(~((var_0.c << (~var_0.c % vec2<u32>(32u))) | var_0.c));
    return var_2.x;
}

fn func_1(arg_0: Struct_4, arg_1: vec3<f32>) -> Struct_3 {
    let var_0 = u_input.d.ywz;
    var var_1 = vec2<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(arg_1.x)))) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-236f, global3[_wgslsmith_index_u32(1u, 13u)])), _wgslsmith_div_f32(-106f, 623f), false))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x))));
    let var_2 = 31155i;
    var var_3 = var_0.x;
    var var_4 = vec3<bool>(false, true, true);
    return Struct_3(global0[_wgslsmith_index_u32(max(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 6613u, 1u), vec3<u32>(4294967295u, u_input.c.x, 1u)) >> (~(~62966u) % 32u), 1u), 29u)], vec4<i32>(u_input.d.x, u_input.b ^ u_input.a, abs(8938i), 1i), _wgslsmith_f_op_f32(func_5(437f <= global3[_wgslsmith_index_u32(u_input.e, 13u)], Struct_3(func_4(func_2(-2147483647i, var_0.xy)), u_input.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.e, 13u)]))))));
}

fn func_6(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: Struct_2) -> vec4<bool> {
    let var_0 = arg_2;
    let var_1 = reverseBits(min(~4294967295u, ~countOneBits(56559u)));
    global1 = all(select(!select(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false)), select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true)), true), vec3<bool>(!(arg_1.x != 1774f), !all(vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(select(252f, arg_0.a.c, false)) <= _wgslsmith_div_f32(var_0.c.c, -1000f)), vec3<bool>(any(vec2<bool>(false, false)), false, all(vec2<bool>(false, false)))));
    global2 = -43393i;
    global2 = ~(~(~_wgslsmith_div_i32(-1i, arg_0.a.a)) & min(firstTrailingBit(2147483647i), 1i >> (1u % 32u)));
    return select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), all(vec4<bool>(true, false, false, false))), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(!any(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), false)), true, !select(all(vec4<bool>(true, true, true, false)), true, true), false));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(select(!select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true)), !select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true)), func_6(func_1(Struct_4(u_input.c), vec3<f32>(1372f, -891f, global3[_wgslsmith_index_u32(u_input.c.x, 13u)])), vec4<f32>(global3[_wgslsmith_index_u32(u_input.c.x, 13u)], global3[_wgslsmith_index_u32(u_input.c.x, 13u)], global3[_wgslsmith_index_u32(u_input.c.x, 13u)], 1081f), Struct_2(621f, vec2<f32>(global3[_wgslsmith_index_u32(72275u, 13u)], -850f), global0[_wgslsmith_index_u32(4294967295u, 29u)]))), vec4<bool>(!(77672u < u_input.e), true, true, all(vec4<bool>(true, true, true, false)) | true), !(all(vec2<bool>(true, false)) && (u_input.a > u_input.a)));
    var var_1 = 1u;
    var_0 = func_6(Struct_3(Struct_1(~45410i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1224f, -109f, global3[_wgslsmith_index_u32(4294967295u, 13u)], global3[_wgslsmith_index_u32(u_input.c.x, 13u)])) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(0u, 13u)], global3[_wgslsmith_index_u32(u_input.e, 13u)], -1318f, 1189f))), -1789f), vec4<i32>(-28708i, -2147483647i, 2147483647i, u_input.b), global3[_wgslsmith_index_u32(0u, 13u)]), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(abs(global3[_wgslsmith_index_u32(u_input.e, 13u)])), global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.c.x, ~14785u), 13u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(4294967295u, 13u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-400f, global3[_wgslsmith_index_u32(24193u, 13u)], var_0.x)) * _wgslsmith_f_op_f32(abs(global3[_wgslsmith_index_u32(u_input.c.x, 13u)])))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(global3[_wgslsmith_index_u32(u_input.e, 13u)], global3[_wgslsmith_index_u32(u_input.e, 13u)], true)), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(12574u, 13u)] + 601f), _wgslsmith_f_op_f32(491f * global3[_wgslsmith_index_u32(u_input.e, 13u)]), _wgslsmith_f_op_f32(ceil(733f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 1583f, global3[_wgslsmith_index_u32(u_input.c.x, 13u)], global3[_wgslsmith_index_u32(u_input.e, 13u)])))))), func_2(~u_input.d.x, select(vec2<i32>(u_input.a, -1i), u_input.d.xy, select(var_0.zx, select(var_0.yx, var_0.xy, vec2<bool>(var_0.x, var_0.x)), true))));
    let var_2 = func_2(_wgslsmith_mod_i32(-8190i, firstLeadingBit(i32(-1i) * -2147483647i)), vec2<i32>(0i, ~1i)).c.a << (u_input.c.x % 32u);
    let var_3 = Struct_5(func_1(Struct_4(u_input.c), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(35472u, 13u)], 282f, global3[_wgslsmith_index_u32(1u, 13u)])))))).a, !var_0.zxz, u_input.c.zy);
    var var_4 = func_2(-1i, vec2<i32>(-1i) * -_wgslsmith_add_vec2_i32(u_input.d.zy, min(vec2<i32>(u_input.d.x, 0i), vec2<i32>(48105i, var_3.a.a))));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a.b.xy, var_3.c);
}

