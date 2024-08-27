struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: u32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: i32,
    b: vec4<f32>,
    c: f32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: bool,
    c: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 24> = array<f32, 24>(-1835f, 322f, 1000f, -266f, 1000f, -1694f, 854f, 661f, -145f, 1000f, -2451f, 361f, -328f, -287f, -2158f, 934f, 472f, -823f, 1154f, -791f, 441f, 1812f, -645f, -1542f);

var<private> global1: array<bool, 16> = array<bool, 16>(true, false, true, true, false, false, true, false, true, true, false, true, false, false, false, true);

var<private> global2: i32;

var<private> global3: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(-206f, vec3<f32>(-376f, 1022f, -936f), 56230u, vec3<bool>(false, false, true)), Struct_1(2452f, vec3<f32>(-417f, 217f, 421f), 21671u, vec3<bool>(true, true, true)), Struct_1(1295f, vec3<f32>(-1716f, -431f, 622f), 55149u, vec3<bool>(false, false, false)), Struct_1(1011f, vec3<f32>(1357f, -560f, -231f), 15268u, vec3<bool>(true, false, true)));

var<private> global4: array<u32, 16>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool) -> u32 {
    let var_0 = global0[_wgslsmith_index_u32((~(~1u) >> (firstLeadingBit(global4[_wgslsmith_index_u32(abs(1u), 16u)]) % 32u)) | _wgslsmith_sub_u32(~4294967295u, global4[_wgslsmith_index_u32(~(~(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 16u)], 16u)] ^ global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(36013u, 16u)], 16u)])), 16u)]), 24u)];
    let var_1 = ~_wgslsmith_sub_vec2_i32((vec2<i32>(u_input.a, u_input.a) >> (min(vec2<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 16u)], 16u)], 0u), vec2<u32>(4294967295u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(117276u, 16u)], 16u)], 16u)], 16u)])) % vec2<u32>(32u))) & (-vec2<i32>(u_input.a, -1i) ^ vec2<i32>(u_input.a, -23727i)), vec2<i32>(u_input.a, -3151i));
    var var_2 = false;
    global2 = u_input.a ^ _wgslsmith_add_i32(1i, -select(1i, firstTrailingBit(var_1.x), true));
    var var_3 = ~_wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(var_1.x, u_input.a | u_input.a), var_1.x, ~u_input.a), abs(min(min(vec3<i32>(-1i, -7199i, -2147483647i), vec3<i32>(var_1.x, u_input.a, -1i)), ~vec3<i32>(-1i, var_1.x, -1i))));
    return 9607u;
}

fn func_2(arg_0: i32, arg_1: vec4<bool>, arg_2: vec2<bool>) -> u32 {
    var var_0 = global4[_wgslsmith_index_u32(4294967295u, 16u)];
    var var_1 = global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(~(~_wgslsmith_add_u32(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(1439u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(16913u, 16u)], 16u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(36551u, 16u)], 16u)], 16u)], 16u)]), vec3<u32>(global4[_wgslsmith_index_u32(14497u, 16u)], 4294967295u, 58683u))) >> (~func_3(true) % 32u)), 16u)], 4u)];
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(var_1.a - global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(min(~vec4<u32>(33289u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(var_1.c, 16u)], 16u)], 4294967295u, 64369u), ~vec4<u32>(var_1.c, 46578u, 17135u, 0u)), vec4<u32>(1u & var_1.c, _wgslsmith_mod_u32(global4[_wgslsmith_index_u32(var_1.c, 16u)], global4[_wgslsmith_index_u32(1u, 16u)]), var_1.c, ~global4[_wgslsmith_index_u32(27163u, 16u)])), 24u)]), 782f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(1u, global4[_wgslsmith_index_u32(9577u, 16u)])), 24u)]), var_1.b.x);
    var var_3 = Struct_2(_wgslsmith_add_i32(2147483647i, u_input.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_1.a, 658f, var_1.b.x, global0[_wgslsmith_index_u32(13661u, 24u)]), vec4<f32>(-2310f, var_2.x, var_2.x, -603f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(31753u, 24u)], -833f, -1545f, 457f)) - vec4<f32>(global0[_wgslsmith_index_u32(1u, 24u)], -183f, global0[_wgslsmith_index_u32(39469u, 24u)], 977f)), !vec4<bool>(arg_1.x, arg_1.x, global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(28781u, 16u)], 16u)], global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 16u)], 16u)], 16u)]))) * vec4<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(553f, global0[_wgslsmith_index_u32(var_1.c, 24u)]), _wgslsmith_f_op_f32(trunc(-1000f))), -2265f, -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-759f * var_2.x)))), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(var_1.c, 1u, _wgslsmith_sub_u32(global4[_wgslsmith_index_u32(4294967295u, 16u)], var_1.c)), 0u, firstLeadingBit(var_1.c), ~var_1.c), vec4<u32>(global4[_wgslsmith_index_u32(min(4294967295u, global4[_wgslsmith_index_u32(var_1.c, 16u)]) & global4[_wgslsmith_index_u32(~var_1.c, 16u)], 16u)], abs(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(97153u, 16u)] | var_1.c, 16u)]), countOneBits(1u), 1u)), 24u)]);
    var_0 = ~(firstTrailingBit(_wgslsmith_div_u32(global4[_wgslsmith_index_u32(var_1.c, 16u)], ~32105u)) >> (~(~(~global4[_wgslsmith_index_u32(var_1.c, 16u)])) % 32u));
    return select(var_1.c, max(var_1.c, _wgslsmith_mult_u32(global4[_wgslsmith_index_u32(select(~1u, global4[_wgslsmith_index_u32(~var_1.c, 16u)], var_1.d.x), 16u)], 0u)), global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(reverseBits(var_1.c), _wgslsmith_add_u32(~global4[_wgslsmith_index_u32(12341u, 16u)], global4[_wgslsmith_index_u32(~31842u, 16u)]), ~(~25166u)) | global4[_wgslsmith_index_u32(37135u, 16u)], 16u)]);
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: Struct_3) -> Struct_1 {
    var var_0 = !vec3<bool>(arg_1, all(arg_0.d), true);
    let var_1 = Struct_3(arg_2.a, select(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(~func_2(45388i, vec4<bool>(false, global1[_wgslsmith_index_u32(arg_0.c, 16u)], true, arg_0.d.x), vec2<bool>(arg_2.b, arg_1)), 16u)], 16u)], max(arg_0.c | global4[_wgslsmith_index_u32(25929u, 16u)], 1u), false) >= 0u, -2147483647i);
    global4 = array<u32, 16>();
    var var_2 = Struct_2(-_wgslsmith_clamp_i32(arg_2.a.x | min(2147483647i, arg_2.a.x), _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, var_1.a.x, u_input.a, u_input.a), vec4<i32>(arg_2.a.x, u_input.a, 1i, -56228i), vec4<i32>(-8253i, 11110i, arg_2.a.x, -46832i)), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, -12043i, u_input.a, 18633i), vec4<i32>(-41694i, u_input.a, var_1.a.x, -1i))), _wgslsmith_mult_i32(var_1.a.x, 1i)), vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.x)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.b.x, -1058f) + -738f), -1000f)), _wgslsmith_f_op_f32(min(arg_0.b.x, _wgslsmith_div_f32(-375f, global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(arg_0.c, 16u)], 24u)]))), 1241f), _wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(select(49054u, 21118u, arg_0.d.x), ~arg_0.c) & ~arg_0.c, 24u)])));
    global4 = array<u32, 16>();
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b.x - global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(4564u, arg_0.c), 24u)]) + 1041f)), vec3<f32>(_wgslsmith_f_op_f32(floor(var_2.b.x)), 2061f, var_2.c), func_2(reverseBits(~(var_2.a ^ -2147483647i)), !select(select(vec4<bool>(false, var_0.x, false, false), vec4<bool>(false, arg_1, false, global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 16u)], 16u)]), global1[_wgslsmith_index_u32(1u, 16u)]), !vec4<bool>(global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(arg_0.c, 16u)], 16u)], var_0.x, false, arg_2.b), vec4<bool>(false, arg_0.d.x, arg_0.d.x, true)), vec2<bool>(!any(vec4<bool>(false, false, false, true)), true)), vec3<bool>(false, func_2(1i, !vec4<bool>(true, true, global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(arg_0.c, 16u)], 16u)], 16u)], 16u)], false), !vec2<bool>(false, var_0.x)) < 15292u, !global1[_wgslsmith_index_u32(~(~4294967295u), 16u)]));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3) -> i32 {
    var var_0 = global3[_wgslsmith_index_u32(24004u, 4u)];
    let var_1 = var_0.c;
    let var_2 = arg_1.a;
    global4 = array<u32, 16>();
    let var_3 = ~(1u << ((29739u >> ((arg_0.c ^ 4294967295u) % 32u)) % 32u));
    return _wgslsmith_sub_i32(-reverseBits(~(-arg_1.a.x)), 2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec2_u32(~(~min(vec2<u32>(1u, global4[_wgslsmith_index_u32(0u, 16u)]), vec2<u32>(0u, global4[_wgslsmith_index_u32(1u, 16u)]))) << (vec2<u32>(~(~global4[_wgslsmith_index_u32(1u, 16u)]), 4294967295u & global4[_wgslsmith_index_u32(~0u, 16u)]) % vec2<u32>(32u)), ~vec2<u32>(_wgslsmith_div_u32(countOneBits(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 16u)], 16u)], 16u)], 16u)], 16u)], 16u)], 16u)], 16u)], 16u)]), ~global4[_wgslsmith_index_u32(4294967295u, 16u)]), global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(firstLeadingBit(4294967295u), 16u)], 16u)]));
    var var_1 = select(u_input.a > _wgslsmith_add_i32(select(_wgslsmith_add_i32(-41052i, u_input.a), ~(-2147483647i), false), func_4(func_1(Struct_1(global0[_wgslsmith_index_u32(var_0, 24u)], vec3<f32>(global0[_wgslsmith_index_u32(var_0, 24u)], global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 16u)], 24u)], global0[_wgslsmith_index_u32(0u, 24u)]), 49687u, vec3<bool>(true, global1[_wgslsmith_index_u32(var_0, 16u)], true)), global1[_wgslsmith_index_u32(15187u, 16u)], Struct_3(vec3<i32>(-2147483647i, u_input.a, u_input.a), global1[_wgslsmith_index_u32(4294967295u, 16u)], 45391i)), Struct_3(vec3<i32>(u_input.a, u_input.a, u_input.a), global1[_wgslsmith_index_u32(24954u, 16u)], -13236i))), all(select(vec3<bool>(any(vec3<bool>(global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 16u)], 16u)], 16u)], global1[_wgslsmith_index_u32(0u, 16u)], global1[_wgslsmith_index_u32(0u, 16u)])), global1[_wgslsmith_index_u32(~51172u, 16u)], global1[_wgslsmith_index_u32(var_0, 16u)]), !select(vec3<bool>(global1[_wgslsmith_index_u32(var_0, 16u)], false, global1[_wgslsmith_index_u32(var_0, 16u)]), vec3<bool>(false, global1[_wgslsmith_index_u32(var_0, 16u)], false), vec3<bool>(false, false, global1[_wgslsmith_index_u32(83344u, 16u)])), vec3<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 16u)], false))), true);
    global0 = array<f32, 24>();
    var var_2 = Struct_3(vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-46846i, 8850i, -2147483647i), vec3<i32>(-15503i, u_input.a, -1i)), u_input.a), abs(u_input.a), ~u_input.a) | vec3<i32>(u_input.a, -firstTrailingBit(u_input.a), u_input.a), global1[_wgslsmith_index_u32(4294967295u, 16u)], u_input.a);
    let var_3 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_div_u32(_wgslsmith_mod_u32(var_0 >> (global4[_wgslsmith_index_u32(var_0, 16u)] % 32u), ~global4[_wgslsmith_index_u32(17875u, 16u)]), _wgslsmith_div_u32(var_0, 0u) >> (countOneBits(var_0) % 32u)) ^ global4[_wgslsmith_index_u32(~(~_wgslsmith_mod_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(69047u, 16u)], 16u)], var_0)), 16u)], select(_wgslsmith_div_u32(~(~1u), 3491u), var_0, true), 19835u), 24u)];
    var var_4 = ~vec4<u32>(firstTrailingBit(0u), var_0, ~0u, var_0);
    let var_5 = _wgslsmith_add_u32(firstTrailingBit(~11259u) >> (var_0 % 32u), abs(0u));
    let x = u_input.a;
    s_output = StorageBuffer(-(~reverseBits(abs(vec3<i32>(-1i, u_input.a, 0i)))), 687f, 1u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 24u)]) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 24u)] - global0[_wgslsmith_index_u32(~var_4.x, 24u)]), _wgslsmith_f_op_f32(193f * global0[_wgslsmith_index_u32(func_2(-25582i, vec4<bool>(global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(13812u, 16u)], 16u)], global1[_wgslsmith_index_u32(var_5, 16u)], false, false), vec2<bool>(var_2.b, var_2.b)), 24u)]), select(global1[_wgslsmith_index_u32(~44166u, 16u)], func_1(global3[_wgslsmith_index_u32(4294967295u, 4u)], false, Struct_3(var_2.a, global1[_wgslsmith_index_u32(var_5, 16u)], 1i)).d.x, any(vec3<bool>(global1[_wgslsmith_index_u32(52777u, 16u)], global1[_wgslsmith_index_u32(1u, 16u)], global1[_wgslsmith_index_u32(4294967295u, 16u)])))))));
}

