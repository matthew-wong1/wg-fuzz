struct Struct_1 {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(1i, 0u, vec2<i32>(i32(-2147483648), 17387i), vec4<i32>(0i, i32(-2147483648), -4861i, -1i)), Struct_1(0i, 61329u, vec2<i32>(4i, -46580i), vec4<i32>(0i, 39561i, -1i, 0i)), Struct_1(10054i, 4294967295u, vec2<i32>(0i, i32(-2147483648)), vec4<i32>(-4100i, 1i, i32(-2147483648), 34402i)), Struct_1(0i, 19689u, vec2<i32>(22208i, -37164i), vec4<i32>(-1i, -1i, -9202i, 14047i)), Struct_1(38709i, 1u, vec2<i32>(-28753i, i32(-2147483648)), vec4<i32>(1i, -39206i, -311i, 0i)), Struct_1(10692i, 5475u, vec2<i32>(-35581i, 2147483647i), vec4<i32>(-24169i, -67431i, -2984i, 34344i)), Struct_1(28576i, 4294967295u, vec2<i32>(-22747i, -178i), vec4<i32>(1i, -67841i, -6079i, 1i)), Struct_1(-52801i, 38148u, vec2<i32>(i32(-2147483648), 2147483647i), vec4<i32>(2147483647i, -1i, 47623i, -1249i)), Struct_1(-42772i, 1u, vec2<i32>(0i, 57392i), vec4<i32>(0i, -25913i, 24705i, -5217i)), Struct_1(14732i, 75922u, vec2<i32>(65845i, -1i), vec4<i32>(1i, 2147483647i, i32(-2147483648), 37913i)), Struct_1(35195i, 0u, vec2<i32>(0i, 28345i), vec4<i32>(0i, 1i, 0i, 18215i)), Struct_1(-1i, 2630u, vec2<i32>(2147483647i, -41742i), vec4<i32>(i32(-2147483648), -1i, i32(-2147483648), -8226i)), Struct_1(i32(-2147483648), 13346u, vec2<i32>(0i, 36902i), vec4<i32>(2147483647i, i32(-2147483648), -16028i, 2147483647i)), Struct_1(-15205i, 4294967295u, vec2<i32>(i32(-2147483648), -7863i), vec4<i32>(-1i, 8274i, -1i, -4714i)), Struct_1(2147483647i, 4294967295u, vec2<i32>(15665i, 2147483647i), vec4<i32>(-8934i, 2147483647i, -11893i, i32(-2147483648))), Struct_1(5642i, 1u, vec2<i32>(-1i, -11903i), vec4<i32>(0i, 0i, -25307i, 15846i)), Struct_1(-28981i, 73063u, vec2<i32>(28765i, 2147483647i), vec4<i32>(-50395i, 8122i, -4518i, 2147483647i)), Struct_1(-28047i, 0u, vec2<i32>(-54359i, -15406i), vec4<i32>(49382i, -40969i, 1i, 17202i)), Struct_1(8150i, 64033u, vec2<i32>(24898i, 2147483647i), vec4<i32>(i32(-2147483648), -19130i, i32(-2147483648), -41636i)), Struct_1(5529i, 32049u, vec2<i32>(-19024i, 0i), vec4<i32>(31745i, 14037i, -14961i, 25504i)), Struct_1(-26034i, 4294967295u, vec2<i32>(-20336i, -1i), vec4<i32>(1i, 3309i, 3619i, 1i)), Struct_1(12400i, 298u, vec2<i32>(i32(-2147483648), -1i), vec4<i32>(8622i, -1i, 34845i, -54456i)), Struct_1(40053i, 4294967295u, vec2<i32>(1i, 0i), vec4<i32>(19071i, -48129i, -48228i, 52548i)));

var<private> global1: array<vec4<bool>, 6>;

var<private> global2: vec4<f32> = vec4<f32>(1320f, 1808f, -1201f, 975f);

var<private> global3: array<bool, 6>;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: bool, arg_3: vec4<bool>) -> i32 {
    return 2147483647i;
}

fn func_2(arg_0: vec2<u32>, arg_1: u32) -> Struct_1 {
    let var_0 = global0[_wgslsmith_index_u32(arg_0.x, 23u)];
    return global0[_wgslsmith_index_u32(26353u, 23u)];
}

fn func_3(arg_0: vec4<i32>) -> vec4<bool> {
    var var_0 = vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-31656i, arg_0.x, -24226i), reverseBits(-arg_0.zxw)), _wgslsmith_dot_vec3_i32(-min(u_input.a, vec3<i32>(u_input.d, 52090i, u_input.a.x)), ~arg_0.xzw), -1i, _wgslsmith_dot_vec4_i32(arg_0, vec4<i32>(~(-19912i), abs(arg_0.x >> (4294967295u % 32u)), -1i, select(-1i, u_input.a.x, arg_0.x > u_input.b.x))));
    global2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-276f, global2.x)) * _wgslsmith_f_op_f32(global2.x + global2.x)))) * 276f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global2.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1412f + global2.x))) + -1636f), _wgslsmith_f_op_f32(max(global2.x, global2.x)), 684f);
    var_0 = vec4<i32>(2147483647i, ~(-1290i), arg_0.x, arg_0.x);
    var var_1 = Struct_1(countOneBits(func_2(vec2<u32>(0u, 1u), u_input.c).c.x) & reverseBits(max(_wgslsmith_sub_i32(-1i, 5899i), u_input.b.x ^ 2147483647i)), ~0u, countOneBits(_wgslsmith_sub_vec2_i32(vec2<i32>(7079i, _wgslsmith_add_i32(61596i, u_input.d)), ~arg_0.zw)), select(arg_0, (vec4<i32>(27274i, u_input.b.x, var_0.x, u_input.a.x) | countOneBits(arg_0)) << (min(vec4<u32>(4294967295u, 0u, u_input.c, 20805u), vec4<u32>(u_input.c, u_input.c, u_input.c, 4294967295u)) % vec4<u32>(32u)), global3[_wgslsmith_index_u32(u_input.c, 6u)]));
    let var_2 = firstTrailingBit(abs(~abs(vec2<u32>(var_1.b, 31645u)) & vec2<u32>(max(var_1.b, 0u), u_input.c >> (10544u % 32u))));
    return global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(~(~_wgslsmith_clamp_u32(0u, 33949u, var_1.b)), 4294967295u), _wgslsmith_clamp_u32(_wgslsmith_mult_u32(2574u, 23672u), select(0u, _wgslsmith_div_u32(~var_2.x, firstLeadingBit(var_1.b)), !(var_2.x >= u_input.c)), 52677u), _wgslsmith_sub_u32(~0u, _wgslsmith_dot_vec3_u32(~_wgslsmith_div_vec3_u32(vec3<u32>(var_1.b, var_1.b, var_2.x), vec3<u32>(1u, u_input.c, 109067u)), firstLeadingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(var_1.b, var_2.x, u_input.c), vec3<u32>(u_input.c, var_1.b, var_2.x)))))), 6u)];
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> StorageBuffer {
    global0 = array<Struct_1, 23>();
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(31317u, _wgslsmith_clamp_u32(arg_1.b | (u_input.c << (arg_1.b % 32u)), ~15921u, reverseBits(~0u)), ~arg_1.b | (~arg_2.b >> (1u % 32u)), select(select(firstLeadingBit(arg_2.b), arg_1.b, true), _wgslsmith_mult_u32(2976u, arg_1.b | arg_1.b), all(vec3<bool>(true, true, true)))), firstTrailingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(min(0u, 26959u), _wgslsmith_div_u32(arg_1.b, u_input.c), _wgslsmith_dot_vec3_u32(vec3<u32>(33021u, 1u, 4294967295u), vec3<u32>(arg_2.b, arg_1.b, arg_2.b)), ~1u), vec4<u32>(~arg_1.b, arg_1.b, 99594u, ~4294967295u)))), 6u)];
    let var_1 = func_2(vec2<u32>(0u, 1u), _wgslsmith_clamp_u32(4294967295u << ((u_input.c << (~arg_1.b % 32u)) % 32u), _wgslsmith_add_u32(_wgslsmith_add_u32(_wgslsmith_mod_u32(u_input.c, arg_1.b), arg_2.b), ~(~u_input.c)), countOneBits(max(4473u >> (1u % 32u), ~arg_1.b))));
    let var_2 = var_1;
    var var_3 = arg_1.b;
    return StorageBuffer(_wgslsmith_mult_i32(_wgslsmith_add_i32(_wgslsmith_mod_i32(var_1.d.x, select(var_2.a, 19862i, var_0.x)), arg_1.a), var_1.d.x), ~(~(~(~vec4<i32>(-1i, 0i, -1i, -36815i)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-global2.yz))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-global2.ww))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false & all(select(vec4<bool>(!global3[_wgslsmith_index_u32(u_input.c, 6u)], select(false, true, true), global3[_wgslsmith_index_u32(52929u, 6u)], true), select(!vec4<bool>(true, true, true, global3[_wgslsmith_index_u32(u_input.c, 6u)]), !global1[_wgslsmith_index_u32(0u, 6u)], select(vec4<bool>(false, true, global3[_wgslsmith_index_u32(1u, 6u)], global3[_wgslsmith_index_u32(4294967295u, 6u)]), global1[_wgslsmith_index_u32(4294967295u, 6u)], true)), !global3[_wgslsmith_index_u32(u_input.c, 6u)]));
    var var_1 = 0i;
    let var_2 = Struct_1(-2147483647i, 31144u, vec2<i32>(_wgslsmith_add_i32(firstLeadingBit(~(-1i)), _wgslsmith_div_i32(func_1(u_input.c, global0[_wgslsmith_index_u32(4294967295u, 23u)], false, global1[_wgslsmith_index_u32(u_input.c, 6u)]), ~u_input.a.x)), 2147483647i), vec4<i32>(-1i) * -reverseBits(vec4<i32>(1i, -30769i, -411i, u_input.b.x) ^ vec4<i32>(u_input.d, 38859i, -2147483647i, -2147483647i)));
    global1 = array<vec4<bool>, 6>();
    global1 = array<vec4<bool>, 6>();
    let x = u_input.a;
    s_output = func_4(func_1(var_2.b, func_2(~(~vec2<u32>(1u, u_input.c)), ~1u), true, select(func_3(-vec4<i32>(-24593i, -5211i, -71618i, 26823i)), vec4<bool>(true, false, true, false), global1[_wgslsmith_index_u32(firstLeadingBit(max(var_2.b, u_input.c)), 6u)])), func_2(countOneBits(vec2<u32>(18561u, 37434u) >> (vec2<u32>(u_input.c, 4294967295u) % vec2<u32>(32u))), ~1u), Struct_1(36188i, ~_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(u_input.c, u_input.c, 59955u, 0u)), vec4<u32>(1u, 0u, 4294967295u, var_2.b)), _wgslsmith_mult_vec2_i32(firstTrailingBit(var_2.c), ~var_2.c), _wgslsmith_add_vec4_i32(var_2.d, ~(~vec4<i32>(u_input.a.x, 2147483647i, var_2.a, u_input.a.x)))));
}

