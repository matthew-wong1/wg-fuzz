struct Struct_1 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec2<bool>, 10>;

var<private> global2: Struct_1 = Struct_1(vec3<f32>(-557f, 743f, -270f));

var<private> global3: array<vec4<i32>, 15> = array<vec4<i32>, 15>(vec4<i32>(2147483647i, 1i, 13274i, -1i), vec4<i32>(i32(-2147483648), -1i, -1i, -19343i), vec4<i32>(953i, i32(-2147483648), 28695i, 1i), vec4<i32>(0i, 3327i, -49806i, -1i), vec4<i32>(-52151i, -26628i, 13040i, 63873i), vec4<i32>(56047i, 3256i, i32(-2147483648), -1i), vec4<i32>(2147483647i, -35740i, -2247i, -15493i), vec4<i32>(i32(-2147483648), 23622i, -44009i, 0i), vec4<i32>(1i, i32(-2147483648), 0i, 2147483647i), vec4<i32>(0i, i32(-2147483648), 4416i, i32(-2147483648)), vec4<i32>(-1i, 0i, 19442i, 2147483647i), vec4<i32>(1i, -53586i, 0i, i32(-2147483648)), vec4<i32>(0i, -14876i, -4836i, 2147483647i), vec4<i32>(-60681i, 45674i, -86406i, -28841i), vec4<i32>(i32(-2147483648), 45479i, 25373i, i32(-2147483648)));

var<private> global4: vec4<f32> = vec4<f32>(-343f, 1507f, 1038f, 1000f);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec4<i32>, arg_1: u32, arg_2: bool, arg_3: bool) -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(trunc(global0.a)));
    var var_1 = !(!(u_input.b.x != u_input.b.x)) || true;
    var_1 = ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(22091u, arg_1, u_input.b.x, arg_1) | vec4<u32>(arg_1, 31997u, arg_1, 1u), ~vec4<u32>(u_input.b.x, arg_1, 30408u, 40849u))) > u_input.b.x;
    let var_2 = _wgslsmith_f_op_f32(-1336f + -235f);
    let var_3 = _wgslsmith_f_op_vec3_f32(-global0.a);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x))), _wgslsmith_f_op_f32(round(-621f)))));
}

fn func_2(arg_0: f32, arg_1: vec3<i32>) -> f32 {
    var var_0 = vec2<bool>(~arg_1.x == firstTrailingBit(arg_1.x), true);
    global1 = array<vec2<bool>, 10>();
    global0 = Struct_1(_wgslsmith_f_op_vec3_f32(-global0.a));
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global4.yyz) * vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -539f), _wgslsmith_f_op_f32(global2.a.x + -647f), _wgslsmith_f_op_f32(-global0.a.x))))));
    let var_2 = _wgslsmith_f_op_f32(func_3(global3[_wgslsmith_index_u32(u_input.b.x, 15u)], _wgslsmith_clamp_u32(~(u_input.b.x | (u_input.b.x ^ u_input.b.x)), ~53152u, select(_wgslsmith_mod_u32(u_input.b.x, ~0u), ~85618u, any(vec3<bool>(var_0.x, var_0.x, true)))), true & ((var_0.x | true) && var_0.x), arg_1.x >= u_input.a));
    return global4.x;
}

fn func_1() -> Struct_1 {
    let var_0 = vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(~32422u << ((0u & u_input.b.x) % 32u), 1u, u_input.b.x), ~(~(~1u))), ~(~abs(u_input.b.x)), 0u);
    global4 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 2253f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global4.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-168f - -410f)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_2(-1000f, vec3<i32>(u_input.a, u_input.a, 2147483647i))), 541f, -128f, global2.a.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a.x, -1555f, -694f, 1261f))))));
    var var_1 = Struct_1(global2.a);
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global4.xyx * var_1.a) + _wgslsmith_div_vec3_f32(vec3<f32>(global4.x, -2115f, _wgslsmith_f_op_f32(step(-237f, var_1.a.x))), vec3<f32>(719f, _wgslsmith_f_op_f32(global2.a.x - -837f), -2668f))));
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-619f, -561f, var_1.a.x)) + vec3<f32>(1039f, global0.a.x, -386f)), vec3<f32>(_wgslsmith_f_op_f32(-var_2.a.x), -621f, _wgslsmith_f_op_f32(func_3(vec4<i32>(-12710i, u_input.a, 806i, u_input.a), 543u, false, false)))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global4.yyy - var_1.a) * _wgslsmith_f_op_vec3_f32(sign(global0.a))))))));
    return var_3;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    var var_0 = vec4<bool>(all(global1[_wgslsmith_index_u32(~u_input.b.x, 10u)]), all(vec4<bool>(false, all(vec2<bool>(true, true)), !(29921i <= u_input.a), false)), !select(true, -1i <= (u_input.a & u_input.a), select(true, true, any(global1[_wgslsmith_index_u32(arg_1.x, 10u)]))), any(!select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true)), vec4<bool>(false, true, false, true), true)));
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(arg_3.a)))))));
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(func_1().a + _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.a.x, arg_0.a.x, global0.a.x))))));
    var var_3 = func_1();
    let var_4 = -7620i;
    return func_1();
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<u32>) -> Struct_1 {
    var var_0 = ~(max(_wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(u_input.a, u_input.a, 1808i)), -vec3<i32>(3025i, -1i, u_input.a)), 17388i) ^ u_input.a);
    global0 = func_4(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(arg_1.a.x + _wgslsmith_f_op_f32(-arg_1.a.x)), 348f, _wgslsmith_f_op_f32(step(-112f, _wgslsmith_f_op_f32(abs(1158f)))))), min(_wgslsmith_sub_vec3_u32(arg_2, ~arg_2), min(arg_2 >> (vec3<u32>(0u, 4294967295u, 74904u) % vec3<u32>(32u)), vec3<u32>(~4294967295u, firstLeadingBit(21849u), max(19407u, 0u)))), arg_1, Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global4.wzz))));
    global2 = arg_1;
    global3 = array<vec4<i32>, 15>();
    let var_1 = !(!(!all(vec3<bool>(true, true, true))));
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(global4.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.a.x * 350f), _wgslsmith_f_op_f32(-global0.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global4.x)))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(212f, global4.x, global0.a.x)) * _wgslsmith_f_op_vec3_f32(-global2.a)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.a) + _wgslsmith_f_op_vec3_f32(-global0.a)))));
    var var_0 = vec4<u32>(u_input.b.x, abs(~(~1u)), ~(~max(u_input.b.x, u_input.b.x | 4294967295u)), _wgslsmith_div_u32(select(u_input.b.x, max(16589u, ~25665u), true), _wgslsmith_mod_u32(~1u, _wgslsmith_add_u32(u_input.b.x, 4294967295u))));
    var var_1 = func_5(func_4(func_1(), abs(var_0.zzy), Struct_1(vec3<f32>(global0.a.x, _wgslsmith_div_f32(2583f, -218f), -1022f)), func_1()), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.a)) - global4.zyy)), _wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(abs(vec3<u32>(55812u, u_input.b.x, var_0.x)) << (vec3<u32>(u_input.b.x, 16692u, 5688u) % vec3<u32>(32u)), countOneBits(var_0.ywy)), var_0.zzz, _wgslsmith_div_vec3_u32(var_0.zwx, abs(~var_0.wwy))));
    global3 = array<vec4<i32>, 15>();
    global1 = array<vec2<bool>, 10>();
    var var_2 = func_4(func_5(func_4(func_1(), select(~vec3<u32>(84590u, 19893u, 4294967295u), abs(var_0.wxy), true), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.x, 166f, global4.x))), func_1()), func_5(Struct_1(global0.a), func_4(Struct_1(var_1.a), min(var_0.zxy, vec3<u32>(u_input.b.x, u_input.b.x, 4294967295u)), func_4(Struct_1(vec3<f32>(1284f, 755f, 611f)), vec3<u32>(u_input.b.x, var_0.x, var_0.x), Struct_1(global4.zxy), Struct_1(vec3<f32>(global0.a.x, 694f, -278f))), Struct_1(global2.a)), var_0.zyx), vec3<u32>(_wgslsmith_dot_vec3_u32(var_0.xxz, vec3<u32>(4294967295u, 1u, u_input.b.x)), _wgslsmith_clamp_u32(~var_0.x, ~u_input.b.x, ~0u), _wgslsmith_div_u32(u_input.b.x, 1u) ^ 0u)), firstTrailingBit(vec3<u32>(var_0.x, ~var_0.x, firstTrailingBit(8713u))), func_4(Struct_1(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_1.a.x, -1000f, 600f)))), countOneBits(reverseBits(var_0.zxy >> (var_0.wzz % vec3<u32>(32u)))), func_4(func_5(Struct_1(vec3<f32>(global4.x, global0.a.x, var_1.a.x)), Struct_1(global0.a), max(vec3<u32>(var_0.x, u_input.b.x, var_0.x), var_0.zwy)), select(countOneBits(vec3<u32>(var_0.x, var_0.x, 1u)), var_0.yyz, vec3<bool>(false, true, true)), Struct_1(global2.a), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.x, 1233f, global4.x)))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(466f, global2.a.x, var_1.a.x) * var_1.a)))), func_4(Struct_1(func_4(Struct_1(global0.a), countOneBits(vec3<u32>(23051u, 4294967295u, 2776u)), Struct_1(var_1.a), Struct_1(global4.xyz)).a), vec3<u32>(countOneBits(firstTrailingBit(0u)), 57250u, 41578u), Struct_1(_wgslsmith_f_op_vec3_f32(-global0.a)), func_4(func_4(Struct_1(global4.zxw), countOneBits(var_0.wyw), Struct_1(vec3<f32>(-1487f, global0.a.x, global0.a.x)), func_4(Struct_1(vec3<f32>(global4.x, -712f, global2.a.x)), var_0.ywx, Struct_1(global2.a), Struct_1(var_1.a))), ~var_0.xxw, func_5(func_1(), Struct_1(global2.a), abs(vec3<u32>(var_0.x, 22965u, 1u))), func_5(Struct_1(var_1.a), func_4(Struct_1(global4.wyx), var_0.xww, Struct_1(global0.a), Struct_1(global2.a)), vec3<u32>(1u, 4294967295u, u_input.b.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(2147483647i, 26789i), _wgslsmith_mod_u32(_wgslsmith_add_u32(u_input.b.x << (~var_0.x % 32u), var_0.x), var_0.x), max(vec4<i32>(u_input.a, -u_input.a, -1i, -1i), -_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, -2147483647i), global3[_wgslsmith_index_u32(4294967295u, 15u)])) ^ vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), _wgslsmith_mult_i32(-1i, (max(1842i, u_input.a) >> (~u_input.b.x % 32u)) | u_input.a));
}

