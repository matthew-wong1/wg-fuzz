struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<u32, 31>;

var<private> global2: array<bool, 24>;

var<private> global3: u32;

var<private> global4: array<Struct_2, 16>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2() -> Struct_2 {
    var var_0 = ~u_input.a.x;
    global1 = array<u32, 31>();
    global3 = ~(~min(_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(u_input.c, 31u)], 0u) | reverseBits(global1[_wgslsmith_index_u32(0u, 31u)]), _wgslsmith_clamp_u32(firstTrailingBit(4294967295u), 1127u, countOneBits(15157u))));
    let var_1 = Struct_2(Struct_1(vec3<u32>(global1[_wgslsmith_index_u32(~_wgslsmith_add_u32(16386u, global1[_wgslsmith_index_u32(147u, 31u)]), 31u)], ~(~1u), ~_wgslsmith_mult_u32(0u, global1[_wgslsmith_index_u32(4294967295u, 31u)]))), ~_wgslsmith_mult_vec3_u32(vec3<u32>(max(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(24243u, 31u)], 31u)], global1[_wgslsmith_index_u32(u_input.b, 31u)]), 0u, u_input.b), vec3<u32>(abs(8545u), ~u_input.b, u_input.b ^ u_input.c)));
    var var_2 = Struct_3(!(all(select(vec2<bool>(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 31u)], 24u)], true), vec2<bool>(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(52491u, 31u)], 24u)], false), vec2<bool>(global2[_wgslsmith_index_u32(21691u, 24u)], global2[_wgslsmith_index_u32(var_1.a.a.x, 24u)]))) && !global2[_wgslsmith_index_u32(firstLeadingBit(u_input.b), 24u)]), Struct_1(vec3<u32>(abs(global1[_wgslsmith_index_u32(u_input.c, 31u)]), u_input.c, _wgslsmith_clamp_u32(71596u, abs(u_input.c), global1[_wgslsmith_index_u32(~18046u, 31u)]))), Struct_1(var_1.a.a | _wgslsmith_clamp_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(u_input.b, 31u)], 4294967295u, 0u), var_1.a.a, max(vec3<u32>(u_input.c, 86504u, var_1.b.x), vec3<u32>(u_input.c, 20316u, 4294967295u)))), var_1);
    return Struct_2(Struct_1(vec3<u32>(abs(abs(var_2.d.a.a.x)), ~4294967295u, global1[_wgslsmith_index_u32(_wgslsmith_add_u32(var_1.b.x, global1[_wgslsmith_index_u32(4294967295u, 31u)]), 31u)])), _wgslsmith_div_vec3_u32(vec3<u32>(var_2.c.a.x, 1u, ~_wgslsmith_add_u32(14518u, var_1.a.a.x)), firstLeadingBit(vec3<u32>(abs(1u), ~44392u, 51581u))));
}

fn func_3() -> u32 {
    let var_0 = select(vec4<u32>(0u, ~global1[_wgslsmith_index_u32(30695u | ~u_input.b, 31u)], ~(~u_input.c) >> (firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 1u, 0u, 0u), vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b, 31u)], 31u)], 31u)], 53384u, 1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 31u)], 31u)], 31u)]))) % 32u), select(53406u, _wgslsmith_div_u32(~1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b, 31u)], 31u)]), select(!global2[_wgslsmith_index_u32(1u, 24u)], any(vec4<bool>(global2[_wgslsmith_index_u32(15537u, 24u)], false, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 31u)], 31u)], 24u)], false)), true))), vec4<u32>(71113u, 1u, global1[_wgslsmith_index_u32(0u, 31u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(~firstTrailingBit(u_input.c), u_input.b), 31u)], 31u)]), true);
    var var_1 = global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~countOneBits(~(~_wgslsmith_mod_u32(4294967295u, 4294967295u))), 31u)], 16u)];
    global1 = array<u32, 31>();
    return _wgslsmith_add_u32(_wgslsmith_add_u32(var_0.x, var_0.x), ~global1[_wgslsmith_index_u32(1u, 31u)]);
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: vec4<f32>) -> Struct_2 {
    global3 = _wgslsmith_sub_u32(arg_0.b.x, u_input.b);
    let var_0 = arg_0.a;
    let var_1 = -(_wgslsmith_div_vec3_i32(firstLeadingBit(vec3<i32>(u_input.a.x, u_input.a.x, -11899i)) << (~arg_0.b % vec3<u32>(32u)), vec3<i32>(-1i) * -vec3<i32>(-64478i, 62132i, u_input.a.x)) << (arg_0.b % vec3<u32>(32u)));
    var var_2 = vec3<u32>(_wgslsmith_sub_u32(65813u, 1u), func_3(), ~_wgslsmith_dot_vec3_u32(~vec3<u32>(var_0.a.x, 44611u, 14025u), select(_wgslsmith_clamp_vec3_u32(var_0.a, var_0.a, vec3<u32>(u_input.b, arg_0.a.a.x, u_input.c)), var_0.a, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(69177u, 31u)], 24u)])));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1245f - arg_2.x))) + 504f) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(arg_2.x)), _wgslsmith_f_op_f32(floor(arg_2.x))))));
    return Struct_2(Struct_1(var_0.a), arg_0.b);
}

fn func_1() -> f32 {
    global3 = _wgslsmith_div_u32(u_input.c, 20004u);
    global4 = array<Struct_2, 16>();
    global1 = array<u32, 31>();
    let var_0 = -firstLeadingBit(u_input.a.x);
    let var_1 = func_4(func_2(), ~((i32(-1i) * -19454i) << (func_3() % 32u)), vec4<f32>(_wgslsmith_f_op_f32(floor(-1083f)), _wgslsmith_f_op_f32(sign(502f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-163f * _wgslsmith_f_op_f32(step(1095f, -1055f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + -241f) * _wgslsmith_f_op_f32(floor(1000f))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-100f, 200f)))));
    return 350f;
}

fn func_5(arg_0: f32, arg_1: i32) -> Struct_1 {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(522f)) - _wgslsmith_f_op_f32(-225f - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(f32(-1f) * -581f)), arg_0))));
    var var_0 = vec2<bool>(global2[_wgslsmith_index_u32(func_2().a.a.x, 24u)], global2[_wgslsmith_index_u32(~(~global1[_wgslsmith_index_u32(abs(u_input.c), 31u)]), 24u)]);
    var_0 = !(!vec2<bool>(true, var_0.x));
    var var_1 = Struct_2(func_2().a, ~(func_2().b | ~_wgslsmith_mod_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b, 31u)], 31u)], 4294967295u, u_input.c), vec3<u32>(1u, 1947u, 5542u))));
    let var_2 = u_input.a;
    return func_4(func_4(global4[_wgslsmith_index_u32(u_input.c, 16u)], 7298i, vec4<f32>(arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 * 1076f) + _wgslsmith_f_op_f32(min(383f, arg_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-561f + -359f)), _wgslsmith_f_op_f32(abs(arg_0)))), -(~_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_2.x, arg_1), vec2<i32>(arg_1, 3765i)), _wgslsmith_div_i32(10150i, arg_1))), vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1735f))))), _wgslsmith_f_op_f32(max(arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 - arg_0) - _wgslsmith_f_op_f32(step(505f, -1881f))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0, arg_0, global2[_wgslsmith_index_u32(0u, 24u)])) + _wgslsmith_f_op_f32(1881f * arg_0)))), 1000f)).a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_1()))), u_input.a.x);
    var var_1 = vec3<u32>(~(~47122u), ((_wgslsmith_add_u32(global1[_wgslsmith_index_u32(1u, 31u)], var_0.a.x) | 4294967295u) & ~var_0.a.x) & func_5(603f, _wgslsmith_mult_i32(-1i | u_input.a.x, ~u_input.a.x)).a.x, ~_wgslsmith_clamp_u32(0u, 27160u, u_input.c << (~1u % 32u)));
    let var_2 = func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(828f - -377f)), 0i);
    var var_3 = vec4<i32>(2147483647i, 0i, ~(-2147483647i), -2147483647i);
    let var_4 = select(vec2<bool>(false, select(true, global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_0.a.x, max(global1[_wgslsmith_index_u32(u_input.b, 31u)], 4294967295u)), 24u)], !global2[_wgslsmith_index_u32(42192u, 24u)] | true)), vec2<bool>(false, true), !all(!select(vec4<bool>(true, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 31u)], 24u)], true, global2[_wgslsmith_index_u32(22925u, 24u)]), vec4<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 24u)], true, true), vec4<bool>(global2[_wgslsmith_index_u32(u_input.b, 24u)], global2[_wgslsmith_index_u32(var_2.a.x, 24u)], true, global2[_wgslsmith_index_u32(24367u, 24u)]))));
    let x = u_input.a;
    s_output = StorageBuffer(~(var_1.x << (~(~var_1.x) % 32u)));
}

