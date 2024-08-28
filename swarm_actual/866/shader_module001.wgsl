struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec4<u32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 24> = array<vec4<u32>, 24>(vec4<u32>(51962u, 4294967295u, 1475u, 4294967295u), vec4<u32>(4294967295u, 44430u, 4294967295u, 9450u), vec4<u32>(1u, 1u, 1u, 0u), vec4<u32>(21153u, 70166u, 56845u, 1u), vec4<u32>(4294967295u, 67169u, 0u, 41131u), vec4<u32>(6114u, 1u, 4294967295u, 62121u), vec4<u32>(62615u, 37578u, 0u, 7493u), vec4<u32>(7599u, 40556u, 60012u, 23694u), vec4<u32>(7417u, 4294967295u, 0u, 1u), vec4<u32>(1u, 23466u, 100445u, 4294967295u), vec4<u32>(0u, 51257u, 10428u, 24381u), vec4<u32>(91050u, 0u, 4294967295u, 33382u), vec4<u32>(0u, 0u, 1u, 4294967295u), vec4<u32>(4294967295u, 4294967295u, 60669u, 37341u), vec4<u32>(0u, 4294967295u, 27041u, 0u), vec4<u32>(4294967295u, 4349u, 45995u, 0u), vec4<u32>(0u, 1u, 1u, 42972u), vec4<u32>(3460u, 0u, 0u, 0u), vec4<u32>(9572u, 37391u, 4294967295u, 0u), vec4<u32>(11912u, 4294967295u, 44826u, 29523u), vec4<u32>(32970u, 81401u, 4294967295u, 4294967295u), vec4<u32>(4294967295u, 55303u, 24995u, 0u), vec4<u32>(88179u, 4294967295u, 4294967295u, 52251u), vec4<u32>(1u, 64458u, 4294967295u, 4294967295u));

var<private> global1: i32 = 9190i;

var<private> global2: array<u32, 6> = array<u32, 6>(0u, 7740u, 0u, 4294967295u, 0u, 7241u);

var<private> global3: array<f32, 10>;

var<private> global4: array<i32, 31> = array<i32, 31>(17296i, 6787i, i32(-2147483648), -1i, -16335i, i32(-2147483648), -1i, 2147483647i, 1224i, -1i, i32(-2147483648), -35579i, -17149i, 0i, 306i, 2147483647i, 21738i, 1i, -11745i, 1i, 2147483647i, 0i, 37904i, 0i, 33083i, i32(-2147483648), 2147483647i, 7666i, 18622i, 0i, i32(-2147483648));

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec4<u32>, arg_1: vec4<u32>, arg_2: u32) -> u32 {
    var var_0 = Struct_4(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global3[_wgslsmith_index_u32(arg_0.x, 10u)], 713f, global3[_wgslsmith_index_u32(4294967295u, 10u)]), vec3<f32>(global3[_wgslsmith_index_u32(1u, 10u)], -1229f, -1777f), select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), false)))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(37376u, 10u)]), 1000f, -421f))))), _wgslsmith_mod_vec4_u32(~countOneBits(vec4<u32>(arg_1.x, 65017u, arg_2, 76563u)), firstTrailingBit(vec4<u32>(_wgslsmith_clamp_u32(arg_0.x, u_input.a.x, 49750u), 30323u, 11960u, ~6043u))), Struct_1(_wgslsmith_sub_i32(global4[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_clamp_u32(arg_2, 1u, 24868u)), 31u)], -_wgslsmith_mod_i32(global4[_wgslsmith_index_u32(637u, 31u)], global4[_wgslsmith_index_u32(4294967295u, 31u)]))));
    let var_1 = (_wgslsmith_add_i32(~(-25647i), 1i) | ((1i ^ _wgslsmith_mod_i32(2147483647i, global4[_wgslsmith_index_u32(0u, 31u)])) >> (~(~36101u) % 32u))) ^ ~var_0.c.a;
    global1 = var_0.c.a;
    var var_2 = vec2<u32>(reverseBits(~(~var_0.b.x ^ (var_0.b.x ^ global2[_wgslsmith_index_u32(u_input.a.x, 6u)]))), ~var_0.b.x);
    global4 = array<i32, 31>();
    return arg_1.x;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> vec3<bool> {
    let var_0 = Struct_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(-1076f)), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(func_3(vec4<u32>(u_input.a.x, u_input.a.x, 4482u, 1u), vec4<u32>(0u, 29317u, 5123u, 69635u), u_input.a.x), 10u)]), _wgslsmith_f_op_f32(max(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.a.xww, u_input.a.zwx), 10u)], 1025f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-651f, -231f, global3[_wgslsmith_index_u32(u_input.a.x, 10u)])))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 1505f, global3[_wgslsmith_index_u32(u_input.a.x, 10u)]) * vec3<f32>(207f, -2182f, -1124f)) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-232f, global3[_wgslsmith_index_u32(38951u, 10u)], global3[_wgslsmith_index_u32(1u, 10u)]), vec3<f32>(global3[_wgslsmith_index_u32(u_input.a.x, 10u)], global3[_wgslsmith_index_u32(4294967295u, 10u)], 1353f), true))))), _wgslsmith_clamp_vec4_u32(u_input.a, vec4<u32>(max(reverseBits(78593u), _wgslsmith_div_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 6u)], 6u)], 53543u)), 4294967295u, 4294967295u, 0u), ~vec4<u32>(1u, 4294967295u, u_input.a.x, 63405u) | u_input.a), Struct_1(1i));
    var var_1 = ~(-_wgslsmith_add_vec4_i32(~(-vec4<i32>(-7615i, global4[_wgslsmith_index_u32(u_input.a.x, 31u)], -1266i, arg_1.a)), ~(vec4<i32>(arg_1.a, 2147483647i, global4[_wgslsmith_index_u32(u_input.a.x, 31u)], 39182i) >> (vec4<u32>(0u, u_input.a.x, u_input.a.x, global2[_wgslsmith_index_u32(0u, 6u)]) % vec4<u32>(32u)))));
    var_1 = vec4<i32>(global4[_wgslsmith_index_u32(var_0.b.x, 31u)], ~reverseBits(arg_1.a), arg_1.a, _wgslsmith_mod_i32(max(1i ^ firstLeadingBit(var_0.c.a), var_1.x), _wgslsmith_div_i32(5973i | arg_1.a, abs(global4[_wgslsmith_index_u32(u_input.a.x, 31u)]))));
    let var_2 = ~vec3<i32>(~max(-arg_0.a, 22739i), -2147483647i, 6123i);
    let var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-965f, var_0.a.x), global3[_wgslsmith_index_u32(var_0.b.x, 10u)]) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global3[_wgslsmith_index_u32(u_input.a.x, 10u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(11779u, 10u)] + 1607f)))));
    return vec3<bool>(1u == ((_wgslsmith_dot_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(39693u, 6u)], 6754u, 5679u), vec3<u32>(4294967295u, var_0.b.x, var_0.b.x)) & firstTrailingBit(14458u)) >> (firstLeadingBit(var_0.b.x) % 32u)), !all(vec3<bool>(false, true, any(vec4<bool>(false, true, false, false)))), false);
}

fn func_1(arg_0: vec2<f32>) -> i32 {
    var var_0 = ~(u_input.a.yw << (u_input.a.wz % vec2<u32>(32u)));
    global3 = array<f32, 10>();
    let var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(738f, arg_0.x, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(14309u, 6u)], 6u)], 10u)], 112f) + vec4<f32>(global3[_wgslsmith_index_u32(39304u, 10u)], 184f, 829f, -425f)))) - vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(433f)), 429f), arg_0.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1444f - 206f))), 640f)), Struct_1(global4[_wgslsmith_index_u32(u_input.a.x, 31u)] | 1i));
    global1 = -39326i;
    let var_2 = select(select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), func_2(Struct_1(-2147483647i), var_1.b), true), vec3<bool>(u_input.a.x <= 1u, true, false)), func_2(var_1.b, Struct_1(-2147483647i)), select(740u, abs(0u), any(vec2<bool>(false, false))) >= _wgslsmith_sub_u32(u_input.a.x, func_3(u_input.a, vec4<u32>(global2[_wgslsmith_index_u32(13312u, 6u)], 4294967295u, u_input.a.x, u_input.a.x), global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_0.x, 6u)], 6u)]))), !vec3<bool>(-1i != firstLeadingBit(var_1.b.a), true, true), arg_0.x >= global3[_wgslsmith_index_u32(u_input.a.x, 10u)]);
    return global4[_wgslsmith_index_u32(u_input.a.x, 31u)];
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_3) -> Struct_1 {
    var var_0 = arg_1;
    var var_1 = Struct_4(_wgslsmith_f_op_vec3_f32(-arg_1.b.a.zwz), ~u_input.a, arg_1.b.b);
    var_0 = Struct_3(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(arg_1.a)))), Struct_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(arg_1.b.a, vec4<f32>(global3[_wgslsmith_index_u32(var_1.b.x, 10u)], var_1.a.x, var_1.a.x, 446f), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec4_f32(arg_1.b.a * vec4<f32>(global3[_wgslsmith_index_u32(0u, 10u)], 1031f, arg_1.a, global3[_wgslsmith_index_u32(var_1.b.x, 10u)]))), var_0.b.b));
    global3 = array<f32, 10>();
    global3 = array<f32, 10>();
    return arg_1.b.b;
}

fn func_5(arg_0: Struct_1, arg_1: i32) -> vec3<i32> {
    var var_0 = Struct_1(arg_1);
    var var_1 = 5395i;
    let var_2 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(4294967295u, 10u)]))) - global3[_wgslsmith_index_u32(firstTrailingBit(112705u) ^ _wgslsmith_mult_u32(58647u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 6u)], 6u)]), 10u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 6u)], 10u)])), _wgslsmith_f_op_f32(1793f * global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(35648u >> (u_input.a.x % 32u), 6u)], 10u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(68855u, 10u)] - -1595f)))), Struct_1(global4[_wgslsmith_index_u32(u_input.a.x, 31u)]));
    let var_3 = countOneBits(~((global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(u_input.a.x, 6u)], u_input.a.x, 53791u), vec3<u32>(78862u, 66559u, u_input.a.x)), 6u)] & _wgslsmith_div_u32(4294967295u, u_input.a.x)) >> ((u_input.a.x & (u_input.a.x ^ 0u)) % 32u)));
    let var_4 = Struct_3(var_2.a.x, var_2);
    return _wgslsmith_mod_vec3_i32(min(firstLeadingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(var_4.b.b.a, arg_1, -597i), max(vec3<i32>(-2147483647i, 41760i, var_2.b.a), vec3<i32>(1i, -47662i, -38276i)))), ~_wgslsmith_mod_vec3_i32(-vec3<i32>(4068i, global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 6u)], 31u)], arg_1), ~vec3<i32>(arg_0.a, 18463i, 1i))), ~vec3<i32>(var_2.b.a, -2147483647i, -8409i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_4(vec3<i32>(func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3[_wgslsmith_index_u32(u_input.a.x, 10u)], 220f))), 1i, -_wgslsmith_mod_i32(9756i, global4[_wgslsmith_index_u32(4294967295u, 31u)])), Struct_3(885f, Struct_2(vec4<f32>(global3[_wgslsmith_index_u32(30104u, 10u)], global3[_wgslsmith_index_u32(73u, 10u)], 1000f, global3[_wgslsmith_index_u32(u_input.a.x, 10u)]), Struct_1(global4[_wgslsmith_index_u32(49653u, 31u)])))), _wgslsmith_add_i32(global4[_wgslsmith_index_u32(~50858u >> (_wgslsmith_sub_u32(u_input.a.x, u_input.a.x) % 32u), 31u)], -(~(~(-18326i)))));
    let var_1 = ~(~_wgslsmith_dot_vec3_u32(reverseBits(_wgslsmith_mult_vec3_u32(u_input.a.xwz, u_input.a.xyw)), u_input.a.zyw));
    var var_2 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -206f), -1751f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(global3[_wgslsmith_index_u32(var_1, 10u)])), _wgslsmith_f_op_f32(f32(-1f) * -1920f))))), Struct_2(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(var_1, 10u)] * -800f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(0u, 10u)]) * global3[_wgslsmith_index_u32(46541u, 10u)]), 609f, global3[_wgslsmith_index_u32(u_input.a.x, 10u)]), func_4(firstLeadingBit(~vec3<i32>(-70286i, global4[_wgslsmith_index_u32(u_input.a.x, 31u)], 21021i)), Struct_3(1012f, Struct_2(vec4<f32>(global3[_wgslsmith_index_u32(var_1, 10u)], global3[_wgslsmith_index_u32(1u, 10u)], global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(739u, 6u)], 10u)], global3[_wgslsmith_index_u32(var_1, 10u)]), Struct_1(18965i))))));
    var var_3 = var_2.b.a;
    let var_4 = func_2(Struct_1(firstTrailingBit(_wgslsmith_add_i32(abs(-24808i), ~0i))), func_4(-(~(~vec3<i32>(2147483647i, -35372i, -20436i))), Struct_3(451f, Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a, var_3.x, var_2.a, -349f)), var_2.b.b)))).x;
    let x = u_input.a;
    s_output = StorageBuffer(~max(_wgslsmith_div_u32(1u, u_input.a.x), 68481u), var_2.a);
}

