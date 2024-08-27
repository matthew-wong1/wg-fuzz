struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: i32,
    d: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: u32,
    d: vec4<i32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 20>;

var<private> global1: f32 = 1017f;

var<private> global2: array<bool, 15>;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec3<bool>, arg_1: u32, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    var var_0 = false;
    var var_1 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-175f, 400f, arg_2.b))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2263f, 186f, _wgslsmith_f_op_f32(arg_2.b * -1562f)) + vec3<f32>(_wgslsmith_f_op_f32(arg_3.b + -474f), 1000f, -181f)) * vec3<f32>(_wgslsmith_f_op_f32(ceil(305f)), arg_2.b, 274f))));
    let var_2 = min(0i, ~arg_3.c);
    let var_3 = select(select(!vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.e, 20u)], any(vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 15u)], global2[_wgslsmith_index_u32(arg_1, 15u)], false, false))), vec3<bool>(true, all(arg_0), true), select(select(arg_0, select(vec3<bool>(true, global0[_wgslsmith_index_u32(arg_2.a.x, 20u)], true), arg_0, global0[_wgslsmith_index_u32(arg_2.a.x, 20u)]), !arg_0), select(vec3<bool>(false, false, true), select(arg_0, vec3<bool>(arg_0.x, global2[_wgslsmith_index_u32(73124u, 15u)], global0[_wgslsmith_index_u32(arg_2.a.x, 20u)]), global0[_wgslsmith_index_u32(1u, 20u)]), all(arg_0)), true)), arg_0, select(arg_0, vec3<bool>(arg_3.c < u_input.d, true, arg_2.a.x < arg_2.a.x), arg_0));
    return arg_3.b;
}

fn func_2(arg_0: vec3<bool>) -> i32 {
    let var_0 = vec3<i32>(countOneBits(~(~(-23498i))), _wgslsmith_mult_i32(u_input.d, _wgslsmith_sub_i32(-u_input.d, 198i)), ~(-1i | u_input.c));
    global0 = array<bool, 20>();
    let var_1 = 38269i;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(!(!vec3<bool>(false, true, global0[_wgslsmith_index_u32(u_input.b, 20u)])), _wgslsmith_add_u32(_wgslsmith_sub_u32(u_input.a.x, u_input.e), u_input.e), Struct_1(vec3<u32>(14469u, 0u, 1u) & vec3<u32>(u_input.a.x, u_input.b, u_input.a.x), _wgslsmith_f_op_f32(f32(-1f) * -350f), var_0.x << (u_input.a.x % 32u), u_input.d), Struct_1(~vec3<u32>(16720u, 98364u, 32881u), _wgslsmith_div_f32(330f, 338f), var_0.x, _wgslsmith_add_i32(-1i, -1i))))));
    global0 = array<bool, 20>();
    return max(-28501i, -(var_0.x & 1i));
}

fn func_4(arg_0: vec3<bool>, arg_1: u32, arg_2: i32, arg_3: Struct_1) -> vec2<bool> {
    var var_0 = select(vec2<i32>(u_input.d, -min(-arg_2, arg_2 ^ arg_3.c)), max(max(~vec2<i32>(arg_3.d, 1i), vec2<i32>(12684i, arg_3.d)) ^ vec2<i32>(u_input.c, 1i), vec2<i32>(-19580i, _wgslsmith_mod_i32(-2390i, _wgslsmith_sub_i32(-35768i, 0i)))), arg_0.yy);
    let var_1 = -vec3<i32>(-(var_0.x & var_0.x), countOneBits(_wgslsmith_mult_i32(var_0.x, 34784i)), 1i) >> (arg_3.a % vec3<u32>(32u));
    let var_2 = u_input.b;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_3.b))));
    var var_4 = _wgslsmith_sub_vec4_i32(vec4<i32>(7161i, _wgslsmith_div_i32(~(~7289i), -27296i), min(-2474i, var_1.x), ~54115i), vec4<i32>(-1i, _wgslsmith_mult_i32(0i, i32(-1i) * -1i), var_1.x, abs(~38779i)));
    return vec2<bool>(false, any(select(arg_0, arg_0, !(true | global2[_wgslsmith_index_u32(66405u, 15u)]))));
}

fn func_1(arg_0: vec2<f32>) -> vec3<bool> {
    let var_0 = select(vec2<bool>(global2[_wgslsmith_index_u32(~_wgslsmith_mod_u32(4294967295u ^ u_input.b, reverseBits(u_input.e)), 15u)], all(vec4<bool>(arg_0.x <= arg_0.x, true, true, select(false, global2[_wgslsmith_index_u32(u_input.e, 15u)], true)))), !select(vec2<bool>(global2[_wgslsmith_index_u32(u_input.e, 15u)] && true, 1043f < arg_0.x), !select(vec2<bool>(false, false), vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 15u)], global0[_wgslsmith_index_u32(u_input.e, 20u)]), vec2<bool>(true, false)), global2[_wgslsmith_index_u32(41133u, 15u)]), func_4(!select(select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.e, 20u)], true, true), vec3<bool>(false, true, global2[_wgslsmith_index_u32(0u, 15u)]), global2[_wgslsmith_index_u32(4294967295u, 15u)]), vec3<bool>(global2[_wgslsmith_index_u32(0u, 15u)], true, false), vec3<bool>(global0[_wgslsmith_index_u32(36935u, 20u)], global2[_wgslsmith_index_u32(u_input.a.x, 15u)], global0[_wgslsmith_index_u32(u_input.b, 20u)])), _wgslsmith_dot_vec4_u32(reverseBits(~vec4<u32>(u_input.e, 0u, u_input.e, u_input.a.x)), firstLeadingBit(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, u_input.e, u_input.a.x, u_input.a.x), vec4<u32>(37524u, 43945u, u_input.b, 4294967295u)))), reverseBits(u_input.d), Struct_1(vec3<u32>(28882u, 54760u, u_input.e) & vec3<u32>(4294967295u, 118589u, 4294967295u), 115f, -func_2(vec3<bool>(false, false, true)), firstTrailingBit(i32(-1i) * -17042i))));
    var var_1 = _wgslsmith_div_i32(2147483647i, -72351i);
    global2 = array<bool, 15>();
    let var_2 = Struct_1(max(vec3<u32>(~u_input.a.x, u_input.b, _wgslsmith_dot_vec2_u32(~u_input.a, _wgslsmith_sub_vec2_u32(u_input.a, u_input.a))), vec3<u32>(u_input.e, u_input.a.x, 1u) | firstTrailingBit(firstTrailingBit(vec3<u32>(4294967295u, 4294967295u, 6208u)))), arg_0.x, firstLeadingBit(0i), _wgslsmith_mult_i32(2147483647i, firstLeadingBit(_wgslsmith_mod_i32(u_input.d, ~u_input.d))));
    let var_3 = Struct_1(var_2.a, var_2.b, -func_2(vec3<bool>(true, any(vec4<bool>(true, global2[_wgslsmith_index_u32(var_2.a.x, 15u)], true, var_0.x)), global0[_wgslsmith_index_u32(u_input.a.x, 20u)] != global2[_wgslsmith_index_u32(4294967295u, 15u)])), -(~(u_input.d | abs(0i))));
    return select(select(vec3<bool>(false, true, func_4(!vec3<bool>(global2[_wgslsmith_index_u32(var_3.a.x, 15u)], global0[_wgslsmith_index_u32(var_3.a.x, 20u)], global2[_wgslsmith_index_u32(var_2.a.x, 15u)]), var_3.a.x ^ 1u, _wgslsmith_dot_vec2_i32(vec2<i32>(var_3.c, var_3.c), vec2<i32>(-12669i, u_input.c)), var_2).x), !vec3<bool>(global0[_wgslsmith_index_u32(64499u, 20u)] & false, global2[_wgslsmith_index_u32(var_2.a.x, 15u)] | global2[_wgslsmith_index_u32(46664u, 15u)], var_0.x), var_0.x), !vec3<bool>(_wgslsmith_f_op_f32(select(231f, arg_0.x, global0[_wgslsmith_index_u32(u_input.a.x, 20u)])) > 1286f, false, global2[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_add_u32(4502u, 109953u)), 15u)]), global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(~abs(countOneBits(var_2.a.x)), ~(~var_2.a.x)), 15u)]);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(226f + 1250f), _wgslsmith_f_op_f32(ceil(-2089f))) + vec2<f32>(_wgslsmith_f_op_f32(321f * -290f), -231f)) - _wgslsmith_div_vec2_f32(vec2<f32>(922f, _wgslsmith_f_op_f32(abs(-839f))), vec2<f32>(_wgslsmith_f_op_f32(select(-109f, -1000f, global2[_wgslsmith_index_u32(u_input.a.x, 15u)])), -846f))));
    let var_1 = vec3<i32>(3463i, u_input.c, ~(~u_input.c)) & countOneBits(_wgslsmith_add_vec3_i32(-vec3<i32>(u_input.d, u_input.d, u_input.d), vec3<i32>(2147483647i, 0i, -2147483647i) >> (abs(vec3<u32>(u_input.b, 71488u, 0u)) % vec3<u32>(32u))));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-310f, _wgslsmith_f_op_f32(f32(-1f) * -1014f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -847f)));
    var var_3 = Struct_1(_wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(firstTrailingBit(~vec3<u32>(u_input.e, u_input.b, u_input.a.x)), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, 21877u, 4294967295u), vec3<u32>(u_input.e, u_input.e, u_input.b), vec3<u32>(4294967295u, 1u, 1u)), _wgslsmith_mod_vec3_u32(firstTrailingBit(vec3<u32>(u_input.a.x, u_input.e, 9037u)), min(vec3<u32>(u_input.a.x, 16739u, u_input.e), vec3<u32>(u_input.e, 7321u, 1u)))), ~_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 0u, u_input.b) << (vec3<u32>(u_input.a.x, u_input.e, 0u) % vec3<u32>(32u)), ~vec3<u32>(u_input.e, 1u, 1u))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1091f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 512f)))), -2147483647i, ~(36589i & -(~var_1.x)));
    var var_4 = Struct_1(reverseBits(min(var_3.a, vec3<u32>(var_3.a.x, u_input.a.x, 0u)) | ~select(var_3.a, vec3<u32>(50905u, 3267u, var_3.a.x), false)), -462f, u_input.d, var_1.x);
    global1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_2, 692f))), _wgslsmith_f_op_f32(548f * _wgslsmith_f_op_f32(-var_3.b)), var_0.x)))));
    let var_5 = vec2<i32>(_wgslsmith_mult_i32(var_4.d, -2147483647i), var_1.x) | abs(var_1.yz);
    let var_6 = Struct_1(~vec3<u32>(firstLeadingBit(var_4.a.x) << (reverseBits(81225u) % 32u), var_3.a.x | var_3.a.x, 1u), _wgslsmith_f_op_f32(-var_2), u_input.c, var_4.c);
    let x = u_input.a;
    s_output = StorageBuffer(var_4.b, vec2<u32>(var_3.a.x, ~968u), max(~(_wgslsmith_mod_u32(var_3.a.x, var_6.a.x) ^ ~var_3.a.x), var_6.a.x), reverseBits(_wgslsmith_clamp_vec4_i32(select(max(vec4<i32>(-11901i, var_5.x, 41016i, 2557i), vec4<i32>(1i, -2147483647i, -2147483647i, -2147483647i)), ~vec4<i32>(2147483647i, -2147483647i, 1i, -9456i), select(vec4<bool>(true, true, false, global2[_wgslsmith_index_u32(var_3.a.x, 15u)]), vec4<bool>(false, false, global2[_wgslsmith_index_u32(10801u, 15u)], true), global0[_wgslsmith_index_u32(var_3.a.x, 20u)])), min(-vec4<i32>(var_4.c, var_4.c, -6562i, 2087i), vec4<i32>(var_3.d, -185i, 1i, -1i)), max(~vec4<i32>(0i, u_input.d, 2147483647i, var_6.c), -vec4<i32>(0i, -1i, 25742i, 32664i)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4.b, var_2, var_6.b)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_4.b, 766f, var_4.b)))), !(!global2[_wgslsmith_index_u32(var_6.a.x, 15u)])))));
}

