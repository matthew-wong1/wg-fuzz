struct Struct_1 {
    a: u32,
    b: bool,
    c: vec2<u32>,
    d: i32,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 21>;

var<private> global1: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(45100u, true, vec2<u32>(32487u, 108427u), 7688i, vec2<f32>(1017f, -1292f)), Struct_1(0u, false, vec2<u32>(4294967295u, 0u), -33820i, vec2<f32>(483f, 1034f)), Struct_1(5993u, false, vec2<u32>(71234u, 4294967295u), -17291i, vec2<f32>(1284f, 2249f)), Struct_1(33973u, false, vec2<u32>(0u, 59557u), -88583i, vec2<f32>(1155f, 2332f)), Struct_1(4294967295u, false, vec2<u32>(45113u, 4386u), 2147483647i, vec2<f32>(1397f, -1000f)), Struct_1(1u, true, vec2<u32>(6219u, 1u), -11592i, vec2<f32>(-1031f, 231f)), Struct_1(1u, true, vec2<u32>(35423u, 45016u), 10038i, vec2<f32>(-586f, 545f)), Struct_1(0u, false, vec2<u32>(65842u, 19477u), -1i, vec2<f32>(486f, 2174f)), Struct_1(35132u, false, vec2<u32>(1u, 58611u), 2147483647i, vec2<f32>(294f, 988f)), Struct_1(1910u, false, vec2<u32>(1u, 9819u), 1i, vec2<f32>(-720f, 468f)), Struct_1(0u, true, vec2<u32>(48338u, 0u), -1i, vec2<f32>(-1845f, 731f)), Struct_1(1u, false, vec2<u32>(1u, 30428u), -32378i, vec2<f32>(309f, 1038f)), Struct_1(10708u, true, vec2<u32>(38905u, 25706u), 1i, vec2<f32>(955f, 804f)), Struct_1(0u, false, vec2<u32>(45004u, 4294967295u), -29729i, vec2<f32>(1710f, 1613f)));

var<private> global2: Struct_1;

var<private> global3: array<f32, 9>;

var<private> global4: Struct_1;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: vec2<u32>, arg_2: Struct_1) -> u32 {
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_add_u32(global4.a, max(_wgslsmith_mult_u32(max(4294967295u << (u_input.d % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(55408u, global4.a, arg_1.x), vec3<u32>(global4.c.x, arg_2.a, 903u))), _wgslsmith_mod_u32(14476u, 46244u)), 1u)), 14u)];
    var var_1 = arg_2.b || false;
    let var_2 = 3626u;
    var_1 = select(!(~0u > _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(u_input.c, u_input.c), ~global4.a)), true, !all(vec4<bool>(all(vec3<bool>(global2.b, true, arg_2.b)), var_0.b, arg_2.a != 12995u, false)));
    let var_3 = select(!vec2<bool>(true, all(!vec2<bool>(true, global4.b))), select(vec2<bool>((global2.d < global4.d) & var_0.b, arg_2.b), !vec2<bool>(true, all(vec3<bool>(true, false, global2.b))), vec2<bool>(true, global4.b)), any(vec3<bool>(true, !(var_0.d <= global2.d), global2.b)));
    return global2.c.x;
}

fn func_4(arg_0: bool, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: vec2<bool>) -> u32 {
    global3 = array<f32, 9>();
    let var_0 = Struct_1((arg_2.a & arg_2.c.x) << (0u % 32u), true, vec2<u32>(_wgslsmith_clamp_u32(~max(34548u, 0u), _wgslsmith_mod_u32(932u, global4.a | arg_2.c.x), _wgslsmith_clamp_u32(~58213u, 0u, max(global4.c.x, 16916u))), _wgslsmith_sub_u32(82705u, 12786u << (u_input.c.x % 32u))), 63235i, arg_1.ww);
    global1 = array<Struct_1, 14>();
    let var_1 = global4.b;
    let var_2 = arg_0;
    return ~var_0.c.x;
}

fn func_2(arg_0: vec4<u32>, arg_1: bool) -> vec2<u32> {
    let var_0 = vec2<u32>(_wgslsmith_sub_u32(abs(4294967295u), max(_wgslsmith_dot_vec3_u32(u_input.c, _wgslsmith_add_vec3_u32(vec3<u32>(global4.c.x, 62634u, global4.c.x), vec3<u32>(16434u, arg_0.x, global4.c.x))), 4294967295u)), global4.c.x);
    global1 = array<Struct_1, 14>();
    let var_1 = global1[_wgslsmith_index_u32(func_4(arg_1, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global4.e.x, 314f, -759f, global3[_wgslsmith_index_u32(global2.a, 9u)]) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global4.e.x, -382f, global2.e.x, -200f), vec4<f32>(125f, 1052f, global2.e.x, global2.e.x), vec4<bool>(global4.b, true, true, false))))))), global1[_wgslsmith_index_u32(~(func_3(_wgslsmith_f_op_f32(f32(-1f) * -1000f), ~vec2<u32>(arg_0.x, 1u), Struct_1(4294967295u, true, u_input.c.yx, global4.d, vec2<f32>(-1753f, -628f))) ^ arg_0.x), 14u)], vec2<bool>(-524f <= _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(global4.a >> (global4.c.x % 32u), 9u)] * -2671f), true)), 14u)];
    global4 = Struct_1(~(~arg_0.x) | ~reverseBits(1u), any(!vec2<bool>(all(vec2<bool>(global4.b, false)), var_1.b)), ~(~global4.c), var_1.d ^ -2147483647i, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global2.e.x, _wgslsmith_f_op_f32(step(-234f, 1110f))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(934f, 1565f), global4.e.x)))));
    global4 = Struct_1(_wgslsmith_sub_u32(u_input.d, 0u), false, _wgslsmith_clamp_vec2_u32(global2.c, vec2<u32>(~(var_0.x << (var_0.x % 32u)), var_0.x & _wgslsmith_mult_u32(arg_0.x, global2.a)), ~(~vec2<u32>(10023u, var_1.c.x))), 0i >> ((_wgslsmith_dot_vec3_u32(~vec3<u32>(24706u, 4294967295u, arg_0.x), arg_0.wyx) ^ firstTrailingBit(var_0.x)) % 32u), vec2<f32>(_wgslsmith_f_op_f32(427f - -304f), _wgslsmith_f_op_f32(select(global4.e.x, _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(u_input.d, 9u)] + _wgslsmith_f_op_f32(-1060f + -155f)), global4.b))));
    return vec2<u32>(var_1.a, ~_wgslsmith_dot_vec3_u32(vec3<u32>(56233u, 14209u, arg_0.x) & vec3<u32>(4294967295u, 77281u, 0u), arg_0.zxy)) | firstLeadingBit(select(~(~var_0), var_0, select(select(vec2<bool>(global2.b, true), vec2<bool>(global2.b, true), true), select(vec2<bool>(var_1.b, global2.b), vec2<bool>(global4.b, true), true), vec2<bool>(false, global4.b))));
}

fn func_5(arg_0: vec4<i32>, arg_1: vec2<u32>, arg_2: f32) -> f32 {
    var var_0 = Struct_1(~4294967295u, false, arg_1, countOneBits(0i), global4.e);
    var var_1 = vec4<i32>(-1443i, -var_0.d, _wgslsmith_div_i32(_wgslsmith_sub_i32(5237i, -24136i), -min(-var_0.d, -15718i)), ~_wgslsmith_div_i32(-firstTrailingBit(global4.d), ~(-2147483647i) << (u_input.d % 32u)));
    var_0 = global1[_wgslsmith_index_u32(reverseBits(~(~34302u)), 14u)];
    global4 = Struct_1(var_0.c.x, false, ~(~arg_1), _wgslsmith_add_i32(_wgslsmith_mod_i32(2147483647i, _wgslsmith_mult_i32(2147483647i, global2.d)) ^ (i32(-1i) * -2673i), var_1.x), _wgslsmith_div_vec2_f32(vec2<f32>(-636f, 957f), vec2<f32>(1f, 1f)));
    global1 = array<Struct_1, 14>();
    return -576f;
}

fn func_1() -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(select(-854f, _wgslsmith_f_op_f32(sign(756f)), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global4.e.x, -1895f, false))), _wgslsmith_f_op_f32(f32(-1f) * -190f), global2.e.x))));
    var var_1 = _wgslsmith_f_op_f32(func_5(vec4<i32>(-1i) * -vec4<i32>(_wgslsmith_mult_i32(global2.d, global4.d), global2.d, global2.d, _wgslsmith_mod_i32(global4.d, -21242i)), func_2(~vec4<u32>(1u, 4294967295u, _wgslsmith_add_u32(global2.a, global2.a), global4.c.x), !(global4.b || false) || global2.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(372f, _wgslsmith_f_op_f32(sign(-668f)), global2.b && true)) + -996f)));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(304f, 715f, global3[_wgslsmith_index_u32(1u, 9u)], global3[_wgslsmith_index_u32(0u, 9u)]), vec4<f32>(551f, -1094f, global3[_wgslsmith_index_u32(u_input.d, 9u)], -678f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-875f, global4.e.x, 1000f, 560f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1323f, -2755f, var_0.x, 1241f)))) + vec4<f32>(1297f, _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(-global4.e.x)), global4.e.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-975f - -1300f) - global4.e.x))));
    var var_2 = select(global4.e.x <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - global4.e.x) * _wgslsmith_f_op_f32(f32(-1f) * -1000f)) * 1000f), true, true & !global2.b);
    let var_3 = vec4<bool>(!global2.b, select(global2.d == abs(global2.d), true, global2.b), true, (_wgslsmith_clamp_i32(global4.d, min(25030i, -1i), -44609i) ^ _wgslsmith_clamp_i32(firstLeadingBit(-1i), global4.d, -global4.d)) <= global2.d);
    return vec4<i32>(global4.d ^ ~(-98607i << (_wgslsmith_mod_u32(0u, u_input.c.x) % 32u)), global2.d, abs(9054i), -38099i);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 21>();
    var var_0 = _wgslsmith_clamp_vec4_i32(func_1() | vec4<i32>(11121i, u_input.a >> (global4.a % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(global2.d, global2.d), ~u_input.b), 0i), abs(vec4<i32>(-u_input.b.x, _wgslsmith_div_i32(0i, global4.d << (u_input.c.x % 32u)), ~_wgslsmith_div_i32(global2.d, global2.d), -1i)), vec4<i32>(-u_input.b.x, _wgslsmith_mult_i32(firstTrailingBit(u_input.b.x), _wgslsmith_div_i32(1i, firstTrailingBit(u_input.b.x))), u_input.a, _wgslsmith_mult_i32(_wgslsmith_add_i32(global4.d, _wgslsmith_clamp_i32(u_input.b.x, global4.d, u_input.b.x)), 18330i)));
    global1 = array<Struct_1, 14>();
    global0 = array<Struct_1, 21>();
    let var_1 = Struct_1(_wgslsmith_mod_u32(_wgslsmith_mod_u32(global4.a, 0u), global2.c.x), _wgslsmith_clamp_u32(firstLeadingBit(firstTrailingBit(global4.c.x)), ~func_4(true, vec4<f32>(global4.e.x, -207f, global3[_wgslsmith_index_u32(global2.c.x, 9u)], global2.e.x), global1[_wgslsmith_index_u32(49956u, 14u)], vec2<bool>(true, false)), global2.c.x) >= (~_wgslsmith_dot_vec2_u32(vec2<u32>(38861u, 3739u), vec2<u32>(33374u, 12529u)) & ~firstTrailingBit(global2.a)), ~(~(~vec2<u32>(20978u, global2.c.x))), ~_wgslsmith_div_i32(-2147483647i, var_0.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global2.e.x, 922f))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global2.e - vec2<f32>(global4.e.x, global3[_wgslsmith_index_u32(46970u, 9u)])) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.e.x, -883f)))));
    let var_2 = Struct_1(10233u, !(!(!(!var_1.b))), global2.c, ~(~47743i ^ _wgslsmith_div_i32(0i, -global4.d)), _wgslsmith_f_op_vec2_f32(-global4.e));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_u32(vec2<u32>(~global4.c.x, var_2.a), ~(~vec2<u32>(global2.a, var_1.c.x) << (abs(vec2<u32>(0u, 4294967295u)) % vec2<u32>(32u)))), _wgslsmith_mult_u32(_wgslsmith_add_u32(countOneBits(global2.a), reverseBits(global2.c.x)) << (abs(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.d, 83803u, 4294967295u), vec4<u32>(global4.a, global4.a, var_1.c.x, 56224u))) % 32u), 122878u));
}

