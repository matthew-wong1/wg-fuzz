struct Struct_1 {
    a: f32,
    b: f32,
    c: u32,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: i32,
    b: vec2<u32>,
    c: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 26> = array<bool, 26>(false, true, false, false, true, false, false, false, true, false, false, true, true, false, false, true, false, false, true, false, true, true, false, false, false, false);

var<private> global1: array<u32, 10>;

var<private> global2: array<f32, 20>;

var<private> global3: Struct_2 = Struct_2(i32(-2147483648), vec2<u32>(1u, 1u), 7917i);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: u32) -> vec4<u32> {
    let var_0 = Struct_2(_wgslsmith_clamp_i32(global3.a, ~(29622i >> (global3.b.x % 32u)) << (~select(1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(34018u, 10u)], 10u)], global0[_wgslsmith_index_u32(57526u, 26u)]) % 32u), (u_input.a.x | countOneBits(23148i)) & 46242i), _wgslsmith_div_vec2_u32(~(~(~global3.b)), global3.b), global3.a);
    var var_1 = _wgslsmith_sub_u32(var_0.b.x, select(_wgslsmith_mod_u32(0u, global1[_wgslsmith_index_u32(4294967295u, 10u)]), 17256u, global0[_wgslsmith_index_u32(25798u, 26u)]));
    var var_2 = Struct_2(-reverseBits(global3.c), ~var_0.b, _wgslsmith_sub_i32(0i, firstTrailingBit(u_input.a.x)));
    var var_3 = _wgslsmith_mod_u32(var_0.b.x, _wgslsmith_add_u32(~1u, _wgslsmith_add_u32(var_0.b.x, select(4294967295u, var_0.b.x, true))));
    let var_4 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(global3.b.x << (~arg_0 % 32u), 20u)] - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(339f))))), -555f), global2[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(~countOneBits(1u), 10u)] & 4294967295u, 20u)]);
    return vec4<u32>(global3.b.x, _wgslsmith_add_u32(firstTrailingBit(1u), global3.b.x), ~(~max(38873u | global3.b.x, 4294967295u)), var_0.b.x);
}

fn func_4(arg_0: vec4<u32>, arg_1: f32, arg_2: f32) -> u32 {
    let var_0 = ~_wgslsmith_div_u32(firstTrailingBit(27413u), ~arg_0.x);
    let var_1 = vec2<u32>(21891u, _wgslsmith_sub_u32(func_3(func_3(29809u).x).x, ~var_0) << (((arg_0.x << (_wgslsmith_dot_vec4_u32(arg_0, arg_0) % 32u)) << ((1u >> ((22315u ^ global3.b.x) % 32u)) % 32u)) % 32u));
    var var_2 = !select(vec2<bool>(!any(vec2<bool>(true, false)), select(select(global0[_wgslsmith_index_u32(4294967295u, 26u)], global0[_wgslsmith_index_u32(arg_0.x, 26u)], global0[_wgslsmith_index_u32(1u, 26u)]), all(vec2<bool>(true, global0[_wgslsmith_index_u32(var_0, 26u)])), all(vec4<bool>(global0[_wgslsmith_index_u32(33552u, 26u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(45866u, 10u)], 26u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1210u, 10u)], 26u)], true)))), vec2<bool>(!(!global0[_wgslsmith_index_u32(var_0, 26u)]), true), all(!vec4<bool>(global0[_wgslsmith_index_u32(var_0, 26u)], true, false, global0[_wgslsmith_index_u32(20623u, 26u)])));
    var var_3 = Struct_1(_wgslsmith_div_f32(-329f, arg_1), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global2[_wgslsmith_index_u32(37280u, 20u)])) + -1000f), ~(~firstTrailingBit(countOneBits(global3.b.x))), -1i, u_input.a.x);
    let var_4 = Struct_2(global3.a, vec2<u32>(10430u, var_0), u_input.a.x);
    return ~func_3(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_add_u32(global1[_wgslsmith_index_u32(4294967295u, 10u)], 1u), ~30265u, ~0u), ~vec3<u32>(var_3.c, 4294967295u, 53041u)), 10u)]).x;
}

fn func_2(arg_0: vec3<u32>, arg_1: bool) -> vec4<bool> {
    global0 = array<bool, 26>();
    let var_0 = func_4(func_3(1u), global2[_wgslsmith_index_u32(~max(~max(12734u, 0u), ~(~44244u)), 20u)], -1000f);
    global0 = array<bool, 26>();
    let var_1 = true;
    global2 = array<f32, 20>();
    return select(vec4<bool>(true, true, true, true), vec4<bool>(true, !select(true, global0[_wgslsmith_index_u32(~1u, 26u)], any(vec2<bool>(false, true))), select(all(vec4<bool>(arg_1, global0[_wgslsmith_index_u32(39946u, 26u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(83690u, 10u)], 26u)], global0[_wgslsmith_index_u32(2766u, 26u)])), any(vec3<bool>(true, global0[_wgslsmith_index_u32(global3.b.x, 26u)], var_1)), var_1) | var_1, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(global2[_wgslsmith_index_u32(10468u, 20u)])), _wgslsmith_div_f32(global2[_wgslsmith_index_u32(global3.b.x, 20u)], -347f)) > -166f), false);
}

fn func_1() -> Struct_2 {
    let var_0 = vec3<i32>(global3.a, global3.c, _wgslsmith_dot_vec4_i32(select(vec4<i32>(-global3.c, 8694i, global3.a, u_input.a.x), _wgslsmith_div_vec4_i32(vec4<i32>(global3.c, 27551i, 39921i, -1i), _wgslsmith_mod_vec4_i32(vec4<i32>(-32308i, global3.c, -22041i, u_input.a.x), vec4<i32>(u_input.a.x, global3.c, u_input.a.x, -33391i))), func_2(vec3<u32>(1u, 1u, 2007u), global0[_wgslsmith_index_u32(45750u, 26u)] || global0[_wgslsmith_index_u32(81419u, 26u)])), min(max(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, 58587i, u_input.a.x, -2147483647i), vec4<i32>(-12007i, u_input.a.x, -12230i, 18099i)), u_input.a), u_input.a)));
    let var_1 = Struct_2(abs(_wgslsmith_mod_i32(global3.c, u_input.a.x)), _wgslsmith_clamp_vec2_u32(global3.b, vec2<u32>(select(global1[_wgslsmith_index_u32(40407u, 10u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 10u)], 10u)], global0[_wgslsmith_index_u32(~4294967295u, 26u)]), ~50863u & global3.b.x), min(_wgslsmith_add_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(4294967295u, 10u)], 4294967295u), vec2<u32>(4294967295u, 95999u)), select(_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(1u, global1[_wgslsmith_index_u32(0u, 10u)])), select(global3.b, global3.b, vec2<bool>(global0[_wgslsmith_index_u32(1u, 26u)], true)), false))), max(-_wgslsmith_dot_vec2_i32(-vec2<i32>(-28115i, 2147483647i), vec2<i32>(global3.a, global3.a)), -36487i));
    let var_2 = global1[_wgslsmith_index_u32(select(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(0u, 100119u, 0u), 33796u, 30795u, 1u), _wgslsmith_clamp_vec4_u32(func_3(36556u), vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 10u)], 10u)], 16423u, var_1.b.x, global1[_wgslsmith_index_u32(70876u, 10u)]), vec4<u32>(global1[_wgslsmith_index_u32(46149u, 10u)], 16354u, 9870u, 113814u) | vec4<u32>(global1[_wgslsmith_index_u32(4294967295u, 10u)], global1[_wgslsmith_index_u32(15475u, 10u)], 4294967295u, 26735u))), _wgslsmith_mod_u32(global1[_wgslsmith_index_u32(firstLeadingBit(1u), 10u)], abs(reverseBits(788u))), all(!(!vec2<bool>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_1.b.x, 10u)], 10u)], 10u)], 26u)], true)))), 10u)] & _wgslsmith_dot_vec4_u32(~(vec4<u32>(var_1.b.x, 14419u, global3.b.x, 1u) & vec4<u32>(32300u, 27952u, 52689u, global1[_wgslsmith_index_u32(95221u, 10u)])) << (func_3(global1[_wgslsmith_index_u32(~53919u, 10u)]) % vec4<u32>(32u)), vec4<u32>(var_1.b.x, 4294967295u, var_1.b.x << (4294967295u % 32u), 0u) >> (~max(vec4<u32>(global3.b.x, 1u, 47987u, 58170u), vec4<u32>(23210u, 1u, 0u, 0u)) % vec4<u32>(32u)));
    var var_3 = _wgslsmith_f_op_f32(-145f - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u, 20u)]))));
    let var_4 = var_1;
    return Struct_2(-13182i, vec2<u32>(_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(reverseBits(abs(66582u)), 10u)], ~var_1.b.x), ~(~_wgslsmith_mult_u32(var_1.b.x, 1u))), var_0.x);
}

fn func_5(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: vec4<f32>, arg_3: Struct_1) -> i32 {
    let var_0 = func_4(reverseBits(~(vec4<u32>(84979u, arg_1.x, 9853u, 61890u) >> (vec4<u32>(global1[_wgslsmith_index_u32(4294967295u, 10u)], 45083u, arg_1.x, 6609u) % vec4<u32>(32u)))), _wgslsmith_f_op_f32(-arg_2.x), arg_2.x);
    var var_1 = any(!select(select(vec2<bool>(true, global0[_wgslsmith_index_u32(arg_1.x, 26u)]), vec2<bool>(false, false), global0[_wgslsmith_index_u32(1u, 26u)]), func_2(vec3<u32>(arg_0.b.x, global3.b.x, 21884u), global0[_wgslsmith_index_u32(1u, 26u)]).wz, func_2(vec3<u32>(global1[_wgslsmith_index_u32(arg_0.b.x, 10u)], 72184u, 62724u), global0[_wgslsmith_index_u32(arg_0.b.x, 26u)]).xw)) && true;
    let var_2 = arg_0;
    let var_3 = vec2<i32>(~(0i << (~arg_3.c % 32u)) | 11522i, _wgslsmith_add_i32(_wgslsmith_div_i32((var_2.c & -62688i) >> ((0u << (arg_1.x % 32u)) % 32u), _wgslsmith_sub_i32(arg_3.e, _wgslsmith_mult_i32(5352i, -8814i))), arg_0.c));
    global2 = array<f32, 20>();
    return var_2.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1u;
    global2 = array<f32, 20>();
    var var_1 = firstLeadingBit(_wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_dot_vec3_i32(select(u_input.a.zwx, u_input.a.zxz, vec3<bool>(global0[_wgslsmith_index_u32(global3.b.x, 26u)], global0[_wgslsmith_index_u32(var_0, 26u)], global0[_wgslsmith_index_u32(1u, 26u)])), u_input.a.zwy), _wgslsmith_mod_i32(_wgslsmith_sub_i32(global3.a, u_input.a.x), 2147483647i)), vec2<i32>(-(i32(-1i) * -1i), func_5(func_1(), _wgslsmith_mod_vec3_u32(vec3<u32>(1u, global3.b.x, 0u), vec3<u32>(1u, var_0, 38152u)), vec4<f32>(-173f, -831f, 1102f, global2[_wgslsmith_index_u32(72629u, 20u)]), Struct_1(global2[_wgslsmith_index_u32(1u, 20u)], -617f, 1u, -17562i, -8554i)))));
    var_1 = ~u_input.a.yx;
    var var_2 = Struct_2(~(~abs(u_input.a.x)) & ~var_1.x, vec2<u32>(global3.b.x, ~global3.b.x), ~(-15996i));
    global0 = array<bool, 26>();
    var var_3 = 101910u;
    global1 = array<u32, 10>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(338f - -903f))), _wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -148f)))), _wgslsmith_div_i32(var_2.c, _wgslsmith_dot_vec4_i32(-u_input.a, reverseBits(vec4<i32>(var_1.x, u_input.a.x, -39663i, -1i)))));
}

