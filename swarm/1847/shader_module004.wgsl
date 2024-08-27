struct Struct_1 {
    a: u32,
    b: i32,
    c: u32,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 25> = array<vec2<f32>, 25>(vec2<f32>(-647f, 1516f), vec2<f32>(-1719f, -1050f), vec2<f32>(103f, 943f), vec2<f32>(890f, -346f), vec2<f32>(-111f, -958f), vec2<f32>(1000f, -836f), vec2<f32>(262f, -1000f), vec2<f32>(-138f, -446f), vec2<f32>(-1365f, -228f), vec2<f32>(1423f, -1099f), vec2<f32>(-1104f, 440f), vec2<f32>(1933f, 1040f), vec2<f32>(-386f, 389f), vec2<f32>(123f, 970f), vec2<f32>(1193f, 812f), vec2<f32>(1125f, 663f), vec2<f32>(-1301f, 226f), vec2<f32>(1168f, 1003f), vec2<f32>(1577f, -1000f), vec2<f32>(-185f, 1000f), vec2<f32>(-953f, 1023f), vec2<f32>(251f, -930f), vec2<f32>(-621f, 1000f), vec2<f32>(-2743f, -331f), vec2<f32>(-891f, -1393f));

var<private> global1: array<i32, 10>;

var<private> global2: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(66620u, 2147483647i, 4294967295u, vec4<u32>(34843u, 0u, 1u, 1u)), Struct_1(4294967295u, 11853i, 73748u, vec4<u32>(4294967295u, 4294967295u, 73527u, 0u)), Struct_1(4294967295u, 1i, 0u, vec4<u32>(1u, 10253u, 4294967295u, 14749u)), Struct_1(0u, 1i, 10244u, vec4<u32>(104u, 1u, 0u, 1u)), Struct_1(1u, 0i, 0u, vec4<u32>(4294967295u, 4294967295u, 64249u, 1872u)), Struct_1(4294967295u, 7512i, 4294967295u, vec4<u32>(1u, 40711u, 32904u, 10626u)), Struct_1(4294967295u, -792i, 30186u, vec4<u32>(0u, 25278u, 1u, 48518u)), Struct_1(1u, -1i, 1u, vec4<u32>(64258u, 4294967295u, 1u, 1u)));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_1) -> bool {
    let var_0 = !all(arg_0.wx);
    var var_1 = !vec2<bool>(arg_0.x, 9522u == _wgslsmith_add_u32(1u, _wgslsmith_mult_u32(arg_1.d.x, arg_1.c)));
    let var_2 = 0i;
    var var_3 = var_0;
    let var_4 = arg_1;
    return var_0;
}

fn func_3(arg_0: i32, arg_1: vec4<i32>, arg_2: Struct_1) -> vec3<u32> {
    let var_0 = _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, ~80892i, global1[_wgslsmith_index_u32(16898u, 10u)]), arg_1.zzy);
    let var_1 = true & !(any(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false))) || (min(8278u, arg_2.d.x) == ~arg_2.a));
    return select(_wgslsmith_add_vec3_u32(arg_2.d.xzx, arg_2.d.xxz ^ ~vec3<u32>(0u, arg_2.c, 104040u)), ~(~arg_2.d.yyz), any(vec4<bool>(4294967295u <= arg_2.d.x, false, true, var_1))) >> (firstLeadingBit(abs(vec3<u32>(1u, _wgslsmith_mult_u32(arg_2.a, arg_2.d.x), ~arg_2.d.x))) % vec3<u32>(32u));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: vec3<i32>) -> u32 {
    var var_0 = arg_1;
    global2 = array<Struct_1, 8>();
    var var_1 = true;
    var var_2 = 2147483647i;
    var_1 = all(select(select(select(vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(false, false), false), false), vec2<bool>(true, true), false), vec2<bool>(_wgslsmith_f_op_f32(step(156f, -753f)) != _wgslsmith_f_op_f32(abs(-1107f)), !(-27947i == u_input.a)), true));
    return arg_0.x;
}

fn func_1(arg_0: f32, arg_1: Struct_1) -> f32 {
    let var_0 = Struct_1(arg_1.d.x, select(u_input.a, _wgslsmith_div_i32(~2147483647i, i32(-1i) * -38328i), true & select(true, arg_1.a != arg_1.d.x, func_2(vec4<bool>(false, true, false, true), arg_1))), _wgslsmith_dot_vec4_u32(~(~arg_1.d), vec4<u32>(~arg_1.c & 17936u, arg_1.d.x, ~_wgslsmith_mult_u32(51493u, arg_1.d.x), _wgslsmith_mod_u32(reverseBits(arg_1.d.x), 1u << (0u % 32u)))), vec4<u32>(0u | (_wgslsmith_div_u32(86028u, arg_1.c) | firstLeadingBit(arg_1.c)), ~func_4(func_3(u_input.a, vec4<i32>(0i, 2147483647i, 18279i, -89908i), global2[_wgslsmith_index_u32(9138u, 8u)]), Struct_1(arg_1.d.x, 0i, arg_1.c, vec4<u32>(arg_1.c, 55982u, arg_1.d.x, 0u)), firstLeadingBit(vec3<i32>(global1[_wgslsmith_index_u32(arg_1.d.x, 10u)], u_input.a, global1[_wgslsmith_index_u32(63170u, 10u)])), vec3<i32>(global1[_wgslsmith_index_u32(arg_1.a, 10u)], arg_1.b, u_input.a) | vec3<i32>(0i, 32393i, -2147483647i)), ~(abs(1u) << (arg_1.d.x % 32u)), arg_1.a));
    var var_1 = var_0;
    let var_2 = firstTrailingBit(abs(_wgslsmith_add_i32(global1[_wgslsmith_index_u32(32604u, 10u)], 0i) | _wgslsmith_mod_i32(-1i, var_0.b)) ^ var_1.b);
    let var_3 = Struct_1(var_1.d.x, firstTrailingBit(_wgslsmith_dot_vec4_i32(-select(vec4<i32>(-12023i, 1i, -78587i, var_1.b), vec4<i32>(-1i, var_1.b, -4463i, var_2), vec4<bool>(false, false, false, true)), vec4<i32>(24734i, global1[_wgslsmith_index_u32(var_1.d.x, 10u)], global1[_wgslsmith_index_u32(~6129u, 10u)], countOneBits(-2147483647i)))), var_1.c, var_0.d);
    global2 = array<Struct_1, 8>();
    return _wgslsmith_f_op_f32(f32(-1f) * -2040f);
}

fn func_5(arg_0: f32) -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1222f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2409f + 721f) - -681f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1587f * arg_0) - arg_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(-580f, global2[_wgslsmith_index_u32(19011u, 8u)])))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1090f, 448f, arg_0, arg_0)))))));
    var var_1 = any(vec4<bool>(true, !any(vec4<bool>(false, false, false, false)), true, all(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), false)) & select(true, true, true)));
    var var_2 = false;
    let var_3 = ~vec2<i32>(-u_input.a, _wgslsmith_sub_i32(global1[_wgslsmith_index_u32(57561u, 10u)] >> (70091u % 32u), _wgslsmith_mod_i32(global1[_wgslsmith_index_u32(0u, 10u)], global1[_wgslsmith_index_u32(53837u, 10u)]))) ^ vec2<i32>(-2147483647i, 2147483647i);
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + -635f) * arg_0))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -112f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0)) - 1272f))));
    return ~func_3(abs(-u_input.a), vec4<i32>(max(global1[_wgslsmith_index_u32(82878u, 10u)] << (0u % 32u), global1[_wgslsmith_index_u32(~14468u, 10u)]), 45485i, var_3.x, i32(-1i) * -global1[_wgslsmith_index_u32(4294967295u, 10u)]), Struct_1(abs(~4294967295u), global1[_wgslsmith_index_u32(132u, 10u)], _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 31450u), vec3<u32>(1u, 18864u, 0u)), ~67874u, 1u), vec4<u32>(~61104u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(50798u, 1u)), 1u, 30131u))).x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_mult_u32(1u, abs(max(0u, 48202u << (1u % 32u)))), -(24145i | (global1[_wgslsmith_index_u32(96691u, 10u)] ^ u_input.a)), _wgslsmith_mult_u32(~firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(789u, 0u), vec2<u32>(49809u, 4294967295u))), ~abs(_wgslsmith_div_u32(138806u, 33083u))), ~vec4<u32>(1u, 20231u, _wgslsmith_div_u32(12760u, 1u), 4294967295u) ^ abs(~select(vec4<u32>(3466u, 1u, 0u, 54144u), vec4<u32>(1u, 4294967295u, 1u, 4294967295u), vec4<bool>(true, true, true, false))));
    global0 = array<vec2<f32>, 25>();
    var var_1 = true;
    let var_2 = Struct_1(var_0.a, select(~0i, (max(var_0.b, 33336i) ^ ~u_input.a) | ~_wgslsmith_add_i32(u_input.a, -4145i), true), _wgslsmith_add_u32(var_0.a, 1u), ~var_0.d);
    global1 = array<i32, 10>();
    let var_3 = ~_wgslsmith_div_i32(~(-4489i), ~_wgslsmith_mult_i32(u_input.a, u_input.a)) | _wgslsmith_mod_i32(~(-53551i) << (~(~var_0.a) % 32u), 43606i);
    let var_4 = _wgslsmith_div_u32(1u | _wgslsmith_add_u32(var_2.d.x, func_5(_wgslsmith_f_op_f32(func_1(1336f, var_2)))), ~(~func_3(~(-13728i), vec4<i32>(var_3, 1i, var_3, var_3), Struct_1(var_0.d.x, var_0.b, var_2.c, var_2.d)).x));
    var var_5 = -var_2.b;
    var_5 = -33804i;
    let x = u_input.a;
    s_output = StorageBuffer(-1030f);
}

