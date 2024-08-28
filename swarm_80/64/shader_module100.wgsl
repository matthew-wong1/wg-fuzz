struct Struct_1 {
    a: u32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_1,
}

struct Struct_5 {
    a: vec3<u32>,
    b: Struct_4,
    c: i32,
    d: f32,
    e: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(13968u, vec3<i32>(11113i, 1i, 18834i)), Struct_1(0u, vec3<i32>(-31506i, 68574i, 2147483647i)), Struct_1(0u, vec3<i32>(-37995i, 1i, 1i)), Struct_1(33103u, vec3<i32>(11047i, 1i, -16487i)), Struct_1(15223u, vec3<i32>(2147483647i, 2147483647i, i32(-2147483648))), Struct_1(0u, vec3<i32>(-35879i, 1i, 28802i)), Struct_1(57015u, vec3<i32>(2147483647i, 15756i, 1i)), Struct_1(50436u, vec3<i32>(-21500i, 14515i, 0i)), Struct_1(69027u, vec3<i32>(0i, i32(-2147483648), -35111i)), Struct_1(41094u, vec3<i32>(0i, i32(-2147483648), 0i)), Struct_1(1u, vec3<i32>(45313i, 8475i, 4468i)), Struct_1(4294967295u, vec3<i32>(0i, 12017i, -2663i)), Struct_1(25782u, vec3<i32>(0i, -1i, 13067i)), Struct_1(4294967295u, vec3<i32>(75047i, -19048i, i32(-2147483648))), Struct_1(1u, vec3<i32>(-21494i, 1i, 2147483647i)), Struct_1(0u, vec3<i32>(62646i, 71958i, 0i)), Struct_1(17754u, vec3<i32>(2147483647i, 53338i, 1i)), Struct_1(27542u, vec3<i32>(i32(-2147483648), 2147483647i, -33380i)), Struct_1(61598u, vec3<i32>(1i, 18291i, 2147483647i)), Struct_1(0u, vec3<i32>(2147483647i, 44725i, -1i)), Struct_1(114651u, vec3<i32>(-7460i, -2510i, 11715i)), Struct_1(6334u, vec3<i32>(0i, 40549i, 60986i)), Struct_1(4294967295u, vec3<i32>(-1i, -18055i, -13093i)), Struct_1(53323u, vec3<i32>(0i, 6600i, 47517i)), Struct_1(9070u, vec3<i32>(51435i, 28219i, 0i)), Struct_1(21402u, vec3<i32>(-67310i, 25976i, 0i)), Struct_1(28301u, vec3<i32>(-29288i, 0i, -8793i)), Struct_1(0u, vec3<i32>(1i, 1i, 1i)));

var<private> global1: bool;

var<private> global2: Struct_3;

var<private> global3: array<u32, 30>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: vec4<u32>) -> vec4<i32> {
    let var_0 = arg_0.a;
    let var_1 = vec2<u32>(_wgslsmith_mod_u32(var_0.a, ~arg_0.a.a), _wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(global3[_wgslsmith_index_u32(1u, 30u)], u_input.c.x, _wgslsmith_sub_u32(arg_0.a.a, 1u))), abs(vec3<u32>(~var_0.a, ~7149u, 4294967295u))));
    let var_2 = ~(~vec4<u32>(var_0.a ^ ~0u, _wgslsmith_dot_vec3_u32(vec3<u32>(34782u, 4294967295u, 0u) << (vec3<u32>(4294967295u, var_1.x, u_input.b.x) % vec3<u32>(32u)), vec3<u32>(4294967295u, arg_2.x, var_1.x)), u_input.c.x, 14740u));
    let var_3 = all(select(vec3<bool>(!select(true, false, false), true, false), !(!select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false))), select(arg_1.x > -421f, true, (4294967295u != arg_0.a.a) | (arg_1.x <= 225f))));
    let var_4 = var_3;
    return select(reverseBits(~vec4<i32>(14210i, var_0.b.x, -1i, global2.a)) & vec4<i32>(-5606i, ~(~52307i), _wgslsmith_dot_vec4_i32(vec4<i32>(global2.a, u_input.d, -47494i, -14227i), -vec4<i32>(global2.a, global2.a, arg_0.a.b.x, arg_0.a.b.x)), firstTrailingBit(35498i)), ~vec4<i32>(_wgslsmith_mult_i32(-20024i, ~55476i), global2.a, -(~var_0.b.x), _wgslsmith_sub_i32(i32(-1i) * -16698i, -36322i)), select(select(vec4<bool>(var_4, true, !var_3, var_0.b.x >= -39730i), !vec4<bool>(var_4, true, true, true), vec4<bool>(true, u_input.a == u_input.a, any(vec2<bool>(true, true)), any(vec2<bool>(var_3, var_3)))), select(select(!vec4<bool>(false, var_4, true, false), !vec4<bool>(var_4, var_3, false, var_4), !var_4), vec4<bool>(true, !var_4, var_3, var_3), !(!vec4<bool>(true, var_4, var_3, var_4))), vec4<bool>(!(2147483647i != u_input.d), false, true, ~16953u == _wgslsmith_mult_u32(17499u, var_1.x))));
}

fn func_2(arg_0: vec2<u32>, arg_1: i32, arg_2: Struct_4, arg_3: f32) -> u32 {
    global1 = select(true, !(global3[_wgslsmith_index_u32(arg_0.x, 30u)] >= 34125u), any(select(select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true), select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false)), select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false))), vec3<bool>(true, true, true), false)));
    var var_0 = 668f;
    var var_1 = (~reverseBits(u_input.a) >> (~1u % 32u)) >= ~(~(~u_input.a));
    var var_2 = func_3(Struct_2(arg_2.b), arg_2.a, ~(~_wgslsmith_add_vec4_u32(vec4<u32>(1u, 1u, 0u, arg_2.b.a), vec4<u32>(arg_0.x, arg_0.x, global3[_wgslsmith_index_u32(arg_2.b.a, 30u)], arg_2.b.a) & vec4<u32>(global3[_wgslsmith_index_u32(15139u, 30u)], arg_0.x, 1u, u_input.c.x))));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3) - _wgslsmith_f_op_f32(max(-999f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(arg_2.a.x, 810f, false))))))) != arg_2.a.x;
    return firstTrailingBit(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(min(vec4<u32>(arg_2.b.a, 4294967295u, 55163u, u_input.a), vec4<u32>(0u, u_input.a, u_input.b.x, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(arg_2.b.a, 30u)], 30u)])), firstLeadingBit(vec4<u32>(arg_0.x, 1u, global3[_wgslsmith_index_u32(u_input.a, 30u)], 0u))), countOneBits(~vec4<u32>(13661u, 48721u, 50591u, arg_0.x)), vec4<u32>(1u, arg_2.b.a, u_input.c.x, global3[_wgslsmith_index_u32(arg_2.b.a, 30u)]) ^ ~vec4<u32>(6517u, 4294967295u, arg_0.x, arg_2.b.a)), abs(vec4<u32>(0u, u_input.a, global3[_wgslsmith_index_u32(arg_0.x, 30u)], arg_2.b.a)) << (((vec4<u32>(0u, global3[_wgslsmith_index_u32(u_input.b.x, 30u)], arg_2.b.a, arg_0.x) >> (vec4<u32>(49356u, arg_0.x, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(73921u, 30u)], 30u)], arg_2.b.a) % vec4<u32>(32u))) >> (~vec4<u32>(1u, u_input.c.x, 1u, 4294967295u) % vec4<u32>(32u))) % vec4<u32>(32u))));
}

fn func_1(arg_0: i32) -> Struct_2 {
    let var_0 = !(!(false & (func_2(vec2<u32>(global3[_wgslsmith_index_u32(4294967295u, 30u)], 0u), 20339i, Struct_4(vec4<f32>(-113f, 567f, 1134f, -457f), global0[_wgslsmith_index_u32(u_input.c.x, 28u)]), -1647f) >= global3[_wgslsmith_index_u32(0u, 30u)])));
    let var_1 = Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-682f, 604f, -1217f, -1000f), vec4<f32>(790f, 2326f, 1000f, 901f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1297f, -232f, -1203f, 169f), vec4<f32>(342f, -321f, -1774f, 661f))))), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(firstLeadingBit(vec3<u32>(u_input.c.x, u_input.c.x, 35901u)) >> (~vec3<u32>(49923u, global3[_wgslsmith_index_u32(1946u, 30u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b.x, 30u)], 30u)], 30u)], 30u)]) % vec3<u32>(32u)), ~(~vec3<u32>(23637u, 24697u, 56572u))), vec3<u32>(~63470u, ~0u ^ _wgslsmith_mod_u32(u_input.b.x, 55807u), func_2(vec2<u32>(41268u, 1u) | vec2<u32>(25038u, u_input.b.x), _wgslsmith_add_i32(u_input.d, arg_0), Struct_4(vec4<f32>(-894f, 264f, 3037f, 1014f), global0[_wgslsmith_index_u32(0u, 28u)]), 1466f))), 28u)]);
    let var_2 = var_1.a.x;
    var var_3 = Struct_2(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~(~_wgslsmith_div_u32(global3[_wgslsmith_index_u32(var_1.b.a, 30u)], _wgslsmith_sub_u32(u_input.a, 4294967295u))), 30u)], 28u)]);
    global2 = Struct_3(arg_0);
    return Struct_2(Struct_1(~34865u << (_wgslsmith_dot_vec3_u32(~vec3<u32>(global3[_wgslsmith_index_u32(51007u, 30u)], var_1.b.a, var_1.b.a), ~vec3<u32>(global3[_wgslsmith_index_u32(u_input.a, 30u)], var_1.b.a, global3[_wgslsmith_index_u32(u_input.c.x, 30u)])) % 32u), countOneBits(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.d, 6271i, 7393i) ^ var_3.a.b, vec3<i32>(arg_0, arg_0, -2147483647i)))));
}

fn func_4(arg_0: Struct_5, arg_1: Struct_2) -> bool {
    let var_0 = firstLeadingBit(arg_1.a.b.yy);
    global2 = Struct_3(firstLeadingBit(countOneBits(arg_1.a.b.x)) >> (arg_1.a.a % 32u));
    global3 = array<u32, 30>();
    global1 = false;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0.e.a.x, _wgslsmith_f_op_f32(-arg_0.b.a.x), true)) * -1000f) - -336f);
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(vec4<bool>(func_4(Struct_5(~vec3<u32>(30513u, u_input.b.x, global3[_wgslsmith_index_u32(4294967295u, 30u)]), Struct_4(vec4<f32>(-1340f, -521f, -558f, 1000f), global0[_wgslsmith_index_u32(75134u, 28u)]), global2.a, -1071f, Struct_4(vec4<f32>(1805f, 510f, -1626f, -152f), global0[_wgslsmith_index_u32(23540u, 28u)])), func_1(14822i)), true, false, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(267f + 631f), -196f, true)) != 625f));
    let var_1 = !(!vec4<bool>(false, false, any(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false))), true));
    let var_2 = Struct_3(global2.a);
    global1 = var_1.x;
    global1 = !var_1.x;
    var var_3 = select(var_1.x, var_1.x, all(vec3<bool>(false, false, var_1.x || !var_1.x)));
    var var_4 = Struct_5(vec3<u32>(u_input.b.x, global3[_wgslsmith_index_u32(4294967295u, 30u)], ~(~7416u)), Struct_4(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1422f), _wgslsmith_f_op_f32(-481f - _wgslsmith_f_op_f32(f32(-1f) * -463f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(506f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(631f)), -260f))), func_1(~global2.a).a), u_input.d, _wgslsmith_f_op_f32(ceil(-1000f)), Struct_4(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(724f, 342f, 1830f, 1929f)), vec4<f32>(_wgslsmith_f_op_f32(step(-650f, -2792f)), _wgslsmith_f_op_f32(739f + 1234f), -214f, -124f)), global0[_wgslsmith_index_u32(4294967295u, 28u)]));
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec2<u32>(~(~1u), var_4.b.b.a)), _wgslsmith_f_op_f32(-var_4.b.a.x));
}

