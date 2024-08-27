struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: i32,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 5>;

var<private> global1: bool = false;

var<private> global2: array<Struct_2, 15> = array<Struct_2, 15>(Struct_2(vec2<i32>(52270i, 51032i), 4294967295u, 9580i, -62376i, vec4<f32>(-1019f, -267f, 290f, 259f)), Struct_2(vec2<i32>(2147483647i, 7420i), 76649u, 0i, -1i, vec4<f32>(-543f, 1000f, -812f, -1113f)), Struct_2(vec2<i32>(1i, -60357i), 0u, 0i, 41112i, vec4<f32>(-472f, -1000f, -2027f, -263f)), Struct_2(vec2<i32>(-9326i, -24428i), 85941u, 9009i, 2147483647i, vec4<f32>(-584f, -2113f, -825f, 794f)), Struct_2(vec2<i32>(i32(-2147483648), 0i), 24134u, i32(-2147483648), -1i, vec4<f32>(284f, 1124f, 653f, -375f)), Struct_2(vec2<i32>(0i, 2147483647i), 24024u, 2147483647i, 8572i, vec4<f32>(-451f, 313f, 1000f, 410f)), Struct_2(vec2<i32>(-1i, -1i), 0u, -40277i, 36124i, vec4<f32>(1000f, -1000f, -996f, -436f)), Struct_2(vec2<i32>(-26227i, -20081i), 22290u, 10576i, 57157i, vec4<f32>(-171f, -1000f, -458f, 514f)), Struct_2(vec2<i32>(0i, 0i), 7232u, 2147483647i, -9409i, vec4<f32>(-2235f, 895f, -464f, 1246f)), Struct_2(vec2<i32>(-18049i, 0i), 34601u, 8492i, 25438i, vec4<f32>(-1304f, 751f, 1287f, -735f)), Struct_2(vec2<i32>(i32(-2147483648), i32(-2147483648)), 17765u, -24834i, 29420i, vec4<f32>(-396f, -471f, 334f, -710f)), Struct_2(vec2<i32>(42472i, -1i), 18685u, 90858i, 0i, vec4<f32>(-1000f, 754f, -228f, -230f)), Struct_2(vec2<i32>(4069i, i32(-2147483648)), 91831u, -39278i, -17268i, vec4<f32>(-1146f, 1187f, 1220f, 217f)), Struct_2(vec2<i32>(-17579i, 29596i), 1u, i32(-2147483648), 0i, vec4<f32>(-335f, -1566f, -1121f, -636f)), Struct_2(vec2<i32>(15633i, -8237i), 46437u, -1i, i32(-2147483648), vec4<f32>(-228f, -3257f, -344f, 1000f)));

var<private> global3: array<f32, 20>;

var<private> global4: f32 = -659f;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: vec4<i32>) -> u32 {
    global2 = array<Struct_2, 15>();
    global1 = false;
    global0 = array<bool, 5>();
    global2 = array<Struct_2, 15>();
    let var_0 = vec3<i32>(u_input.a.x >> (1u % 32u), -1i, 2147483647i);
    return ~0u;
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = -_wgslsmith_mult_vec4_i32(vec4<i32>(-1i >> (1u % 32u), ~u_input.a.x, 34918i, select(u_input.a.x, 1i, global0[_wgslsmith_index_u32(0u, 5u)])), ~(-vec4<i32>(0i, u_input.a.x, u_input.a.x, u_input.a.x))) & vec4<i32>(u_input.a.x, i32(-1i) * -_wgslsmith_mod_i32(u_input.a.x, u_input.a.x), ~u_input.a.x, 1i);
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b * 1000f))) * _wgslsmith_div_f32(-583f, 1763f)), _wgslsmith_div_f32(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(func_3(Struct_1(true, global3[_wgslsmith_index_u32(u_input.c.x, 20u)]), 8609u, vec4<i32>(-1i, var_0.x, 47492i, 1i)), firstLeadingBit(_wgslsmith_dot_vec4_u32(u_input.c, u_input.c))), 20u)], _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(global3[_wgslsmith_index_u32(u_input.c.x, 20u)], _wgslsmith_f_op_f32(f32(-1f) * -830f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(4294967295u, 20u)] * 357f))))));
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(1125f)), arg_0.b), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-268f, arg_0.b)))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global3[_wgslsmith_index_u32(u_input.c.x, 20u)], global3[_wgslsmith_index_u32(u_input.b.x, 20u)])))))));
    var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b, global3[_wgslsmith_index_u32(u_input.b.x, 20u)])) * _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(736f, 1530f)))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(vec2<f32>(arg_0.b, -2313f), vec2<f32>(arg_0.b, 621f)))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, var_1.x) + vec2<f32>(arg_0.b, arg_0.b)))), vec2<bool>(arg_0.a, arg_0.a))) * _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-860f, 719f)))));
    var var_2 = var_0.x;
    return Struct_1(true, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, 212f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(2034f)))))));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<f32>) -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1842f, -190f) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_3.xx, _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_1.b, 737f)))))));
    let var_1 = vec4<f32>(global3[_wgslsmith_index_u32(~72120u, 20u)], -1001f, var_0.x, -333f);
    global2 = array<Struct_2, 15>();
    var var_2 = global2[_wgslsmith_index_u32(39408u, 15u)];
    var var_3 = any(select(select(select(select(vec2<bool>(global0[_wgslsmith_index_u32(var_2.b, 5u)], false), vec2<bool>(arg_1.a, global0[_wgslsmith_index_u32(182u, 5u)]), vec2<bool>(arg_2.a, false)), select(vec2<bool>(false, false), vec2<bool>(arg_1.a, false), vec2<bool>(true, global0[_wgslsmith_index_u32(0u, 5u)])), -863f < arg_2.b), select(!vec2<bool>(true, arg_1.a), select(vec2<bool>(true, arg_1.a), vec2<bool>(global0[_wgslsmith_index_u32(0u, 5u)], false), arg_2.a), select(vec2<bool>(true, arg_2.a), vec2<bool>(arg_2.a, true), vec2<bool>(arg_1.a, arg_1.a))), select(select(vec2<bool>(true, arg_2.a), vec2<bool>(false, arg_2.a), vec2<bool>(true, true)), vec2<bool>(arg_1.a, false), true)), vec2<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 5u)], !(global0[_wgslsmith_index_u32(var_2.b, 5u)] & arg_2.a)), vec2<bool>(!all(vec2<bool>(true, arg_1.a)), true)));
    return abs(~(vec3<u32>(33646u, 8993u, var_2.b) << (u_input.c.yzz % vec3<u32>(32u)))) | vec3<u32>(u_input.c.x, 1u, 12364u);
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: i32, arg_3: Struct_2) -> u32 {
    var var_0 = vec3<u32>(~(~arg_3.b), _wgslsmith_dot_vec3_u32(func_4(vec3<i32>(u_input.a.x, 2147483647i, ~u_input.a.x), Struct_1(any(vec4<bool>(global0[_wgslsmith_index_u32(0u, 5u)], false, false, global0[_wgslsmith_index_u32(u_input.c.x, 5u)])), 2291f), func_2(Struct_1(arg_0, 556f)), vec3<f32>(_wgslsmith_f_op_f32(-854f * -427f), global3[_wgslsmith_index_u32(arg_3.b, 20u)], arg_3.e.x)), vec3<u32>(~41655u, 68934u, _wgslsmith_div_u32(u_input.b.x, arg_1))), (arg_1 ^ func_3(func_2(Struct_1(arg_0, arg_3.e.x)), _wgslsmith_mult_u32(0u, u_input.c.x), abs(vec4<i32>(u_input.a.x, 7670i, 0i, 794i)))) | 35687u);
    var var_1 = select(vec4<bool>(select(true, all(vec4<bool>(arg_0, global0[_wgslsmith_index_u32(var_0.x, 5u)], true, true)), true), true, !arg_0, global0[_wgslsmith_index_u32(arg_1, 5u)]), select(!(!select(vec4<bool>(global0[_wgslsmith_index_u32(1u, 5u)], false, true, true), vec4<bool>(global0[_wgslsmith_index_u32(1u, 5u)], false, global0[_wgslsmith_index_u32(arg_1, 5u)], false), false)), !(!vec4<bool>(true, global0[_wgslsmith_index_u32(16352u, 5u)], false, arg_0)), !vec4<bool>(any(vec2<bool>(arg_0, global0[_wgslsmith_index_u32(42186u, 5u)])), global0[_wgslsmith_index_u32(~4294967295u, 5u)], true, false | arg_0)), !(!vec4<bool>(global0[_wgslsmith_index_u32(1u, 5u)], arg_0 | arg_0, global3[_wgslsmith_index_u32(127604u, 20u)] == 764f, true)));
    let var_2 = Struct_1((((24891u | arg_1) == ~102048u) & var_1.x) | func_2(func_2(Struct_1(false, -389f))).a, global3[_wgslsmith_index_u32(~_wgslsmith_add_u32(u_input.c.x, 15005u), 20u)]);
    return 1u;
}

fn func_5(arg_0: u32, arg_1: Struct_1, arg_2: Struct_2) -> f32 {
    let var_0 = global0[_wgslsmith_index_u32(arg_2.b, 5u)];
    let var_1 = arg_2.e.yz;
    return _wgslsmith_f_op_f32(-arg_1.b);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = _wgslsmith_f_op_f32(func_5(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(reverseBits(u_input.c.xzw & vec3<u32>(1u, u_input.b.x, u_input.b.x)), _wgslsmith_mult_vec3_u32(u_input.c.xxx, firstTrailingBit(u_input.c.zzw))), abs(vec3<u32>(firstTrailingBit(u_input.c.x), firstLeadingBit(27626u), u_input.c.x))), Struct_1(false, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.b.x, 20u)]), -629f)), Struct_2(vec2<i32>(_wgslsmith_sub_i32(u_input.a.x, u_input.a.x), _wgslsmith_clamp_i32(-2147483647i, -2147483647i, reverseBits(-3765i))), 0u & _wgslsmith_div_u32(1u, u_input.b.x), ~u_input.a.x, abs(-(~(-2147483647i))), vec4<f32>(-217f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -741f) * global3[_wgslsmith_index_u32(reverseBits(u_input.b.x), 20u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.c.x, 20u)]) - global3[_wgslsmith_index_u32(~103341u, 20u)]), global3[_wgslsmith_index_u32(~func_1(global0[_wgslsmith_index_u32(12915u, 5u)], 0u, 2147483647i, global2[_wgslsmith_index_u32(20625u, 15u)]), 20u)]))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.c.x, 20u)]), func_4(vec3<i32>(~(-2147483647i), u_input.a.x, _wgslsmith_sub_i32(-1i, -43572i)), func_2(Struct_1(false, _wgslsmith_div_f32(263f, global3[_wgslsmith_index_u32(u_input.b.x, 20u)]))), func_2(func_2(func_2(Struct_1(global0[_wgslsmith_index_u32(4294967295u, 5u)], global3[_wgslsmith_index_u32(4294967295u, 20u)])))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1204f, -658f, 700f))) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-311f, global3[_wgslsmith_index_u32(u_input.b.x, 20u)], 170f), vec3<f32>(-1389f, 769f, global3[_wgslsmith_index_u32(u_input.c.x, 20u)]), true))))), firstLeadingBit(vec3<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, u_input.b.x, u_input.b.x), u_input.c), ~u_input.c), func_3(Struct_1(true, global3[_wgslsmith_index_u32(25105u, 20u)]), 0u, vec4<i32>(u_input.a.x, 15702i, u_input.a.x, -1i)) ^ _wgslsmith_div_u32(4294967295u, 115658u), 31177u)));
}

