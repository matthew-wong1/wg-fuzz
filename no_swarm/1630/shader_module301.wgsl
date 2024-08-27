struct Struct_1 {
    a: vec4<f32>,
    b: vec4<f32>,
    c: vec2<f32>,
    d: i32,
    e: u32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: Struct_1,
    e: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 32>;

var<private> global1: array<u32, 27>;

var<private> global2: f32;

var<private> global3: array<i32, 1> = array<i32, 1>(1i);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec2<f32>) -> bool {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(915f, global0[_wgslsmith_index_u32(63128u, 32u)], -391f, global0[_wgslsmith_index_u32(16850u, 32u)]) - vec4<f32>(arg_1.x, global0[_wgslsmith_index_u32(36506u, 32u)], arg_1.x, arg_1.x)))) + vec4<f32>(325f, -397f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -417f), _wgslsmith_f_op_f32(ceil(-448f)), true)), _wgslsmith_f_op_f32(-arg_1.x))), vec4<f32>(arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-595f, 1055f)) - -459f), _wgslsmith_f_op_f32(f32(-1f) * -697f), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(12354u, 32u)])), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1) + arg_1), _wgslsmith_dot_vec3_i32(~firstTrailingBit(-vec3<i32>(-2147483647i, 0i, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 27u)], 1u)])), abs(vec3<i32>(1i, u_input.c, -7677i)) | -(vec3<i32>(global3[_wgslsmith_index_u32(0u, 1u)], -8747i, u_input.e) >> (u_input.a % vec3<u32>(32u)))), _wgslsmith_add_u32(firstTrailingBit(36197u), global1[_wgslsmith_index_u32(select(4294967295u, countOneBits(u_input.d) | min(1u, 1u), arg_0.x), 27u)]));
    global3 = array<i32, 1>();
    var var_1 = arg_0.x;
    return any(!vec3<bool>(all(select(vec3<bool>(arg_0.x, arg_0.x, arg_0.x), vec3<bool>(arg_0.x, false, true), vec3<bool>(arg_0.x, arg_0.x, arg_0.x))), arg_0.x, _wgslsmith_mult_i32(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b.x, 27u)], 1u)], -2643i) == ~u_input.e));
}

fn func_2(arg_0: Struct_1) -> vec3<i32> {
    global0 = array<f32, 32>();
    let var_0 = func_3(vec3<bool>(any(vec3<bool>(true, true, true)), !any(vec2<bool>(false, false)) & true, _wgslsmith_add_i32(u_input.e, u_input.e) == -1i), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.c), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-113f, _wgslsmith_div_f32(global0[_wgslsmith_index_u32(4294967295u, 32u)], 1000f)))));
    let var_1 = Struct_2(u_input.a, max(~vec4<i32>(-u_input.c, global3[_wgslsmith_index_u32(max(4294967295u, u_input.d), 1u)], max(u_input.e, -2147483647i), arg_0.d & -5267i), ~(~vec4<i32>(global3[_wgslsmith_index_u32(4294967295u, 1u)], arg_0.d, 1i, -13797i))), vec2<u32>(16243u, _wgslsmith_clamp_u32(_wgslsmith_mult_u32(_wgslsmith_mod_u32(arg_0.e, global1[_wgslsmith_index_u32(4294967295u, 27u)]), abs(u_input.d)), ~countOneBits(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(56750u, 27u)], 27u)]), arg_0.e)), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_0.b * arg_0.a))), arg_0.b, arg_0.b.wz, -arg_0.d, arg_0.e), 6470u);
    global2 = _wgslsmith_f_op_f32(f32(-1f) * -973f);
    global2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d.a.x)) - _wgslsmith_f_op_f32(1000f - -1239f))));
    return _wgslsmith_add_vec3_i32(vec3<i32>(abs(u_input.e << (58041u % 32u)) ^ _wgslsmith_dot_vec4_i32(vec4<i32>(3752i, 2147483647i, var_1.d.d, -21559i), vec4<i32>(37321i, 1i, 6222i, u_input.e)), global3[_wgslsmith_index_u32(var_1.c.x, 1u)], reverseBits(i32(-1i) * -2147483647i)), vec3<i32>(-2147483647i ^ abs(_wgslsmith_add_i32(arg_0.d, u_input.e)), -firstTrailingBit(max(-42273i, global3[_wgslsmith_index_u32(u_input.d, 1u)])), _wgslsmith_dot_vec4_i32(~var_1.b, var_1.b) ^ var_1.d.d));
}

fn func_1(arg_0: vec2<i32>) -> Struct_1 {
    let var_0 = firstLeadingBit(vec3<i32>(min(u_input.e, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, arg_0.x, arg_0.x), func_2(Struct_1(vec4<f32>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 27u)], 27u)], 32u)], 630f, global0[_wgslsmith_index_u32(u_input.d, 32u)], 658f), vec4<f32>(-1000f, global0[_wgslsmith_index_u32(8486u, 32u)], -1407f, -326f), vec2<f32>(299f, 1480f), arg_0.x, 38269u)))), -10664i, ~20448i));
    var var_1 = select(!select(select(vec3<bool>(false, true, false), select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), false), select(false, true, false)), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), false), vec3<bool>(select(true, !(u_input.d == u_input.b.x), true), !any(vec3<bool>(true, true, true)), true), any(vec4<bool>(true, true, true, func_3(vec3<bool>(false, true, true), vec2<f32>(global0[_wgslsmith_index_u32(u_input.d, 32u)], -1026f)))) != all(vec2<bool>(true, true)));
    var var_2 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(reverseBits(2884u), 32u)] + _wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(34521u, 32u)], global0[_wgslsmith_index_u32(1213u, 32u)])))), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(firstTrailingBit(22361u), 32u)] * _wgslsmith_f_op_f32(max(-113f, 290f))), _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(firstTrailingBit(global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(14814u, 27u)], 27u)]), 32u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-525f * _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 32u)] * global0[_wgslsmith_index_u32(0u, 32u)])) * _wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(u_input.a.x | u_input.b.x, 32u)])))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b.x, 27u)], 27u)], 32u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b.x, 27u)], 32u)], 130f, global0[_wgslsmith_index_u32(1u, 32u)]), vec4<f32>(-105f, global0[_wgslsmith_index_u32(u_input.b.x, 32u)], 2380f, global0[_wgslsmith_index_u32(23396u, 32u)]))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(35467u, 27u)], 32u)], 1893f, -535f, -265f))), !vec4<bool>(false, var_1.x, var_1.x, var_1.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-348f, global0[_wgslsmith_index_u32(u_input.b.x, 32u)], 1229f, -527f) - vec4<f32>(1000f, global0[_wgslsmith_index_u32(1u, 32u)], global0[_wgslsmith_index_u32(u_input.d, 32u)], -548f)))))), vec2<f32>(global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(global1[_wgslsmith_index_u32(~55166u, 27u)], 68768u), 32u)], 1000f), _wgslsmith_div_i32(-global3[_wgslsmith_index_u32(67351u, 1u)], func_2(Struct_1(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1716f, -506f, global0[_wgslsmith_index_u32(u_input.a.x, 32u)], global0[_wgslsmith_index_u32(50437u, 32u)]))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0[_wgslsmith_index_u32(18045u, 32u)], 2060f, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(62022u, 27u)], 32u)], global0[_wgslsmith_index_u32(1u, 32u)]), vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 32u)], global0[_wgslsmith_index_u32(10027u, 32u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(15982u, 27u)], 27u)], 32u)], global0[_wgslsmith_index_u32(32422u, 32u)]), vec4<bool>(false, var_1.x, true, var_1.x))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(96341u, 27u)], 27u)], 32u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.d, 27u)], 32u)]) + vec2<f32>(334f, 1228f)), 1i, u_input.d)).x), ~(~global1[_wgslsmith_index_u32(59285u, 27u)]));
    global0 = array<f32, 32>();
    global3 = array<i32, 1>();
    return Struct_1(var_2.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(33512u, 32u)]), _wgslsmith_f_op_f32(-var_2.c.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_2.b.x))), -1090f) + _wgslsmith_f_op_vec4_f32(var_2.a * vec4<f32>(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(0u, 32u)], 298f), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 27u)], 32u)]), var_2.a.x, _wgslsmith_f_op_f32(trunc(var_2.c.x))))), _wgslsmith_f_op_vec2_f32(-var_2.c), var_0.x >> (46561u % 32u), u_input.d);
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: vec4<bool>) -> bool {
    var var_0 = Struct_2(max(~vec3<u32>(8891u, arg_0, global1[_wgslsmith_index_u32(4294967295u, 27u)]) << (~vec3<u32>(4294967295u, arg_1.e, u_input.b.x) % vec3<u32>(32u)), reverseBits(u_input.a)) ^ vec3<u32>(~(~0u), 4294967295u, _wgslsmith_add_u32(~62823u, _wgslsmith_add_u32(arg_0, global1[_wgslsmith_index_u32(4294967295u, 27u)]))), ~vec4<i32>(arg_1.d, _wgslsmith_mod_i32(1i, ~global3[_wgslsmith_index_u32(12609u, 1u)]), ~(-global3[_wgslsmith_index_u32(arg_0, 1u)]), 0i), vec2<u32>(reverseBits(_wgslsmith_clamp_u32(reverseBits(0u), 71926u, ~81004u)), _wgslsmith_div_u32(29224u, 37520u)), func_1(_wgslsmith_mod_vec2_i32(abs(~vec2<i32>(24666i, u_input.e)), _wgslsmith_add_vec2_i32(~vec2<i32>(arg_1.d, arg_1.d), reverseBits(vec2<i32>(global3[_wgslsmith_index_u32(4251u, 1u)], u_input.c))))), func_1(vec2<i32>(abs(firstLeadingBit(26873i)), -(~(-17283i)))).e);
    return arg_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(u_input.d, 32u)];
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~firstTrailingBit(_wgslsmith_mod_u32(u_input.a.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.d, 27u)], 27u)])), 27u)], 32u)])));
    global2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(3184f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-939f * _wgslsmith_f_op_f32(f32(-1f) * -411f)), _wgslsmith_div_f32(global0[_wgslsmith_index_u32(1u, 32u)], -752f))) * global0[_wgslsmith_index_u32(~66182u, 32u)]);
    let var_1 = min(min(firstLeadingBit(u_input.b.wz), firstLeadingBit(vec2<u32>(abs(u_input.b.x), u_input.d >> (12087u % 32u)))), ~select(u_input.a.yy, select(vec2<u32>(60734u, 18321u) >> (vec2<u32>(global1[_wgslsmith_index_u32(0u, 27u)], 35355u) % vec2<u32>(32u)), firstTrailingBit(vec2<u32>(global1[_wgslsmith_index_u32(u_input.d, 27u)], global1[_wgslsmith_index_u32(10808u, 27u)])), true), func_4(~4294967295u, func_1(vec2<i32>(-7725i, global3[_wgslsmith_index_u32(u_input.b.x, 1u)])), vec4<bool>(true, true, true, true))));
    var var_2 = func_1(~(-(_wgslsmith_mult_vec2_i32(vec2<i32>(1i, u_input.e), vec2<i32>(global3[_wgslsmith_index_u32(u_input.d, 1u)], -1i)) & -vec2<i32>(30071i, -12954i))));
    var var_3 = u_input.e;
    global2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(700f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(17237u, 32u)] * global0[_wgslsmith_index_u32(1u, 32u)]) * _wgslsmith_f_op_f32(-175f * -459f))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-617f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(-(~(1i >> (var_1.x % 32u))), _wgslsmith_mult_i32(max(~4767i, -1i), -_wgslsmith_mult_i32(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_1.x, 27u)], 27u)], 1u)], var_2.d))), 19433i);
}

