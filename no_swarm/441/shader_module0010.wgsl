struct Struct_1 {
    a: i32,
    b: f32,
    c: f32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: bool,
    c: vec4<f32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 19> = array<bool, 19>(true, true, false, true, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true);

var<private> global1: array<Struct_4, 27> = array<Struct_4, 27>(Struct_4(35346i, true, vec4<f32>(902f, 302f, 1483f, 974f), Struct_1(-1i, -608f, 1299f, vec3<u32>(3818u, 1u, 4294967295u))), Struct_4(0i, false, vec4<f32>(417f, -259f, 697f, -879f), Struct_1(0i, -164f, 857f, vec3<u32>(97840u, 60142u, 18726u))), Struct_4(-1i, true, vec4<f32>(-1934f, -106f, 625f, -303f), Struct_1(-30870i, -1608f, 203f, vec3<u32>(46393u, 10141u, 74829u))), Struct_4(i32(-2147483648), true, vec4<f32>(1171f, 1106f, 552f, 1000f), Struct_1(3i, 1149f, 1181f, vec3<u32>(4294967295u, 4294967295u, 57051u))), Struct_4(-33011i, true, vec4<f32>(257f, -1070f, 513f, 334f), Struct_1(1i, 224f, 217f, vec3<u32>(58108u, 0u, 0u))), Struct_4(1i, true, vec4<f32>(-1119f, -849f, -656f, -1000f), Struct_1(-44022i, 1000f, -1041f, vec3<u32>(30543u, 0u, 5198u))), Struct_4(0i, false, vec4<f32>(1134f, 908f, -1185f, 429f), Struct_1(-24032i, 1566f, -242f, vec3<u32>(0u, 0u, 1u))), Struct_4(-12995i, true, vec4<f32>(-580f, 964f, -1000f, 899f), Struct_1(-1i, -1777f, -954f, vec3<u32>(53181u, 6582u, 4294967295u))), Struct_4(10619i, false, vec4<f32>(-342f, -296f, 953f, -1000f), Struct_1(1i, 452f, -1137f, vec3<u32>(0u, 0u, 40304u))), Struct_4(-1i, true, vec4<f32>(1003f, -767f, -669f, -1010f), Struct_1(45756i, -278f, -289f, vec3<u32>(1u, 0u, 1u))), Struct_4(i32(-2147483648), false, vec4<f32>(572f, -2149f, -360f, -878f), Struct_1(-41137i, -1021f, -1517f, vec3<u32>(45978u, 0u, 1u))), Struct_4(12605i, true, vec4<f32>(104f, 829f, 1033f, 986f), Struct_1(0i, -2686f, 1381f, vec3<u32>(4294967295u, 4294967295u, 4294967295u))), Struct_4(-4324i, false, vec4<f32>(-528f, -464f, 109f, -973f), Struct_1(0i, 1000f, 229f, vec3<u32>(0u, 29299u, 91318u))), Struct_4(1i, false, vec4<f32>(325f, 105f, -421f, -1435f), Struct_1(i32(-2147483648), -779f, 355f, vec3<u32>(0u, 1u, 16748u))), Struct_4(21277i, false, vec4<f32>(-530f, -1057f, 728f, 101f), Struct_1(-1i, -1466f, -1632f, vec3<u32>(0u, 4294967295u, 35922u))), Struct_4(6526i, true, vec4<f32>(411f, -874f, -192f, 1148f), Struct_1(-1i, -1887f, 128f, vec3<u32>(9429u, 47827u, 4294967295u))), Struct_4(-35881i, false, vec4<f32>(874f, 196f, -1473f, -899f), Struct_1(13173i, 854f, 350f, vec3<u32>(4294967295u, 4294967295u, 4294967295u))), Struct_4(2147483647i, false, vec4<f32>(-733f, 1612f, 119f, 1000f), Struct_1(24326i, -943f, -849f, vec3<u32>(30159u, 4294967295u, 49409u))), Struct_4(-1i, true, vec4<f32>(-333f, 1392f, 182f, -231f), Struct_1(-14305i, -142f, -602f, vec3<u32>(6456u, 35211u, 0u))), Struct_4(i32(-2147483648), false, vec4<f32>(1004f, -2422f, 615f, -524f), Struct_1(0i, -1188f, -1050f, vec3<u32>(54078u, 39379u, 67353u))), Struct_4(36129i, true, vec4<f32>(1100f, 125f, -568f, 1740f), Struct_1(-1i, 1710f, -434f, vec3<u32>(1u, 1u, 11762u))), Struct_4(1i, false, vec4<f32>(586f, 1320f, -894f, -1000f), Struct_1(2147483647i, -1228f, -1081f, vec3<u32>(0u, 34081u, 1u))), Struct_4(-1i, true, vec4<f32>(748f, 753f, 376f, -327f), Struct_1(30374i, 503f, -746f, vec3<u32>(11892u, 1u, 17831u))), Struct_4(-15026i, false, vec4<f32>(-805f, -260f, -1232f, 810f), Struct_1(i32(-2147483648), 1725f, -1000f, vec3<u32>(0u, 2845u, 67160u))), Struct_4(-1i, true, vec4<f32>(-352f, 257f, 455f, 269f), Struct_1(1i, 1103f, -1224f, vec3<u32>(48973u, 25205u, 16819u))), Struct_4(-20907i, false, vec4<f32>(-422f, -1145f, -693f, 579f), Struct_1(-34251i, 612f, 224f, vec3<u32>(0u, 45840u, 1u))), Struct_4(-1i, true, vec4<f32>(1410f, 103f, -1000f, -742f), Struct_1(24298i, -860f, -1470f, vec3<u32>(0u, 4294967295u, 0u))));

var<private> global2: array<vec3<i32>, 6> = array<vec3<i32>, 6>(vec3<i32>(1i, 34851i, 30240i), vec3<i32>(-1i, -4515i, i32(-2147483648)), vec3<i32>(2147483647i, i32(-2147483648), 7083i), vec3<i32>(-1i, i32(-2147483648), 0i), vec3<i32>(-1i, 0i, -25515i), vec3<i32>(-6584i, 117i, -26943i));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2() -> vec4<i32> {
    global2 = array<vec3<i32>, 6>();
    let var_0 = abs(vec2<i32>(2147483647i, u_input.c));
    global1 = array<Struct_4, 27>();
    return _wgslsmith_mod_vec4_i32(max(-(~abs(vec4<i32>(u_input.a, 7628i, 43227i, var_0.x))), vec4<i32>(var_0.x, -_wgslsmith_mod_i32(25390i, -20944i), ~u_input.c << (u_input.b % 32u), ~(u_input.c >> (60397u % 32u)))), min(firstTrailingBit(abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.x, 1i, -6289i, 1i), vec4<i32>(var_0.x, var_0.x, 0i, var_0.x), vec4<i32>(8175i, 2147483647i, -23550i, var_0.x)))), -_wgslsmith_add_vec4_i32(vec4<i32>(var_0.x, 0i, 1i, -4832i), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.x, u_input.a, -2147483647i, u_input.a), vec4<i32>(var_0.x, u_input.a, var_0.x, var_0.x), vec4<i32>(-2147483647i, var_0.x, var_0.x, u_input.a)))));
}

fn func_3(arg_0: Struct_2) -> f32 {
    var var_0 = Struct_1(-3062i, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-3069f * _wgslsmith_f_op_f32(-arg_0.b))), -446f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0.a.b)) - -1642f))), ~max(~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.d, 44362u, 11588u), vec3<u32>(4294967295u, 33745u, 45689u)), vec3<u32>(_wgslsmith_mod_u32(0u, 1u), firstTrailingBit(u_input.d), 16522u)));
    global1 = array<Struct_4, 27>();
    var var_1 = _wgslsmith_clamp_vec2_i32(vec2<i32>(max(1i, 22449i), 2147483647i), vec2<i32>(-1i) * -abs(vec2<i32>(-1i, 0i)), _wgslsmith_sub_vec2_i32(abs(select(_wgslsmith_add_vec2_i32(vec2<i32>(73677i, 0i), vec2<i32>(0i, -2147483647i)), vec2<i32>(-44234i, arg_0.a.a), !vec2<bool>(global0[_wgslsmith_index_u32(18457u, 19u)], false))), vec2<i32>(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(var_0.a, arg_0.c.a)), _wgslsmith_add_vec2_i32(vec2<i32>(arg_0.a.a, 5845i), vec2<i32>(2147483647i, -2147483647i))), min(var_0.a, -61969i))));
    var var_2 = Struct_2(arg_0.a, -2142f, arg_0.a);
    let var_3 = select(vec4<bool>(all(select(select(vec4<bool>(global0[_wgslsmith_index_u32(var_0.d.x, 19u)], true, global0[_wgslsmith_index_u32(4294967295u, 19u)], global0[_wgslsmith_index_u32(0u, 19u)]), vec4<bool>(false, global0[_wgslsmith_index_u32(0u, 19u)], global0[_wgslsmith_index_u32(75532u, 19u)], true), global0[_wgslsmith_index_u32(71590u, 19u)]), vec4<bool>(global0[_wgslsmith_index_u32(9455u, 19u)], false, global0[_wgslsmith_index_u32(var_0.d.x, 19u)], true), 171f > arg_0.a.c)), true, true, false), vec4<bool>(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(arg_0.c.d, vec3<u32>(u_input.d, 6203u, arg_0.a.d.x)) >> (_wgslsmith_div_u32(49062u, var_0.d.x) % 32u), 1u, firstTrailingBit(81384u)), 19u)], 558f == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-589f - var_0.b)), true, any(!select(vec3<bool>(global0[_wgslsmith_index_u32(var_2.c.d.x, 19u)], global0[_wgslsmith_index_u32(var_2.a.d.x, 19u)], global0[_wgslsmith_index_u32(37465u, 19u)]), vec3<bool>(false, true, false), vec3<bool>(false, true, true)))), var_1.x > -(~(~0i)));
    return arg_0.a.c;
}

fn func_1() -> vec2<u32> {
    var var_0 = Struct_1(-min(u_input.a & firstTrailingBit(u_input.c), _wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(u_input.a, 1i, 0i, u_input.a)), func_2())), 1116f, _wgslsmith_f_op_f32(273f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1629f))), ~(~(_wgslsmith_div_vec3_u32(vec3<u32>(843u, 28314u, 6802u), vec3<u32>(u_input.d, 4294967295u, 1u)) | (vec3<u32>(11374u, 0u, 12826u) | vec3<u32>(u_input.b, 5319u, 64705u)))));
    global1 = array<Struct_4, 27>();
    var var_1 = global0[_wgslsmith_index_u32(1u, 19u)];
    var var_2 = global1[_wgslsmith_index_u32(~71071u, 27u)];
    var var_3 = Struct_3(Struct_2(var_2.d, var_0.b, Struct_1(-2147483647i | _wgslsmith_div_i32(-945i, var_0.a), -1284f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) * _wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(var_0.a, -1030f, var_2.c.x, vec3<u32>(var_2.d.d.x, 0u, 1u)), -1043f, var_2.d)))), var_2.d.d)));
    return vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_mod_u32(~(0u << (var_2.d.d.x % 32u)), 22044u), ~0u), _wgslsmith_mult_u32(35742u, 1u));
}

fn func_4(arg_0: vec2<u32>, arg_1: i32, arg_2: f32, arg_3: u32) -> Struct_2 {
    var var_0 = Struct_4(~(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(arg_1, arg_1)), max(vec2<i32>(-1i, u_input.c), vec2<i32>(-37258i, -18779i))) << ((min(arg_0.x, u_input.d) | _wgslsmith_add_u32(u_input.b, 0u)) % 32u)), false, _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -441f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(391f, arg_2, global0[_wgslsmith_index_u32(0u, 19u)])), _wgslsmith_f_op_f32(f32(-1f) * -482f))), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(floor(arg_2))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(arg_2)), _wgslsmith_f_op_f32(step(417f, 341f)), true))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, 208f, 983f, 1747f)) * _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(521f, -1631f, -1550f, arg_2))))))), Struct_1(-(i32(-1i) * -arg_1), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_2))), arg_2, vec3<u32>(25826u, ~80656u, abs(_wgslsmith_clamp_u32(arg_3, arg_0.x, 38505u)))));
    global1 = array<Struct_4, 27>();
    var_0 = global1[_wgslsmith_index_u32(~var_0.d.d.x, 27u)];
    global2 = array<vec3<i32>, 6>();
    var var_1 = vec3<i32>(-1i, -arg_1, reverseBits(_wgslsmith_div_i32(i32(-1i) * -1i, -_wgslsmith_sub_i32(7266i, -35149i))));
    return Struct_2(var_0.d, -975f, Struct_1(2364i, _wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.x) - _wgslsmith_f_op_f32(func_3(Struct_2(var_0.d, -347f, var_0.d)))), countOneBits(firstLeadingBit(vec3<u32>(u_input.b, var_0.d.d.x, 66551u) << (var_0.d.d % vec3<u32>(32u))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(_wgslsmith_mod_vec2_u32(func_1(), func_1()), ~(-12822i) ^ u_input.c, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1583f) + _wgslsmith_f_op_f32(f32(-1f) * -476f)))), abs(abs(~124799u)));
    global2 = array<vec3<i32>, 6>();
    var var_1 = _wgslsmith_sub_u32(_wgslsmith_sub_u32(abs(~_wgslsmith_mod_u32(u_input.d, var_0.a.d.x)), var_0.c.d.x), 1u);
    let var_2 = _wgslsmith_sub_i32(abs(0i), u_input.c ^ ~(~var_0.c.a)) >> (~(~_wgslsmith_mod_u32(~44621u, abs(1u))) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(~var_0.a.a, u_input.d);
}

