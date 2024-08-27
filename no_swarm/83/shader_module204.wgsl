struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: vec2<u32>,
    d: vec4<f32>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 13>;

var<private> global1: array<f32, 3> = array<f32, 3>(-2340f, -861f, 1025f);

var<private> global2: array<f32, 28> = array<f32, 28>(-390f, 1599f, -1000f, 2590f, 178f, 1000f, 1550f, 560f, 226f, 357f, 153f, -997f, 1476f, 747f, -1752f, -373f, -174f, -1000f, 421f, -1113f, 435f, 1383f, -122f, 504f, 1114f, -238f, 1282f, -691f);

var<private> global3: vec3<i32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<bool>, arg_1: i32, arg_2: vec3<bool>, arg_3: vec4<u32>) -> u32 {
    global2 = array<f32, 28>();
    global0 = array<vec4<f32>, 13>();
    global0 = array<vec4<f32>, 13>();
    let var_0 = ~u_input.b;
    var var_1 = _wgslsmith_mod_i32(global3.x, _wgslsmith_clamp_i32(u_input.c, -2147483647i, -_wgslsmith_div_i32(_wgslsmith_add_i32(1i, global3.x), _wgslsmith_div_i32(arg_1, global3.x))));
    return 1u;
}

fn func_2(arg_0: bool) -> u32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(firstTrailingBit(u_input.b), 13u)] - vec4<f32>(global1[_wgslsmith_index_u32(u_input.b, 3u)], 1049f, -627f, 1842f)) * _wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(25451u, 13u)] + global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.b, u_input.b), 13u)])), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(6750u, 3u)], global1[_wgslsmith_index_u32(0u, 3u)], -137f, _wgslsmith_f_op_f32(ceil(-398f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-360f + global2[_wgslsmith_index_u32(u_input.b, 28u)]) * _wgslsmith_f_op_f32(516f - global1[_wgslsmith_index_u32(u_input.b, 3u)])) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(170f, 576f, true))))), _wgslsmith_sub_i32(~abs(2147483647i), 0i) ^ u_input.d.x, firstLeadingBit(~(~(~vec2<u32>(u_input.b, u_input.b)))), vec4<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(func_3(!vec4<bool>(arg_0, arg_0, true, true), global3.x, vec3<bool>(arg_0, true, arg_0), vec4<u32>(2860u, 1u, u_input.b, u_input.b)), 3u)] + 2733f), -660f, global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<u32>(4294967295u, u_input.b, 14025u, 79649u)), vec4<u32>(1u, 65418u, u_input.b, 1u)), 3u)], -1345f), vec4<f32>(global2[_wgslsmith_index_u32(~(~1u), 28u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(0u, 3u)] - -187f), -278f, true))), _wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(1u, 3u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(3369f, global1[_wgslsmith_index_u32(u_input.b, 3u)])) * -1190f)));
    let var_1 = ~(~abs(vec2<u32>(~0u, max(var_0.c.x, 83592u))));
    let var_2 = var_0.c.x <= var_0.c.x;
    let var_3 = var_0;
    return var_0.c.x;
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: Struct_1) -> bool {
    var var_0 = ~min(~vec4<u32>(0u, u_input.b, 0u, 4294967295u), vec4<u32>(4294967295u, ~(~arg_2.c.x), max(firstLeadingBit(4681u), arg_2.c.x), 13768u));
    let var_1 = arg_2;
    var var_2 = ~_wgslsmith_add_vec4_u32(vec4<u32>(func_2(true), _wgslsmith_mod_u32(_wgslsmith_mod_u32(var_0.x, var_0.x), var_0.x), 31496u, _wgslsmith_sub_u32(_wgslsmith_add_u32(112642u, arg_2.c.x), var_1.c.x)), _wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(27031u, arg_2.c.x, var_0.x, 4294967295u), vec4<u32>(14298u, 1u, 0u, 0u), reverseBits(vec4<u32>(arg_2.c.x, 4294967295u, 0u, arg_2.c.x))), max(~vec4<u32>(arg_2.c.x, 0u, 25354u, var_1.c.x), ~vec4<u32>(u_input.b, 1u, 0u, 0u))));
    var var_3 = select(select(select(!(!vec2<bool>(arg_1, false)), vec2<bool>(!arg_1, any(vec3<bool>(false, arg_1, arg_1))), all(!vec3<bool>(false, false, arg_1))), vec2<bool>(arg_1, 31876u <= _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.c.x, 4294967295u), arg_2.c)), select(!(!vec2<bool>(arg_1, false)), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(arg_1, true), true), true), vec2<bool>(true, arg_1))), select(!select(vec2<bool>(false, arg_1), vec2<bool>(false, arg_1), vec2<bool>(true, false)), !(!select(vec2<bool>(false, arg_1), vec2<bool>(true, false), true)), vec2<bool>(true, false)), vec2<bool>(any(select(select(vec4<bool>(arg_1, false, true, arg_1), vec4<bool>(arg_1, arg_1, arg_1, true), vec4<bool>(arg_1, arg_1, true, arg_1)), vec4<bool>(arg_1, true, false, false), true)), false));
    let var_4 = _wgslsmith_clamp_i32(arg_0, var_1.b, var_1.b);
    return true;
}

fn func_4(arg_0: vec4<bool>, arg_1: vec4<f32>, arg_2: u32) -> Struct_1 {
    var var_0 = vec4<i32>(~(~(global3.x << ((arg_2 | 73617u) % 32u))), firstLeadingBit(-2147483647i), u_input.a.x, u_input.c);
    global3 = min(~vec3<i32>(~_wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(-1i, u_input.d.x, 2147483647i, u_input.d.x)), var_0.x, select(_wgslsmith_add_i32(28480i, global3.x), var_0.x, true)), ~_wgslsmith_sub_vec3_i32(var_0.zxz, vec3<i32>(global3.x, firstTrailingBit(48765i), u_input.a.x)));
    global0 = array<vec4<f32>, 13>();
    global3 = ~select(~(u_input.d.wzz ^ vec3<i32>(u_input.d.x, var_0.x, var_0.x)), ~(-var_0.yyw), any(arg_0));
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_1) + arg_1), global3.x, _wgslsmith_mod_vec2_u32(~vec2<u32>(1u, func_3(vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x), -19995i, vec3<bool>(arg_0.x, true, true), vec4<u32>(31709u, u_input.b, 102212u, 141362u))), ~select(min(vec2<u32>(4294967295u, u_input.b), vec2<u32>(4294967295u, 55184u)), vec2<u32>(u_input.b, arg_2), select(false, arg_0.x, true))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-939f, _wgslsmith_f_op_f32(select(arg_1.x, -722f, arg_0.x)), _wgslsmith_f_op_f32(arg_1.x - -1000f), global2[_wgslsmith_index_u32(u_input.b, 28u)]) - global0[_wgslsmith_index_u32(~(~arg_2), 13u)]) * global0[_wgslsmith_index_u32(arg_2, 13u)]), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(arg_1, global0[_wgslsmith_index_u32(91632u >> (1u % 32u), 13u)]) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-312f, global2[_wgslsmith_index_u32(162u, 28u)], global2[_wgslsmith_index_u32(5126u, 28u)], -1000f), _wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(4294967295u, 13u)]), arg_0.x))))));
    return Struct_1(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_1 * arg_1) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(4294967295u, 28u)], global2[_wgslsmith_index_u32(u_input.b, 28u)], -276f, global1[_wgslsmith_index_u32(0u, 3u)]) + arg_1)))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-802f, var_1.a.x, -1494f, _wgslsmith_div_f32(-167f, 928f)), _wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(u_input.b, 13u)] * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1723f, var_1.e.x, var_1.a.x, 1625f))))))), reverseBits(global3.x), vec2<u32>(~_wgslsmith_add_u32(firstLeadingBit(var_1.c.x), arg_2), func_3(vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x), -(i32(-1i) * -29471i), select(!arg_0.zwy, vec3<bool>(arg_0.x, arg_0.x, arg_0.x), arg_0.x), ~(vec4<u32>(4294967295u, 44950u, 0u, 1u) & vec4<u32>(0u, arg_2, 41466u, 56330u)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1166f, -869f, global2[_wgslsmith_index_u32(var_1.c.x, 28u)], var_1.d.x) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(24083u, 28u)], 1454f, -1439f, -894f))))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(447f, global1[_wgslsmith_index_u32(countOneBits(0u), 3u)], global2[_wgslsmith_index_u32(u_input.b, 28u)], _wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(arg_2, 3u)]))), global0[_wgslsmith_index_u32(var_1.c.x, 13u)], !(!arg_0)))), _wgslsmith_f_op_vec4_f32(exp2(global0[_wgslsmith_index_u32(~countOneBits(1u), 13u)])));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(!vec4<bool>(!(global1[_wgslsmith_index_u32(1u, 3u)] >= global2[_wgslsmith_index_u32(1u, 28u)]), true, !func_1(global3.x, false, Struct_1(global0[_wgslsmith_index_u32(u_input.b, 13u)], -8536i, vec2<u32>(25276u, 4294967295u), global0[_wgslsmith_index_u32(u_input.b, 13u)], vec4<f32>(global2[_wgslsmith_index_u32(4294967295u, 28u)], global1[_wgslsmith_index_u32(u_input.b, 3u)], global2[_wgslsmith_index_u32(u_input.b, 28u)], 476f))), true), _wgslsmith_f_op_vec4_f32(sign(global0[_wgslsmith_index_u32(~firstLeadingBit(1u), 13u)])), u_input.b);
    let var_1 = ~6624i;
    global3 = u_input.a.wwx;
    var var_2 = ~var_0.c.x;
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(264f, _wgslsmith_f_op_f32(round(global2[_wgslsmith_index_u32(var_0.c.x, 28u)])), -458f, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(var_0.c.x, 28u)] * -1976f)))), u_input.a.x, vec2<u32>(50741u, ~var_0.c.x), global0[_wgslsmith_index_u32(~select(61918u, 4294967295u, all(vec3<bool>(true, true, true))), 13u)], _wgslsmith_f_op_vec4_f32(var_0.e - global0[_wgslsmith_index_u32(var_0.c.x, 13u)]));
    let var_4 = ~var_3.c;
    var var_5 = var_3;
    let var_6 = vec2<i32>(_wgslsmith_mod_i32(2147483647i, ~_wgslsmith_dot_vec3_i32(abs(vec3<i32>(24408i, var_5.b, u_input.a.x)), u_input.a.xzz ^ vec3<i32>(-1i, var_3.b, -1i))), _wgslsmith_mod_i32(-_wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(var_3.b, var_5.b, var_3.b)), u_input.a.yxy << (vec3<u32>(0u, 0u, 1u) % vec3<u32>(32u))), abs(-(~global3.x))));
    let x = u_input.a;
    s_output = StorageBuffer(-(vec4<i32>(-1i) * -u_input.a) & -(~(u_input.d & u_input.a)), -36929i, select(_wgslsmith_sub_vec3_u32(firstLeadingBit(~vec3<u32>(var_3.c.x, 1u, 26130u)), _wgslsmith_mod_vec3_u32(vec3<u32>(56381u, 7991u, 82629u), ~vec3<u32>(var_4.x, var_4.x, var_3.c.x))), reverseBits(~vec3<u32>(4294967295u, var_3.c.x, 4294967295u)) | _wgslsmith_add_vec3_u32(~vec3<u32>(15570u, 36656u, 6120u), vec3<u32>(var_5.c.x, u_input.b, u_input.b) & vec3<u32>(var_4.x, 1u, 4294967295u)), select(vec3<bool>(true, true, var_6.x < var_5.b), vec3<bool>(true, true, true), true)));
}

