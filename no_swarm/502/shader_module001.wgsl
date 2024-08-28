struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: bool,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec4<u32>,
    d: vec2<u32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 31> = array<vec4<i32>, 31>(vec4<i32>(-1i, -8407i, 38645i, -46421i), vec4<i32>(-37642i, 2147483647i, -45316i, -53483i), vec4<i32>(44498i, -1309i, 0i, -10821i), vec4<i32>(1i, i32(-2147483648), 15837i, 2147483647i), vec4<i32>(-19019i, 6294i, -1i, 1i), vec4<i32>(2147483647i, -22351i, i32(-2147483648), 23029i), vec4<i32>(2147483647i, 63246i, 13725i, i32(-2147483648)), vec4<i32>(31027i, 0i, 2147483647i, -1i), vec4<i32>(1i, 2147483647i, 2147483647i, -61506i), vec4<i32>(2147483647i, 27109i, 0i, -35444i), vec4<i32>(i32(-2147483648), i32(-2147483648), 41168i, 1i), vec4<i32>(-1i, 9203i, 0i, -18378i), vec4<i32>(2147483647i, i32(-2147483648), 0i, 15936i), vec4<i32>(0i, 30411i, 1i, 1i), vec4<i32>(2147483647i, i32(-2147483648), -28083i, -1i), vec4<i32>(-34806i, 2147483647i, 0i, i32(-2147483648)), vec4<i32>(-32732i, 1i, -34304i, 68754i), vec4<i32>(1i, 0i, 0i, 46995i), vec4<i32>(20607i, 2147483647i, 18298i, i32(-2147483648)), vec4<i32>(0i, -22837i, -50363i, 73064i), vec4<i32>(-1750i, 18575i, 2147483647i, 34056i), vec4<i32>(-2748i, 0i, 4819i, -29426i), vec4<i32>(-21059i, 9390i, 1i, i32(-2147483648)), vec4<i32>(2147483647i, 37679i, i32(-2147483648), 2147483647i), vec4<i32>(i32(-2147483648), -41609i, 47547i, -22458i), vec4<i32>(4980i, 7795i, 2147483647i, -27309i), vec4<i32>(0i, 2147483647i, -35224i, -1i), vec4<i32>(0i, 46556i, 0i, 0i), vec4<i32>(-1i, 0i, 1i, i32(-2147483648)), vec4<i32>(-1i, 31199i, -35782i, 0i), vec4<i32>(43823i, i32(-2147483648), i32(-2147483648), 1i));

var<private> global1: i32 = -8462i;

var<private> global2: array<bool, 30> = array<bool, 30>(false, true, false, true, false, false, false, true, false, true, true, false, true, false, true, false, true, false, false, false, true, false, true, false, false, true, true, false, true, false);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> bool {
    global1 = 0i;
    return global2[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 30u)];
}

fn func_2(arg_0: i32, arg_1: Struct_1) -> u32 {
    global1 = ~arg_0;
    var var_0 = Struct_2(arg_1, arg_1.a, func_3(), vec3<i32>(~(_wgslsmith_add_i32(2147483647i, -55046i) | -arg_0), _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(0i, 48933i, 27115i, -1917i), global0[_wgslsmith_index_u32(19115u, 31u)]), ~global0[_wgslsmith_index_u32(43858u, 31u)]) << (((1u << (u_input.d % 32u)) << (~0u % 32u)) % 32u), min(-u_input.b.x, u_input.e)));
    global2 = array<bool, 30>();
    global1 = 1i;
    var var_1 = 2147483647i & _wgslsmith_dot_vec4_i32(global0[_wgslsmith_index_u32(4294967295u, 31u)], global0[_wgslsmith_index_u32(u_input.c, 31u)]);
    return ~(~select(0u, 1u, global2[_wgslsmith_index_u32(u_input.c, 30u)] | false)) >> (u_input.d % 32u);
}

fn func_1() -> i32 {
    global2 = array<bool, 30>();
    var var_0 = _wgslsmith_div_u32(u_input.c, ~u_input.c);
    let var_1 = _wgslsmith_f_op_f32(418f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -801f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -722f)), -350f)));
    let var_2 = abs(~func_2(u_input.a, Struct_1(var_1)) | 0u);
    var_0 = u_input.c;
    return 0i;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<bool, 30>();
    global1 = ~(min(func_1(), ~min(12099i, u_input.e)) | _wgslsmith_add_i32(u_input.e, u_input.e));
    let var_0 = select(vec4<bool>(global2[_wgslsmith_index_u32(1u, 30u)] & any(!vec2<bool>(global2[_wgslsmith_index_u32(u_input.c, 30u)], global2[_wgslsmith_index_u32(7414u, 30u)])), (~1u == func_2(u_input.b.x, Struct_1(-1197f))) == true, !func_3(), true || all(select(vec2<bool>(global2[_wgslsmith_index_u32(32626u, 30u)], true), vec2<bool>(true, global2[_wgslsmith_index_u32(1u, 30u)]), vec2<bool>(global2[_wgslsmith_index_u32(29336u, 30u)], global2[_wgslsmith_index_u32(0u, 30u)])))), !vec4<bool>(all(!vec3<bool>(false, true, global2[_wgslsmith_index_u32(u_input.c, 30u)])), !global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(60327u, u_input.c, u_input.c), 30u)], !(!global2[_wgslsmith_index_u32(u_input.c, 30u)]), func_3()), select(vec4<bool>(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, ~48774u), 30u)], global2[_wgslsmith_index_u32(u_input.d, 30u)], u_input.a < u_input.e, true), select(select(select(vec4<bool>(false, true, global2[_wgslsmith_index_u32(u_input.d, 30u)], true), vec4<bool>(true, global2[_wgslsmith_index_u32(32620u, 30u)], global2[_wgslsmith_index_u32(u_input.d, 30u)], false), true), vec4<bool>(true, true, global2[_wgslsmith_index_u32(u_input.d, 30u)], false), select(vec4<bool>(global2[_wgslsmith_index_u32(u_input.d, 30u)], false, false, global2[_wgslsmith_index_u32(7827u, 30u)]), vec4<bool>(global2[_wgslsmith_index_u32(1u, 30u)], true, false, true), vec4<bool>(false, global2[_wgslsmith_index_u32(4294967295u, 30u)], global2[_wgslsmith_index_u32(u_input.d, 30u)], true))), select(!vec4<bool>(global2[_wgslsmith_index_u32(u_input.d, 30u)], global2[_wgslsmith_index_u32(u_input.d, 30u)], true, true), vec4<bool>(global2[_wgslsmith_index_u32(58547u, 30u)], false, false, global2[_wgslsmith_index_u32(u_input.d, 30u)]), global2[_wgslsmith_index_u32(~u_input.d, 30u)]), !vec4<bool>(true, global2[_wgslsmith_index_u32(46933u, 30u)], false, false)), !global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_mult_u32(u_input.c, 13128u), ~0u), 30u)]));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(u_input.c, ~52979u, (_wgslsmith_sub_u32(u_input.d, 35893u) | ~0u) ^ 1u), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1620f)) + 1f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -231f))))), reverseBits(~(~vec4<u32>(0u, u_input.c, 63796u, 4294967295u))) >> (_wgslsmith_mod_vec4_u32(~vec4<u32>(4294967295u, 12802u, 1u, u_input.d) | ~vec4<u32>(77017u, 34032u, 16199u, 67712u), vec4<u32>(4294967295u, u_input.d << (u_input.c % 32u), max(1291u, 60584u), 1u)) % vec4<u32>(32u)), vec2<u32>(u_input.c, ~u_input.c), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(14292i, 1i), abs(1i), 1i, 18468i), global0[_wgslsmith_index_u32(countOneBits(max(17600u, 35281u)), 31u)]), ~((u_input.e << (u_input.d % 32u)) >> (u_input.d % 32u)), 3799i));
}

