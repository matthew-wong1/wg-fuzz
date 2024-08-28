struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: bool,
    d: vec3<i32>,
    e: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 5> = array<vec3<i32>, 5>(vec3<i32>(47306i, -15896i, 1782i), vec3<i32>(-1i, -8643i, 43029i), vec3<i32>(30195i, 4194i, 21728i), vec3<i32>(-1744i, 12558i, 0i), vec3<i32>(0i, -1i, 15091i));

var<private> global1: vec3<u32>;

var<private> global2: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(39897i, vec4<f32>(-1053f, 1288f, 1000f, -2752f), true, vec3<i32>(6405i, -61897i, 2147483647i), 1304f), Struct_1(-98967i, vec4<f32>(-873f, 392f, -2970f, -1501f), false, vec3<i32>(2269i, 2147483647i, 2147483647i), -674f), Struct_1(14163i, vec4<f32>(1910f, -1450f, 106f, -1339f), true, vec3<i32>(0i, 1i, -66757i), 1500f), Struct_1(-21591i, vec4<f32>(-110f, 1000f, -1323f, 341f), false, vec3<i32>(-8262i, -25092i, -22065i), -1420f), Struct_1(2147483647i, vec4<f32>(2474f, -900f, 772f, 197f), false, vec3<i32>(i32(-2147483648), 29270i, -15040i), -276f), Struct_1(-15430i, vec4<f32>(-777f, 102f, -726f, -1253f), false, vec3<i32>(12772i, -25240i, 45274i), 193f), Struct_1(-1i, vec4<f32>(-158f, 823f, 1000f, 1495f), true, vec3<i32>(2147483647i, 0i, 2147483647i), 1130f), Struct_1(19265i, vec4<f32>(728f, -241f, 1181f, -1132f), false, vec3<i32>(12118i, -42682i, -1i), 385f), Struct_1(i32(-2147483648), vec4<f32>(100f, 349f, 134f, -402f), true, vec3<i32>(-1i, 0i, 2147483647i), -1000f), Struct_1(i32(-2147483648), vec4<f32>(175f, 1030f, -1085f, -1170f), true, vec3<i32>(-1i, 22687i, -62381i), -227f), Struct_1(-57495i, vec4<f32>(-1718f, -690f, -507f, -1742f), true, vec3<i32>(-7006i, 20725i, 25269i), 1094f), Struct_1(35955i, vec4<f32>(1499f, 1379f, -573f, 308f), false, vec3<i32>(19705i, -20562i, -3561i), -126f), Struct_1(1i, vec4<f32>(265f, -1565f, 370f, -230f), true, vec3<i32>(2147483647i, 19892i, -21948i), -539f), Struct_1(-3460i, vec4<f32>(281f, -895f, 814f, 916f), false, vec3<i32>(-10471i, 2147483647i, -54264i), -384f), Struct_1(0i, vec4<f32>(-237f, 1723f, 518f, 552f), true, vec3<i32>(7313i, 35799i, -5828i), -274f), Struct_1(-1i, vec4<f32>(-390f, 365f, -618f, -1096f), false, vec3<i32>(i32(-2147483648), -31135i, i32(-2147483648)), 1266f), Struct_1(17396i, vec4<f32>(-958f, 578f, -1003f, 205f), false, vec3<i32>(-1i, 50567i, 0i), 1000f), Struct_1(25237i, vec4<f32>(-1116f, -791f, -2420f, -754f), false, vec3<i32>(-40738i, -8928i, i32(-2147483648)), 426f), Struct_1(1i, vec4<f32>(-1864f, 1734f, -584f, -1000f), true, vec3<i32>(26991i, 0i, 1i), -1000f), Struct_1(35660i, vec4<f32>(-274f, -591f, -615f, 950f), true, vec3<i32>(-1i, -1i, -45461i), -1000f), Struct_1(-5806i, vec4<f32>(-1036f, -743f, 1190f, -1094f), false, vec3<i32>(2147483647i, 33932i, 10350i), 152f), Struct_1(11498i, vec4<f32>(-1845f, -1267f, 874f, 1062f), false, vec3<i32>(-42617i, 2147483647i, 16417i), -1789f), Struct_1(1i, vec4<f32>(1098f, -943f, -404f, 1272f), true, vec3<i32>(2147483647i, 16701i, 1i), -444f), Struct_1(-835i, vec4<f32>(-1186f, -2208f, 1534f, -959f), false, vec3<i32>(i32(-2147483648), 1i, 5432i), 1111f), Struct_1(-43213i, vec4<f32>(-440f, 880f, 405f, 606f), false, vec3<i32>(0i, 2147483647i, -1i), 328f), Struct_1(20348i, vec4<f32>(-999f, -388f, -1168f, -650f), false, vec3<i32>(3964i, 21643i, 18535i), 182f), Struct_1(13041i, vec4<f32>(696f, 1361f, 403f, 119f), true, vec3<i32>(56341i, -12068i, 3672i), -323f), Struct_1(1i, vec4<f32>(718f, 114f, 1000f, 574f), false, vec3<i32>(i32(-2147483648), 0i, -1i), 855f), Struct_1(-1i, vec4<f32>(303f, -1075f, 334f, -391f), true, vec3<i32>(7178i, -31074i, -1i), -2307f), Struct_1(0i, vec4<f32>(715f, -856f, 866f, -1373f), true, vec3<i32>(0i, -27298i, -26817i), -1000f), Struct_1(-10390i, vec4<f32>(-1000f, 275f, -1118f, 2574f), false, vec3<i32>(11675i, -1i, i32(-2147483648)), -763f), Struct_1(953i, vec4<f32>(-1000f, -645f, 441f, -213f), false, vec3<i32>(18342i, 2147483647i, 3125i), -1709f));

var<private> global3: array<u32, 24>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2(arg_0: Struct_2) -> Struct_2 {
    let var_0 = -vec2<i32>(u_input.a.x, arg_0.b.d.x);
    global2 = array<Struct_1, 32>();
    let var_1 = 1f;
    global2 = array<Struct_1, 32>();
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.x, _wgslsmith_f_op_f32(select(-875f, arg_0.a.x, false)), -1711f, _wgslsmith_div_f32(var_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1091f)))));
    return arg_0;
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_2) -> u32 {
    let var_0 = vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_mod_i32(-(~u_input.a.x), 0i), -_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.c.d.x, u_input.a.x, arg_1.c.d.x), vec3<i32>(arg_1.b.d.x, 2147483647i, arg_1.b.a)) | -(u_input.a.x & 0i)), 9038i);
    let var_1 = !vec2<bool>(any(vec3<bool>(any(vec4<bool>(arg_1.c.c, arg_1.b.c, true, arg_1.b.c)), !arg_1.b.c, arg_1.b.c)), !arg_1.c.c);
    var var_2 = func_2(Struct_2(vec3<f32>(_wgslsmith_f_op_f32(select(func_2(arg_1).b.b.x, _wgslsmith_f_op_f32(-arg_0.x), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x * 774f) + _wgslsmith_f_op_f32(min(142f, arg_0.x))), _wgslsmith_f_op_f32(exp2(arg_0.x))), func_2(func_2(Struct_2(vec3<f32>(arg_1.a.x, arg_1.b.e, -1362f), Struct_1(0i, arg_1.b.b, false, arg_1.c.d, arg_1.a.x), arg_1.c))).b, Struct_1(arg_1.b.d.x, arg_1.b.b, arg_1.b.c, abs(arg_1.b.d), -779f))).b;
    global3 = array<u32, 24>();
    let var_3 = arg_1;
    return max(_wgslsmith_mult_u32(56779u, _wgslsmith_div_u32(4294967295u, _wgslsmith_add_u32(4294967295u, ~4294967295u))), ~4294967295u);
}

fn func_1(arg_0: i32, arg_1: i32) -> f32 {
    global1 = ~(firstTrailingBit(_wgslsmith_div_vec3_u32(vec3<u32>(global3[_wgslsmith_index_u32(15983u, 24u)], 30285u, global1.x), vec3<u32>(u_input.b, 18760u, global1.x))) >> (vec3<u32>(_wgslsmith_dot_vec2_u32(global1.zz, ~global1.zy), func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1556f, 2536f, 389f)), func_2(Struct_2(vec3<f32>(443f, 614f, 2317f), global2[_wgslsmith_index_u32(22053u, 32u)], global2[_wgslsmith_index_u32(4294967295u, 32u)]))), _wgslsmith_add_u32(abs(global1.x), global3[_wgslsmith_index_u32(~global1.x, 24u)])) % vec3<u32>(32u)));
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(333f + 1045f)), _wgslsmith_f_op_f32(-713f + _wgslsmith_div_f32(-888f, 1209f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-629f, -1665f))), vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(1150f, -806f))), -537f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1855f), _wgslsmith_f_op_f32(-959f + -244f)))), func_2(Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(123f, 1103f, -899f)), global2[_wgslsmith_index_u32(~0u, 32u)], func_2(Struct_2(vec3<f32>(629f, 1000f, -477f), Struct_1(arg_0, vec4<f32>(180f, -1331f, -500f, -1679f), true, global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.c, 24u)], 5u)], 1505f), global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(49391u, 24u)], 32u)])).b)).b.c)), Struct_1(reverseBits(-_wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(17056i, -52202i))), vec4<f32>(func_2(func_2(Struct_2(vec3<f32>(173f, -388f, -560f), global2[_wgslsmith_index_u32(29824u, 32u)], global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(17472u, 24u)], 32u)]))).a.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(-1168f)))), _wgslsmith_f_op_f32(-929f + _wgslsmith_f_op_f32(step(1782f, -1993f))), 1317f), true, vec3<i32>(_wgslsmith_mult_i32(-51895i, arg_0), firstTrailingBit(_wgslsmith_dot_vec3_i32(global0[_wgslsmith_index_u32(0u, 5u)], global0[_wgslsmith_index_u32(24383u, 5u)])), reverseBits(u_input.a.x) & -51974i), -772f), global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~57554u, 24u)], 32u)]);
    var var_1 = vec3<i32>(firstLeadingBit(arg_0), _wgslsmith_div_i32(61092i, -1i), -(i32(-1i) * -899i));
    var var_2 = vec3<i32>(_wgslsmith_clamp_i32(-2147483647i, _wgslsmith_mod_i32(firstTrailingBit(~(-12082i)), u_input.a.x), 33311i), -1690i, ~(~arg_1 >> (~min(23333u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 24u)], 24u)]) % 32u)));
    global3 = array<u32, 24>();
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-225f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_0.a.x)), -870f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(func_1(u_input.a.x, _wgslsmith_mult_i32(39981i, -_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(global0[_wgslsmith_index_u32(global1.x, 5u)], global0[_wgslsmith_index_u32(34210u, 5u)]), abs(global0[_wgslsmith_index_u32(1u, 5u)])))));
    let var_1 = vec4<bool>(true, select(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 0u, 4294967295u) | vec3<u32>(4294967295u, 1u, global1.x), ~vec3<u32>(global1.x, 4294967295u, 1u)), global3[_wgslsmith_index_u32(~global1.x, 24u)], 0i < (u_input.a.x << (0u % 32u))) == 42839u, any(!(!select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true)))), select(!all(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false))), true, true));
    var var_2 = u_input.c;
    global1 = max(vec3<u32>(global1.x, u_input.c, firstLeadingBit(~1u)), vec3<u32>(abs(global1.x), abs(_wgslsmith_dot_vec4_u32(~vec4<u32>(global1.x, 15714u, global1.x, 1u), vec4<u32>(global1.x, 29810u, u_input.b, global1.x))), func_3(vec3<f32>(1f, 1f, 1f), func_2(Struct_2(vec3<f32>(1197f, 966f, 1786f), Struct_1(-19255i, vec4<f32>(-2959f, 2158f, 536f, -188f), false, global0[_wgslsmith_index_u32(14477u, 5u)], 794f), global2[_wgslsmith_index_u32(u_input.b, 32u)])))));
    let var_3 = u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1f, 1f, 1f, 1f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(175f, 758f, 345f, -552f), vec4<f32>(-1402f, 1048f, 1095f, -114f))), var_1.x)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(188f, -157f, -365f, 653f))), vec4<f32>(-868f, _wgslsmith_f_op_f32(trunc(625f)), -469f, _wgslsmith_f_op_f32(max(-997f, 1226f))))))), vec3<u32>(17433u, 0u, 0u));
}

