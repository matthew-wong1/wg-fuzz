struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<bool, 19>;

var<private> global2: vec4<i32> = vec4<i32>(i32(-2147483648), -67437i, -69202i, i32(-2147483648));

var<private> global3: array<vec3<bool>, 4>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: f32) -> vec4<u32> {
    let var_0 = select(vec4<i32>(global2.x, 0i, _wgslsmith_mult_i32(select(-global2.x, 0i, global1[_wgslsmith_index_u32(~0u, 19u)]), global2.x), ~(-global2.x)), select(vec4<i32>(0i, 0i, global2.x & -2147483647i, _wgslsmith_mult_i32(u_input.c, global2.x)) << (_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.b, 18326u, 3333u, u_input.a), select(vec4<u32>(u_input.b, 54540u, u_input.b, u_input.b), vec4<u32>(u_input.b, u_input.b, 0u, 44587u), global1[_wgslsmith_index_u32(1u, 19u)])) % vec4<u32>(32u)), -min(vec4<i32>(1i, 1i, 1i, 1i), max(vec4<i32>(-2147483647i, u_input.c, u_input.c, global2.x), vec4<i32>(0i, -3387i, global2.x, 81032i))), !select(vec4<bool>(global1[_wgslsmith_index_u32(0u, 19u)], global1[_wgslsmith_index_u32(u_input.b, 19u)], global1[_wgslsmith_index_u32(u_input.a, 19u)], global1[_wgslsmith_index_u32(u_input.a, 19u)]), select(vec4<bool>(global1[_wgslsmith_index_u32(38867u, 19u)], false, global1[_wgslsmith_index_u32(0u, 19u)], global1[_wgslsmith_index_u32(u_input.a, 19u)]), vec4<bool>(true, false, global1[_wgslsmith_index_u32(u_input.b, 19u)], global1[_wgslsmith_index_u32(u_input.a, 19u)]), vec4<bool>(false, false, global1[_wgslsmith_index_u32(1u, 19u)], global1[_wgslsmith_index_u32(u_input.b, 19u)])), !global1[_wgslsmith_index_u32(4294967295u, 19u)])), global1[_wgslsmith_index_u32(u_input.b, 19u)]);
    var var_1 = Struct_1(~(~_wgslsmith_div_vec4_u32(vec4<u32>(9650u, 1u, u_input.b, u_input.a) | vec4<u32>(82427u, 4294967295u, 73802u, u_input.a), _wgslsmith_add_vec4_u32(vec4<u32>(11698u, 1u, u_input.a, u_input.b), vec4<u32>(20549u, u_input.a, u_input.b, 0u)))), global2.x, select(!vec4<bool>(true, global1[_wgslsmith_index_u32(9868u, 19u)] | true, true & global1[_wgslsmith_index_u32(42066u, 19u)], global1[_wgslsmith_index_u32(max(86605u, 7865u), 19u)]), !select(select(vec4<bool>(false, false, global1[_wgslsmith_index_u32(u_input.a, 19u)], global1[_wgslsmith_index_u32(u_input.a, 19u)]), vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 19u)], global1[_wgslsmith_index_u32(4294967295u, 19u)], global1[_wgslsmith_index_u32(0u, 19u)], false), true), vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.b, 19u)], false, true), select(vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 19u)], false, global1[_wgslsmith_index_u32(1u, 19u)], global1[_wgslsmith_index_u32(1121u, 19u)]), vec4<bool>(true, true, global1[_wgslsmith_index_u32(4294967295u, 19u)], global1[_wgslsmith_index_u32(1u, 19u)]), vec4<bool>(global1[_wgslsmith_index_u32(u_input.b, 19u)], false, false, global1[_wgslsmith_index_u32(69619u, 19u)]))), select(select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 19u)], false, true, true), select(vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 19u)], global1[_wgslsmith_index_u32(u_input.b, 19u)], global1[_wgslsmith_index_u32(u_input.a, 19u)], true), vec4<bool>(global1[_wgslsmith_index_u32(38203u, 19u)], global1[_wgslsmith_index_u32(124090u, 19u)], true, global1[_wgslsmith_index_u32(u_input.b, 19u)]), global1[_wgslsmith_index_u32(u_input.a, 19u)]), select(vec4<bool>(false, global1[_wgslsmith_index_u32(1u, 19u)], global1[_wgslsmith_index_u32(0u, 19u)], false), vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.b, 19u)], global1[_wgslsmith_index_u32(4294967295u, 19u)], global1[_wgslsmith_index_u32(45321u, 19u)]), global1[_wgslsmith_index_u32(50534u, 19u)])), vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 19u)] & global1[_wgslsmith_index_u32(0u, 19u)], global1[_wgslsmith_index_u32(u_input.a, 19u)] && global1[_wgslsmith_index_u32(u_input.b, 19u)], true, global1[_wgslsmith_index_u32(9728u, 19u)] || true), all(select(vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.b, 19u)], false, true), vec4<bool>(true, false, false, global1[_wgslsmith_index_u32(15430u, 19u)]), vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.a, 19u)], true, global1[_wgslsmith_index_u32(u_input.b, 19u)]))))));
    global1 = array<bool, 19>();
    let var_2 = abs(vec2<i32>(~u_input.c, -(51695i ^ min(0i, global2.x))));
    global2 = vec4<i32>(~(-1i), 2147483647i, global2.x, -(var_0.x & 0i));
    return vec4<u32>(var_1.a.x, ~firstTrailingBit(min(_wgslsmith_mod_u32(u_input.a, 62360u), 1u)), 1u, 1u | u_input.a);
}

fn func_2(arg_0: u32) -> Struct_1 {
    let var_0 = Struct_1(func_3(-717f), 1i, select(select(vec4<bool>(global1[_wgslsmith_index_u32(0u, 19u)], global1[_wgslsmith_index_u32(1u, 19u)], any(vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 19u)], true, global1[_wgslsmith_index_u32(u_input.b, 19u)], false)), true), vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 19u)], all(vec2<bool>(global1[_wgslsmith_index_u32(40835u, 19u)], false)), global1[_wgslsmith_index_u32(min(u_input.a, 4294967295u), 19u)], global1[_wgslsmith_index_u32(24473u, 19u)] || true), any(select(vec4<bool>(global1[_wgslsmith_index_u32(80762u, 19u)], global1[_wgslsmith_index_u32(arg_0, 19u)], global1[_wgslsmith_index_u32(u_input.a, 19u)], true), vec4<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 19u)], true, false), false))), select(!select(vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.a, 19u)], false, false), vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.a, 19u)], global1[_wgslsmith_index_u32(u_input.a, 19u)], false), vec4<bool>(true, false, true, true)), select(vec4<bool>(false, true, global1[_wgslsmith_index_u32(63244u, 19u)], false), select(vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.b, 19u)], global1[_wgslsmith_index_u32(u_input.b, 19u)], global1[_wgslsmith_index_u32(u_input.a, 19u)]), vec4<bool>(true, global1[_wgslsmith_index_u32(7259u, 19u)], global1[_wgslsmith_index_u32(u_input.a, 19u)], true), vec4<bool>(global1[_wgslsmith_index_u32(u_input.b, 19u)], global1[_wgslsmith_index_u32(u_input.a, 19u)], false, true)), true), global1[_wgslsmith_index_u32(26469u, 19u)]), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(abs(u_input.a), ~_wgslsmith_mod_u32(31273u, 11484u)), 19u)]));
    var var_1 = Struct_1(vec4<u32>(~1u, 1u, ~(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 46232u, var_0.a.x, var_0.a.x), var_0.a) ^ ~4294967295u), ~reverseBits(u_input.a)), ~1i, vec4<bool>(all(vec3<bool>(!global1[_wgslsmith_index_u32(var_0.a.x, 19u)], any(vec2<bool>(true, var_0.c.x)), false)), true, var_0.c.x, firstLeadingBit(max(arg_0, u_input.a)) < ~(var_0.a.x & 4294967295u)));
    var var_2 = Struct_1(~_wgslsmith_sub_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 57126u, 6489u, var_1.a.x), vec4<u32>(u_input.b, 58995u, u_input.a, 12321u)), vec4<u32>(~var_0.a.x, 58241u, _wgslsmith_add_u32(var_1.a.x, arg_0), _wgslsmith_div_u32(4294967295u, u_input.b))), countOneBits(firstLeadingBit(-49718i)), vec4<bool>(false, var_0.a.x <= _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(var_0.a, vec4<u32>(4294967295u, u_input.a, 83271u, 4294967295u)), _wgslsmith_add_vec4_u32(var_0.a, vec4<u32>(u_input.a, arg_0, u_input.b, 25161u))), !(1u < arg_0), true));
    global0 = _wgslsmith_f_op_f32(-1f);
    global0 = 1606f;
    return Struct_1(var_2.a, -40238i, var_0.c);
}

fn func_4(arg_0: Struct_1, arg_1: i32) -> vec4<u32> {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(358f + -936f)), -1000f)))));
    var var_0 = countOneBits(~(~select(vec2<u32>(55693u, 0u), vec2<u32>(u_input.a, arg_0.a.x), arg_0.c.zx))) << ((~vec2<u32>(0u, arg_0.a.x << (44169u % 32u)) & firstLeadingBit(func_2(u_input.a).a.xz)) % vec2<u32>(32u));
    let var_1 = arg_0.c.x;
    var var_2 = arg_0;
    let var_3 = global2.wyz;
    return ~select(vec4<u32>(~_wgslsmith_div_u32(var_0.x, 29539u), var_2.a.x, ~u_input.a, _wgslsmith_sub_u32(0u, var_2.a.x) >> (arg_0.a.x % 32u)), firstTrailingBit(arg_0.a | (var_2.a >> (arg_0.a % vec4<u32>(32u)))), vec4<bool>(arg_0.c.x != var_1, var_2.c.x, !(false || global1[_wgslsmith_index_u32(45876u, 19u)]), global1[_wgslsmith_index_u32(firstLeadingBit(u_input.a), 19u)]));
}

fn func_1() -> bool {
    let var_0 = Struct_1(func_4(func_2(u_input.a), global2.x), select(u_input.c, max(u_input.c | countOneBits(global2.x), firstTrailingBit(abs(u_input.c))), all(vec4<bool>(true, all(vec2<bool>(global1[_wgslsmith_index_u32(1u, 19u)], global1[_wgslsmith_index_u32(u_input.b, 19u)])), global1[_wgslsmith_index_u32(~u_input.b, 19u)], false))), vec4<bool>(!all(vec2<bool>(global1[_wgslsmith_index_u32(u_input.a, 19u)], global1[_wgslsmith_index_u32(u_input.b, 19u)])), global1[_wgslsmith_index_u32(43300u, 19u)], true, all(!(!global3[_wgslsmith_index_u32(u_input.b, 4u)]))));
    global0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -417f)))))));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1139f) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1783f * 896f))))));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -964f) - 1f);
    let var_1 = ~var_0.a.x;
    return false;
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    global0 = 1159f;
    global0 = -1930f;
    var var_0 = _wgslsmith_f_op_f32(round(2260f));
    var var_1 = vec3<bool>(arg_0.c.x, true, true);
    global1 = array<bool, 19>();
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(Struct_1(~_wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.a, 16845u, 1u, 5980u), vec4<u32>(0u, 4294967295u, u_input.a, 45000u) & vec4<u32>(u_input.b, 1u, 1u, u_input.b), _wgslsmith_clamp_vec4_u32(vec4<u32>(30032u, 40626u, 24532u, u_input.a), vec4<u32>(u_input.b, u_input.a, 4294967295u, 4294967295u), vec4<u32>(u_input.a, u_input.b, 11948u, 1u))), i32(-1i) * -2147483647i, vec4<bool>(all(vec4<bool>(false, global1[_wgslsmith_index_u32(28705u, 19u)], global1[_wgslsmith_index_u32(49394u, 19u)], false)), any(vec2<bool>(global1[_wgslsmith_index_u32(u_input.b, 19u)], global1[_wgslsmith_index_u32(12682u, 19u)])) | global1[_wgslsmith_index_u32(abs(0u), 19u)], any(select(vec2<bool>(global1[_wgslsmith_index_u32(0u, 19u)], true), vec2<bool>(false, true), vec2<bool>(true, global1[_wgslsmith_index_u32(75700u, 19u)]))), func_1())));
    let var_1 = select(_wgslsmith_mod_u32(max(u_input.b, countOneBits(var_0.a.x)), max(_wgslsmith_sub_u32(19497u, ~4294967295u), _wgslsmith_div_u32(~0u, 1u))), ~var_0.a.x, !global1[_wgslsmith_index_u32(var_0.a.x >> (_wgslsmith_clamp_u32(_wgslsmith_div_u32(u_input.b, var_0.a.x), 1u, func_2(0u).a.x) % 32u), 19u)]);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(833f, 1006f), vec2<f32>(-678f, -473f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(245f, 392f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 197f))))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1324f, 1519f))), vec2<f32>(_wgslsmith_f_op_f32(floor(-384f)), 1093f), !var_0.c.x))), _wgslsmith_mod_i32(global2.x, var_0.b));
}

